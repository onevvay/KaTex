/**
 * 替换公式中的字符为KaTex能够识别的形式
 * @param {Object} factor
 * @author wangwei
 */
function parseKatexFactor(factor) {
    if (factor.trim().length == 0) {
        return false;
    }

    // 若公式中含有if else
    if (factor.indexOf('if') != -1) {
        // 提取出"if(){}else{}"中的条件和表达式
        var caseMap = getFactorCases(factor);

        var case1, case2, exp1, exp2;
        /* 条件1 */
        case1 = caseMap['case1'];
        /* 条件2 */
        case2 = caseMap['case2'];
        /* 满足条件1的表达式 */
        exp1 = caseMap['exp1'];
        /* 满足条件2的表达式 */
        exp2 = caseMap['exp2'];

        var cases =
            exp1 +
            ',  & \\text{if ' +
            case1 +
            '} \\\\ ' +
            exp2 +
            ', & \\text{if ' +
            case2 +
            '}';

        // 可以在前面加上"f(x) ="
        factor = ' \\begin{cases} ' + cases + ' \\end{cases}';
    } else {
        factor = extractMathPow(factor);
    }

    // 替换[π * / ( )]以及常见的三角函数字符
    factor = factor
        .replace(new RegExp('π', 'gm'), ' \\pi ')
        .replace(new RegExp('\\*', 'gm'), ' \\times ')
        .replace(new RegExp('/', 'gm'), ' \\div ')
        .replace(new RegExp('asin', 'gm'), ' asin ')
        .replace(new RegExp('sin', 'gm'), ' sin ')
        .replace(new RegExp('acos', 'gm'), ' acos ')
        .replace(new RegExp('cos', 'gm'), ' cos ')
        .replace(new RegExp('arctan', 'gm'), ' arctan ')
        .replace(new RegExp('tan', 'gm'), ' \\tan ');
        
    return factor;
}

/**
 * 提取if else中的条件和表达式
 * @param {Object} factor
 */
function getFactorCases(factor) {
    // 取出if()小括号里的表达式
    var case1 = getParenthesesStr(factor, 0);

    // 取出if(){}花括号里的表达式
    var exp1 = getParenthesesStr(factor, 2);

    // 取出else{}花括号里的表达式
    // 定位到else的index
    factor = factor.substring(factor.indexOf(exp1) + 2);
    var exp2 = getParenthesesStr(factor, 2);

    // 获取else对应的条件
    var case2;
    if (case1.indexOf('>') != -1) {
        case2 = case1.replace('>', '$\\le$');
        case1 = case1.replace('>', '$\\gt$');
    } else if (case1.indexOf('<') != -1) {
        case2 = case1.replace('<', '$\\ge$');
        case1 = case1.replace('<', '$\\lt$');
    } else if (case1.indexOf('>=') != -1) {
        case2 = case1.replace('>=', '$\\lt$');
        case1 = case1.replace('>=', '$\\ge$');
    } else if (case1.indexOf('<=') != -1) {
        case2 = case1.replace('<=', '$\\gt$');
        case1 = case1.replace('<=', '$\\le$');
    } else if (case1.indexOf('==') != -1) {
        case2 = case1.replace('==', '$\\neq$');
        case1 = case1.replace('==', '$=$');
    } else if (case1.indexOf('!=') != -1) {
        case2 = case1.replace('!=', '$=$');
        case1 = case1.replace('!=', '$\\neq$');
    }

    var map = {};
    map['case1'] = case1;
    map['case2'] = case2;
    //try {
    exp1 = extractMathPow(exp1);
    //} catch(e) {
    //console.log(e);
    //}
    map['exp1'] = exp1;
    try {
        exp2 = extractMathPow(exp2);
    } catch (e) {
        console.log(e);
    }
    map['exp2'] = exp2;

    return map;
}

/**
 * 取出括号内的内容
 * @param text
 * @returns {string}
 */
function getParenthesesStr(text, type) {
    var result = '';
    if ($.isEmptyObject(text)) return result;

    var regex;
    if (type == 0) {
        // () 小括号
        regex = /\((.+?)\)/g;
    } else if (type == 1) {
        // [] 中括号
        regex = /\[(.+?)\]/g;
    } else if (type == 2) {
        // {} 花括号，大括号
        regex = /\{(.+?)\}/g;
    }

    var options = text.match(regex);
    if (!$.isEmptyObject(options)) {
        var option = options[0];
        if (!$.isEmptyObject(option)) {
            result = option.substring(1, option.length - 1);
        }
    }
    return result;
}

/**
 * 将公式中的pow(base,exponent)替换为base^exponent
 * @param {Object} text
 */
function extractMathPow(text) {
    // 去除字符串内所带有的空格
    text = text.replace(/\s*/g, '');

    if (text.indexOf('pow') == -1) {
        return text;
    } else {
        /**
         * {index, flag}
         * 若flag=true, 说明左括号是紧跟在pow后面的;
         * 若flag=false, 说明左括号没有紧跟在pow后面;
         * 若flag='', 说明存的是右括号的index
         */
        // 用于存储所有左括号的index
        var leftBrace = {};
        // 用于存储所有右括号的index
        var rightBrace = {};

        for (var i = 0, item, beforeItem; i < text.length; i++) {
            item = text.charAt(i);
            beforeItem = text.charAt(i - 1);
            if ('(' === item) {
                if ('w' == beforeItem) {
                    leftBrace[i] = true;
                } else {
                    leftBrace[i] = false;
                }
            }
            if (')' === item) {
                rightBrace[i] = '';
            }
        }

        // 忽略的左括号索引
        var ignore = [];
        // 左括号索引的集合
        var left = [];
        // 右括号索引的集合
        var right = [];

        // 遍历map
        $.each(leftBrace, function(key, value) {
            if (!value) {
                ignore.push(key);
            }
            left.push(key);
        });
        $.each(rightBrace, function(key, value) {
            right.push(key);
        });

        // 对右括号数组进行重新排序
        right = sortIndex(text, left, right);

        var result = '';
        // 字符串替换前后的length差值
        var lengthDiffer = 0;
        // 上一次遍历时用到的右括号索引
        var lastRightIndex;

        for (var i = left.length - 1; i >= 0; i--) {
            var leftIndex = left[i];
            if (!leftBrace[leftIndex]) {
                continue;
            }

            var rightIndex = right[i];
            var tempResult;
            var tempSplitedResult;
            if (result) {
                tempResult = result;
                // 处理到第一个左括号的时候, 跳出循环
                if (rightIndex > lastRightIndex) {
                    break;
                }
                tempSplitedResult = result.substring(
                    Number(leftIndex) + 1,
                    rightIndex
                );
            } else {
                tempResult = text;
                tempSplitedResult = text.substring(
                    Number(leftIndex) + 1,
                    rightIndex
                );
            }
            // 替换pow(arg1,arg2)为arg1^arg2
            result = dealBaseAndExponent(tempResult, tempSplitedResult);
            // 记录变更的字符串长度
            //lengthDiffer = text.length - result.length;
            // 记录已经使用过的右括号索引
            lastRightIndex = rightIndex;
        }

        // 处理完后若已经提取出base^exponent, 直接返回
        if (result.indexOf('pow') == -1) {
            return result;
        }
        return extractMathPow(result);
    }
}

/**
 * 返回提取的base^exponent
 * @param {Object} text
 * @param {Object} result
 */
function dealBaseAndExponent(text, result) {
    var strArr = result.split(',');
    // 底数
    var base = strArr[0];
    // 指数
    var exponent = strArr[1];
    // 如果上标不止一个字符, 就需要用大括号括起来, 表示是一个整体
    if (exponent.length > 1) {
        exponent = '{' + exponent + '}';
    }
    // 判断底数是否含有运算符, 若有, 则需要在底数前后加括号
    if (
        base.indexOf('+') != -1 ||
        base.indexOf('-') != -1 ||
        base.indexOf('*') != -1 ||
        base.indexOf('/') != -1 ||
        base.indexOf('\\times') != -1 ||
        base.indexOf('\\div') != -1
    ) {
        base = '(' + base + ')';
    }
    return text.replace('pow(' + result + ')', base + '^' + exponent);
}

/**
 * 重新排列索引号
 * @param {Object} text 含有pow的表达式
 * @param {Object} left 存储左括号的数组
 * @param {Object} right 存储右括号的数组
 */
function sortIndex(text, left, right) {
    /**
     * 1.right必须大于left;
     * 2.从left的最后一个元素开始遍历, 取right中大于left的最小值, 每次取完之后都要记录满足条件的left和right
     *
     * 例如:
     *  p	o	w	(	2	*	(	R	＋	1	 )	 —	 p	 o	 w	 (	 (	 8	＋	 9	 )	 ,	 2	 )	 ,	 0	 .	 5	 )
     *  0	1	2	3	4	5	6	7	8	9	10	11	12	13	14	15	16	17	18	19	20	21	22	23	24	25	26	27	28
     * input:
     * 	  text = "pow(2*(R+1)-pow((8+9),2),0.5)"
     *	  left = [6,15,16]
     *	  right = [10,20,23]
     * output:
     * 	  [10,23,20]
     */

    var newRight = new Array();
    var usedIndex = {};
    for (var i = left.length - 1; i >= 0; i--) {
        for (var j = 0; j < right.length; j++) {
            var leftIndex = Number(left[i]);
            var rightIndex = Number(right[j]);
            if (
                !usedIndex[leftIndex] &&
                !usedIndex[rightIndex] &&
                rightIndex > leftIndex
            ) {
                newRight.push(rightIndex);
                usedIndex[rightIndex] = true;
                usedIndex[leftIndex] = true;
            }
        }
    }
    // 颠倒数组中元素的顺序
    return newRight.reverse();
}

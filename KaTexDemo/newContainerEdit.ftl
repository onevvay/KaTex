<!-- MESBasic_1/container/newContainerEdit -->
<#assign isWorkflow = false> 
<#assign isAttachment = true> 
	<#assign  fileuploadType = "MESBasic_container_container">
	<#assign fileuploadLinkId = id!>
<#assign viewType = "create">
<#assign newObj = editNew!true >
<#if newObj>
<#assign viewType = "create">
<#else>
<#assign viewType = "edit">
</#if>
<#if refId?? && (refId>0)>
	<#assign newObj = false >
</#if>
<#assign userJson= Session.user.toJSON()>
<#assign staffJson= Session.staff.toJSON()>
<#assign deptJson= Session.staff.mainPosition.department.toJSON()>
<#assign postJson= Session.staff.mainPosition.toJSON()>
<#assign compJson= Session.staff.mainPosition.company.toJSON()>
<#-- 实体对象 -->
<#assign tableObj = container>
<#-- 命名空间 -->
<#assign editPageNs = "MESBasic.container.container.newContainerEdit">
<#-- 模型名称-->
<#assign modelName = "container">
<#-- 视图编码-->
<#assign viewCode = "MESBasic_1_container_newContainerEdit">
<#-- 实体编码-->
<#assign entity_code = "MESBasic_1_container">
<#-- 视图名称-->
<#assign viewName = "newContainerEdit">
<#-- datagrid编码-->
<#assign datagridCode = "MESBasic_container_container_newContainerEdit_datagrids">
<#-- 首字母大写的模型名称-->
<#assign upcaseModelName = "Container">
<#-- 页面打印按钮 -->
<#assign isPrint = false>
<#-- 控件打印按钮 -->
<#assign controlPrint = false>
<#-- 是否只读 -->
<#assign allReadOnly = false>
<#-- 是否是参照视图 -->
<#assign isReference =false>
<#-- 是否可弃审 -->
<#assign retrialFlag = false>
<#-- formid -->
<#assign editFormId = "MESBasic_container_container_newContainerEdit_form">
<#-- 待办状态 -->
<#assign pendingstatus =( container.pending.taskDescription)!>
<#-- 打印控件名称 -->
<#assign controlName = "ec.print.controlPrint">
<#-- 批量？？ -->
<#assign isBatch = false>
<#assign payCloseAttention = false>
<#-- 自定义按钮 -->
<#assign operateButtons =[] >
<!DOCTYPE html>
<html  xmlns="http://www.w3.org/1999/xhtml">
<head>
	
		
	
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <#assign configTitle = getText('MESBasic.viewtitle.randon1551701548066')>
        <#if viewTitle?has_content>
			<#assign configTitle = viewTitle>
        </#if>
        <title>${configTitle}</title>
        <@editcss /><@editjstop /><@editjs />
		<style>
		
		#MESBasic_container_container_newContainerEdit_form{float:left;width:100%;}
		
		
		</style>
		<script type="text/javascript">
			CUI.ns('MESBasic.container.container.newContainerEdit');
			MESBasic.container.container.newContainerEdit.currentUser = ${userJson};
			MESBasic.container.container.newContainerEdit.currentStaff = ${staffJson};
			MESBasic.container.container.newContainerEdit.currentDepartment = ${deptJson};
			MESBasic.container.container.newContainerEdit.currentPosition = ${postJson};
			MESBasic.container.container.newContainerEdit.currentCompany = ${compJson};
		</script>
		<!-- CUSTOM CODE START(view-EDIT-MESBasic_1_container_newContainerEdit,head,MESBasic_1_container_Container,MESBasic_1) -->
<!-- 自定义代码 -->
		<style>
		
            .helpInfo-example {
                background-color: #f2f2f2;
                margin-left: -12px;
                margin-right: -12px;
                padding: 5px 10px;
                margin-top: 5px;
                margin-bottom: 5px;
            }
			
			.helpInfo-hint {
                margin-top: 5px;
                padding: 6px 5px 0 0;
                border-top: 1px dashed #e4e4e4;
                color: #b10000;
            }
			
			
		
		</style>

		<!-- KaTeX css -->
		<link rel="stylesheet" href="/bap/static/tankMgr/js/katex/katex.min.css">
		<!-- The loading of KaTeX is deferred to speed up page rendering -->
		<script src="/bap/static/tankMgr/js/katex/katex.min.js"></script>
		<!-- To automatically render math in text elements, include the auto-render extension: -->
		<script src="/bap/static/tankMgr/js/katex/contrib/auto-render.min.js"></script>
		<!-- extract factor -->
		<script type="text/javascript" src="/bap/static/tankMgr/js/factorParser1.js"></script>
<!-- CUSTOM CODE END -->
    </head>
	<body class="view-edit ">
		<@loadpanel newType=true/>
		<@s.form errorBarId="workbenchErrorBar" hiddenField="container.department.id,container.person.id,container.product.id," onsubmitMethod="MESBasic.container.container.newContainerEdit.beforeSubmitMethod()" id="MESBasic_container_container_newContainerEdit_form" namespace="/MESBasic/container/container/newContainerEdit" action="submit?__pc__=${(Parameters.__pc__)!}&_bapFieldPermissonModelCode_=MESBasic_1_container_Container&_bapFieldPermissonModelName_=Container" editPageNs="MESBasic.container.container.newContainerEdit" callback="MESBasic.container.container.newContainerEdit._callBackInfo" ecform="true">
			<input type="hidden" name="bap_validate_user_id" value="${(Session.user.id)!}" />
			<div style="float:none;width:auto;" class="edit-main grid-s5m0 col-main main-wrap" id="MESBasic_container_container_newContainerEdit_main_div">
			<div class="edit-head">
				<#include "../../../ec/tableInfo/operateheadbar_all.ftl" >
				<#include "../../../ec/tableInfo/creatorInfo.ftl" >
			</div>
    		<div class="edit-main" id="MESBasic_container_container_newContainerEdit">
    			<div class="edit-content">
    	<#include "../../../ec/tableInfo/formparam.ftl" >				
					<input type="hidden" name="container.department.id" value="${(container.department.id)!""}" originalvalue="${(container.department.id)!""}"/>
					<input type="hidden" name="container.person.id" value="${(container.person.id)!""}" originalvalue="${(container.person.id)!""}"/>
					<input type="hidden" name="container.product.id" value="${(container.product.id)!""}" originalvalue="${(container.product.id)!""}"/>
		 <ul class="edit-tabs">
			<li>${getText('ec.view.commoninfo')}</li>
			<li>${getText('MESBasic.tabname.radion1553145110631')}</li>
			<li>${getText('MESBasic.tabname.radion1555313863284')}</li>
			<li>${getText('MESBasic.tabname.radion1555313878213')}</li>
		</ul>
<script type="text/javascript">
var attcountid = "MESBasic_container_container_newContainerEdit_form"+"_attcount";
function fileCountSpan(fileuploadLinkId,fileuploadType){
	if(!fileuploadLinkId) {
		fileuploadLinkId = '${fileuploadLinkId!}'
	}
	if(!fileuploadType) {
		fileuploadType = '${fileuploadType!}'
	}
	CUI.ajax({
		type : "POST",
		url : '/foundation/workbench/upload-count.action?linkId=' + fileuploadLinkId + '&type=' + fileuploadType,
		success : function(msg){
			try{
				if(msg!=null) {
					var fileCount = parseInt(msg);
					$('.total').show();
					//去掉两边的括号字符
					CUI('#'+attcountid).html(fileCount);
				}
			} catch(e){}
		}
	});
};
$(function(){
	var fileuploadLinkId= '${fileuploadLinkId!}';
	if(fileuploadLinkId != '') {
		fileCountSpan(fileuploadLinkId, '${fileuploadType}');
	}
	<#if hasAttachment?? && hasAttachment && false>
	$('#attachmentLi').one('click', function(){
		$('#attachmentDiv').load('/foundation/workbench/fileupload-init.action?linkId=${fileuploadLinkId}&type=${fileuploadType}&entityCode=MESBasic_1_container', null, function(){
			alert('loaded!!!');
		});
	});
	</#if>
});
</script>				<div class="edit-panes edit-panes-w edit-container clearfix">
			<div class="clearfix pd_bottom">
				<div class="cui-elements pd-top">

<div class="edit-panes-s" style="width:98%;margin-left:10px;">
	<table class="edit-table" style="">
		<tr style='border:none;height:0px; '><td style='height:0px;border:none;width:13%'></td><td style='height:0px;border:none;width:20%'></td><td style='height:0px;border:none;width:13%'></td><td style='height:0px;border:none;width:20%'></td><td style='height:0px;border:none;width:13%'></td><td style='height:0px;border:none;width:20%'></td></tr>
		<tr >
				
							 					<td  nullable=false class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.radion141526835982911')}" >${getText('MESBasic.propertydisplayName.radion141526835982911')}</label>
				</td>
				
						<#assign container_code_defaultValue  = ''>
							 							<#assign container_code_defaultValue  = ''>
					<td  nullable=false class="edit-table-content"   style="text-align: left;;" >
					
							
							<div class="fix-input">
								<input property_type="TEXT" name="container.code" id="container_code"  style=";" originalvalue="<#if !newObj || (container.code)?has_content>${(container.code?html)!}<#else>${container_code_defaultValue!}</#if>" value="<#if !newObj || (container.code)?has_content>${(container.code?html)!}<#else>${container_code_defaultValue!}</#if>" type="text" class="cui-noborder-input " />
							</div>
							<script type="text/javascript">
							</script>
							
				</td>
				
							 					<td  nullable=false class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.radion141526839345211')}" >${getText('MESBasic.propertydisplayName.radion141526839345211')}</label>
				</td>
				
						<#assign container_name_defaultValue  = ''>
							 							<#assign container_name_defaultValue  = ''>
					<td  nullable=false class="edit-table-content"   style="text-align: left;;" >
					
							
							<div class="fix-input">
								<input property_type="TEXT" name="container.name" id="container_name"  style=";" originalvalue="<#if !newObj || (container.name)?has_content>${(container.name?html)!}<#else>${container_name_defaultValue!}</#if>" value="<#if !newObj || (container.name)?has_content>${(container.name?html)!}<#else>${container_name_defaultValue!}</#if>" type="text" class="cui-noborder-input " />
							</div>
							<script type="text/javascript">
							</script>
							
				</td>
				
							 					<td  nullable=false class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.radion141532202396811')}" >${getText('MESBasic.propertydisplayName.radion141532202396811')}</label>
				</td>
				
						<#assign container_containerStatus_defaultValue  = 'CONTAINER_STATUS/0'>
							 							<#assign container_containerStatus_defaultValue  = 'CONTAINER_STATUS/0'>
					<td  nullable=false class="edit-table-content"   style="text-align: left;;" >
					
							
								<#if newObj>
									
									<@systemcode property_type="SYSTEMCODE" showType="SELECTCOMP" onchange=""  viewType="${viewType!}" deValue="${container_containerStatus_defaultValue!}" formId="MESBasic_container_container_newContainerEdit_form" classStyle="cui-noborder-input" ecFlag=true multable=false  name="container.containerStatus.id" code="CONTAINER_STATUS" value="${(container.containerStatus.id)!}"  />
									
								<#else>
									
									<@systemcode property_type="SYSTEMCODE" showType="SELECTCOMP" onchange=""  viewType="${viewType!}"  formId="MESBasic_container_container_newContainerEdit_form" classStyle="cui-noborder-input" ecFlag=true multable=false  name="container.containerStatus.id" code="CONTAINER_STATUS" value="${(container.containerStatus.id)!}"  />
									
								</#if>
							
				</td>
				</tr><tr >
												<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.radion141577264483311')}" >${getText('MESBasic.propertydisplayName.radion141577264483311')}</label>
				</td>
				
						<#assign container_product_productCode_defaultValue  = ''>
														<#assign container_product_productCode_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   align="left" style="text-align: left;;" >
					
							
								
								
								
									<@mneclient iframe=mneIframe!false property_type="TEXT" reftitle="${getText('MESBasic.viewtitle.randon1450085069587')}" viewType="${viewType!}" deValue="${container_product_productCode_defaultValue!}" conditionfunc="MESBasic.container.container.newContainerEdit._querycustomFunc('container_product_productCode')"  value="${(container.product.productCode)!}" displayFieldName="productCode" name="container.product.productCode" id="container_product_productCode" type="other" url="/MESBasic/product/product/refProductLayout.action" clicked=true multiple=false mnewidth=260 formId="MESBasic_container_container_newContainerEdit_form" editCustomCallback=";" refViewCode="MESBasic_1_product_refProductLayout" onkeyupfuncname=";_callback_container_product_productCode(obj);" cssStyle="" isEdit=true     isCrossCompany=false  />
								
								
								
								<script type="text/javascript">
								<#if !(container.id)?? && (container.product.id)?has_content>
									(function($){
										$(function(){
											var obj = {'id' : '${container.product.id}'};
											if(obj.id !== '-1') {
												obj = foundation.common.getObject('MESBasic_container_container_newContainerEdit_form',obj, 'container.product', '/MESBasic/product/product/refProductLayout.action');
												CUI.commonFills('MESBasic_container_container_newContainerEdit_form', 'container.product',obj,true);
											}
										});
									})(jQuery);
								</#if>
								
								</script>
							
				</td>
				
												<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.radion141577274073711')}" >${getText('MESBasic.propertydisplayName.radion141577274073711')}</label>
				</td>
				
						<#assign container_product_productName_defaultValue  = ''>
														<#assign container_product_productName_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   align="left" style="text-align: left;;" >
					
							
							<div class="fix-input-readonly">
								<input property_type="TEXT" name="container.product.productName" id="container_product_productName"  style=";" originalvalue="<#if !newObj || (container.product.productName)?has_content>${(container.product.productName?html)!}<#else>${container_product_productName_defaultValue!}</#if>" value="<#if !newObj || (container.product.productName)?has_content>${(container.product.productName?html)!}<#else>${container_product_productName_defaultValue!}</#if>" type="text" class="cui-noborder-input " readonly="readonly" />
							</div>
							<script type="text/javascript">
							</script>
							
				</td>
				
							 					<td  nullable=false class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.radion141532069339911')}" >${getText('MESBasic.propertydisplayName.radion141532069339911')}</label>
				</td>
				
						<#assign container_containerType_defaultValue  = ''>
							 							<#assign container_containerType_defaultValue  = ''>
					<td  nullable=false class="edit-table-content"   style="text-align: left;;" >
					
							
								<#if newObj>
									
									<@systemcode property_type="SYSTEMCODE" showType="SELECTCOMP" onchange=""  viewType="${viewType!}" deValue="${container_containerType_defaultValue!}" formId="MESBasic_container_container_newContainerEdit_form" classStyle="cui-noborder-input" ecFlag=true multable=false  name="container.containerType.id" code="CONTAINER_TYPE" value="${(container.containerType.id)!}"  />
									
								<#else>
									
									<@systemcode property_type="SYSTEMCODE" showType="SELECTCOMP" onchange=""  viewType="${viewType!}"  formId="MESBasic_container_container_newContainerEdit_form" classStyle="cui-noborder-input" ecFlag=true multable=false  name="container.containerType.id" code="CONTAINER_TYPE" value="${(container.containerType.id)!}"  />
									
								</#if>
							
				</td>
				</tr><tr >
							 					<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.randon155170051264111')}" >${getText('MESBasic.propertydisplayName.randon155170051264111')}</label>
				</td>
				
						<#assign container_stdDensity_defaultValue  = ''>
							 							<#assign container_stdDensity_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   align="left" style="text-align: left;;" >
					
							
							<div class="fix-input">
									<input name="container.stdDensity" id="container_stdDensity"  style=";" originalvalue="<#if newObj&& !(container.stdDensity)?has_content>${container_stdDensity_defaultValue!}<#elseif (container.stdDensity)?has_content>#{(container.stdDensity)!; m3M3}</#if>" value="<#if newObj&& !(container.stdDensity)?has_content>${container_stdDensity_defaultValue!}<#elseif (container.stdDensity)?has_content>#{(container.stdDensity)!; m3M3}</#if>" type="text" class="cui-noborder-input numberField" />
							</div>
							<script type="text/javascript">
								$(function(){
									$('#container_stdDensity').unbind('blur').bind('blur',function(){
										var percision = 3;
										if(!isDecimal($(this).val())){
											//workbenchErrorBarWidget.showMessage("${getText('ec.common.validate.double.format.error','${getText("MESBasic.propertydisplayName.randon1551700512641")}')}");
											return;
										}
										if(parseInt(percision) > -1 && $(this).val()!=undefined && $(this).val()!='' && isDecimal($(this).val())){
											$(this).val(($(this).val() * 1).toFixed(percision));
										}
									});
								});
							</script>
							
				</td>
				
												<td  nullable=false class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.radion141577274079911')}" >${getText('MESBasic.propertydisplayName.radion141577274079911')}</label>
				</td>
				
						<#assign container_department_name_defaultValue  = 'currentDepart'>
												<td  nullable=false class="edit-table-content"   align="left" style="text-align: left;;" >
					
							
								
								
								
									<@mneclient iframe=mneIframe!false property_type="TEXT" reftitle="${getText('foundation.ec.entity.department.reference')}" viewType="${viewType!}" deValue="${container_department_name_defaultValue!}" conditionfunc="MESBasic.container.container.newContainerEdit._querycustomFunc('container_department_name')"  value="${(container.department.name)!}" displayFieldName="name" name="container.department.name" id="container_department_name" type="Department" url="/foundation/department/common/departmentListFrameCustom.action?operateCode=attendence_1.0_gatherDeal_list_self" clicked=true multiple=false mnewidth=260 formId="MESBasic_container_container_newContainerEdit_form" editCustomCallback=";" refViewCode="sysbase_1.0_department_departmentRefCustom" onkeyupfuncname=";_callback_container_department_name(obj);" cssStyle="" isEdit=true     isCrossCompany=false  />
								
								
								
								<script type="text/javascript">
								<#if newObj && (container_department_name_defaultValue)=='currentDepart'>
									(function($){
										$(function(){
											var obj = {'id' : '${Session.staff.mainPosition.department.id}'};
											obj = foundation.common.getObject('MESBasic_container_container_newContainerEdit_form',obj, 'container.department', '/foundation/department/common/departmentListFrameCustom.action?operateCode=attendence_1.0_gatherDeal_list_self');
											CUI.commonFills('MESBasic_container_container_newContainerEdit_form', 'container.department',obj,true);
											$('input:hidden[name="container.department.id"]').attr('originalvalue',obj.id);
										});
									})(jQuery);
								</#if>
								<#if !(container.id)?? && (container.department.id)?has_content>
									(function($){
										$(function(){
											var obj = {'id' : '${container.department.id}'};
											if(obj.id !== '-1') {
												obj = foundation.common.getObject('MESBasic_container_container_newContainerEdit_form',obj, 'container.department', '/foundation/department/common/departmentListFrameCustom.action?operateCode=attendence_1.0_gatherDeal_list_self');
												CUI.commonFills('MESBasic_container_container_newContainerEdit_form', 'container.department',obj,true);
											}
										});
									})(jQuery);
								</#if>
								
								</script>
							
				</td>
				
												<td  nullable=false class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.radion141577274078811')}" >${getText('MESBasic.propertydisplayName.radion141577274078811')}</label>
				</td>
				
						<#assign container_person_name_defaultValue  = 'currentUser'>
												<td  nullable=false class="edit-table-content"   align="left" style="text-align: left;;" >
					
							
								
								
								
									<@mneclient iframe=mneIframe!false property_type="TEXT" reftitle="${getText('foundation.ec.entity.view.reference')}" viewType="${viewType!}" deValue="${container_person_name_defaultValue!}" conditionfunc="MESBasic.container.container.newContainerEdit._querycustomFunc('container_person_name')"  value="${(container.person.name)!}" displayFieldName="name" name="container.person.name" id="container_person_name" type="Staff" url="/foundation/staff/common/staffListFrameset.action" clicked=true multiple=false mnewidth=260 formId="MESBasic_container_container_newContainerEdit_form" editCustomCallback=";" refViewCode="sysbase_1.0_staff_ref" onkeyupfuncname=";_callback_container_person_name(obj);" cssStyle="" isEdit=true     isCrossCompany=false  />
								
								
								
								<script type="text/javascript">
								<#if newObj && (container_person_name_defaultValue)=='currentUser'>
									(function($){
										$(function(){
											var obj = {'id' : '${Session.staff.id}'};
											obj = foundation.common.getObject('MESBasic_container_container_newContainerEdit_form',obj, 'container.person', '/foundation/staff/common/staffListFrameset.action');
											CUI.commonFills('MESBasic_container_container_newContainerEdit_form', 'container.person',obj,true);
											$('input:hidden[name="container.person.id"]').attr('originalvalue',obj.id);
										});
									})(jQuery);
								</#if>
								<#if !(container.id)?? && (container.person.id)?has_content>
									(function($){
										$(function(){
											var obj = {'id' : '${container.person.id}'};
											if(obj.id !== '-1') {
												obj = foundation.common.getObject('MESBasic_container_container_newContainerEdit_form',obj, 'container.person', '/foundation/staff/common/staffListFrameset.action');
												CUI.commonFills('MESBasic_container_container_newContainerEdit_form', 'container.person',obj,true);
											}
										});
									})(jQuery);
								</#if>
								
								</script>
							
				</td>
				</tr><tr >
							 					<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.randon155170052717811')}" >${getText('MESBasic.propertydisplayName.randon155170052717811')}</label>
				</td>
				
						<#assign container_tankCapacity_defaultValue  = ''>
							 							<#assign container_tankCapacity_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   align="left" style="text-align: left;;" >
					
							
							<div class="fix-input">
									<input name="container.tankCapacity" id="container_tankCapacity"  style=";" originalvalue="<#if newObj&& !(container.tankCapacity)?has_content>${container_tankCapacity_defaultValue!}<#elseif (container.tankCapacity)?has_content>#{(container.tankCapacity)!; m3M3}</#if>" value="<#if newObj&& !(container.tankCapacity)?has_content>${container_tankCapacity_defaultValue!}<#elseif (container.tankCapacity)?has_content>#{(container.tankCapacity)!; m3M3}</#if>" type="text" class="cui-noborder-input numberField" />
							</div>
							<script type="text/javascript">
								$(function(){
									$('#container_tankCapacity').unbind('blur').bind('blur',function(){
										var percision = 3;
										if(!isDecimal($(this).val())){
											//workbenchErrorBarWidget.showMessage("${getText('ec.common.validate.double.format.error','${getText("MESBasic.propertydisplayName.randon1551700527178")}')}");
											return;
										}
										if(parseInt(percision) > -1 && $(this).val()!=undefined && $(this).val()!='' && isDecimal($(this).val())){
											$(this).val(($(this).val() * 1).toFixed(percision));
										}
									});
								});
							</script>
							
				</td>
				
							 					<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.randon1551700367374')}" >${getText('MESBasic.propertydisplayName.randon1551700367374')}</label>
				</td>
				
						<#assign container_llevel_defaultValue  = ''>
							 							<#assign container_llevel_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   align="left" style="text-align: left;;" >
					
							
							<div class="fix-input">
									<input name="container.llevel" id="container_llevel"  style=";" originalvalue="<#if newObj&& !(container.llevel)?has_content>${container_llevel_defaultValue!}<#elseif (container.llevel)?has_content>#{(container.llevel)!; m3M3}</#if>" value="<#if newObj&& !(container.llevel)?has_content>${container_llevel_defaultValue!}<#elseif (container.llevel)?has_content>#{(container.llevel)!; m3M3}</#if>" type="text" class="cui-noborder-input numberField" />
							</div>
							<script type="text/javascript">
								$(function(){
									$('#container_llevel').unbind('blur').bind('blur',function(){
										var percision = 3;
										if(!isDecimal($(this).val())){
											//workbenchErrorBarWidget.showMessage("${getText('ec.common.validate.double.format.error','${getText("MESBasic.propertydisplayName.randon1551700367374")}')}");
											return;
										}
										if(parseInt(percision) > -1 && $(this).val()!=undefined && $(this).val()!='' && isDecimal($(this).val())){
											$(this).val(($(this).val() * 1).toFixed(percision));
										}
									});
								});
							</script>
							
				</td>
				
							 					<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.randon1551700336733')}" >${getText('MESBasic.propertydisplayName.randon1551700336733')}</label>
				</td>
				
						<#assign container_hlevel_defaultValue  = ''>
							 							<#assign container_hlevel_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   align="left" style="text-align: left;;" >
					
							
							<div class="fix-input">
									<input name="container.hlevel" id="container_hlevel"  style=";" originalvalue="<#if newObj&& !(container.hlevel)?has_content>${container_hlevel_defaultValue!}<#elseif (container.hlevel)?has_content>#{(container.hlevel)!; m3M3}</#if>" value="<#if newObj&& !(container.hlevel)?has_content>${container_hlevel_defaultValue!}<#elseif (container.hlevel)?has_content>#{(container.hlevel)!; m3M3}</#if>" type="text" class="cui-noborder-input numberField" />
							</div>
							<script type="text/javascript">
								$(function(){
									$('#container_hlevel').unbind('blur').bind('blur',function(){
										var percision = 3;
										if(!isDecimal($(this).val())){
											//workbenchErrorBarWidget.showMessage("${getText('ec.common.validate.double.format.error','${getText("MESBasic.propertydisplayName.randon1551700336733")}')}");
											return;
										}
										if(parseInt(percision) > -1 && $(this).val()!=undefined && $(this).val()!='' && isDecimal($(this).val())){
											$(this).val(($(this).val() * 1).toFixed(percision));
										}
									});
								});
							</script>
							
				</td>
				</tr><tr >
							 					<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.randon155170029519311')}" >${getText('MESBasic.propertydisplayName.randon155170029519311')}</label>
				</td>
				
						<#assign container_containerShape_defaultValue  = ''>
							 							<#assign container_containerShape_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   style="text-align: left;;" >
					
							
								<#if newObj>
									
									<@systemcode property_type="SYSTEMCODE" showType="SELECTCOMP" onchange=""  viewType="${viewType!}" deValue="${container_containerShape_defaultValue!}" formId="MESBasic_container_container_newContainerEdit_form" classStyle="cui-noborder-input" ecFlag=true multable=false  name="container.containerShape.id" code="TANK_SHAPE" value="${(container.containerShape.id)!}"  />
									
								<#else>
									
									<@systemcode property_type="SYSTEMCODE" showType="SELECTCOMP" onchange=""  viewType="${viewType!}"  formId="MESBasic_container_container_newContainerEdit_form" classStyle="cui-noborder-input" ecFlag=true multable=false  name="container.containerShape.id" code="TANK_SHAPE" value="${(container.containerShape.id)!}"  />
									
								</#if>
							
				</td>
				
							 					<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.randon1551700448213')}" >${getText('MESBasic.propertydisplayName.randon1551700448213')}</label>
				</td>
				
						<#assign container_radius_defaultValue  = ''>
							 							<#assign container_radius_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   align="left" style="text-align: left;;" >
					
							
							<div class="fix-input">
									<input name="container.radius" id="container_radius"  style=";" originalvalue="<#if newObj&& !(container.radius)?has_content>${container_radius_defaultValue!}<#elseif (container.radius)?has_content>#{(container.radius)!; m3M3}</#if>" value="<#if newObj&& !(container.radius)?has_content>${container_radius_defaultValue!}<#elseif (container.radius)?has_content>#{(container.radius)!; m3M3}</#if>" type="text" class="cui-noborder-input numberField" />
							</div>
							<script type="text/javascript">
								$(function(){
									$('#container_radius').unbind('blur').bind('blur',function(){
										var percision = 3;
										if(!isDecimal($(this).val())){
											//workbenchErrorBarWidget.showMessage("${getText('ec.common.validate.double.format.error','${getText("MESBasic.propertydisplayName.randon1551700448213")}')}");
											return;
										}
										if(parseInt(percision) > -1 && $(this).val()!=undefined && $(this).val()!='' && isDecimal($(this).val())){
											$(this).val(($(this).val() * 1).toFixed(percision));
										}
									});
								});
							</script>
							
				</td>
				
							 					<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.randon1551700543658')}" >${getText('MESBasic.propertydisplayName.randon1551700543658')}</label>
				</td>
				
						<#assign container_tankHeight_defaultValue  = ''>
							 							<#assign container_tankHeight_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   align="left" style="text-align: left;;" >
					
							
							<div class="fix-input">
									<input name="container.tankHeight" id="container_tankHeight"  style=";" originalvalue="<#if newObj&& !(container.tankHeight)?has_content>${container_tankHeight_defaultValue!}<#elseif (container.tankHeight)?has_content>#{(container.tankHeight)!; m3M3}</#if>" value="<#if newObj&& !(container.tankHeight)?has_content>${container_tankHeight_defaultValue!}<#elseif (container.tankHeight)?has_content>#{(container.tankHeight)!; m3M3}</#if>" type="text" class="cui-noborder-input numberField" />
							</div>
							<script type="text/javascript">
								$(function(){
									$('#container_tankHeight').unbind('blur').bind('blur',function(){
										var percision = 3;
										if(!isDecimal($(this).val())){
											//workbenchErrorBarWidget.showMessage("${getText('ec.common.validate.double.format.error','${getText("MESBasic.propertydisplayName.randon1551700543658")}')}");
											return;
										}
										if(parseInt(percision) > -1 && $(this).val()!=undefined && $(this).val()!='' && isDecimal($(this).val())){
											$(this).val(($(this).val() * 1).toFixed(percision));
										}
									});
								});
							</script>
							
				</td>
				</tr><tr >
							 					<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.radion1415847847462')}" >${getText('MESBasic.propertydisplayName.radion1415847847462')}</label>
				</td>
				
						<#assign container_tankMgr_defaultValue  = ''>
							 							<#assign container_tankMgr_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   align="left" style="text-align: left;;" >
					
							
								
								<input property_type="BOOLEAN" type="checkbox" style=";" class="ec_radio" name="container.tankMgr_check" originalvalue="<#if !newObj>${(container.tankMgr!false)?string('true','false')}<#elseif container_tankMgr_defaultValue?has_content>${(container_tankMgr_defaultValue!true)?string}<#else>false</#if>" value="<#if !newObj>${(container.tankMgr!false)?string('true','false')}<#else>${(container_tankMgr_defaultValue!true)?string}</#if>"  />
								
								<input property_type="BOOLEAN" type="hidden" name="container.tankMgr" originalvalue="<#if ((container.tankMgr)?? &&  container.tankMgr)||(container_tankMgr_defaultValue!)?string=='true'>true<#else>false</#if>" value="<#if ((container.tankMgr)?? &&  container.tankMgr)||(container_tankMgr_defaultValue!)?string=='true'>true<#else>false</#if>"/>
								<script type="text/javascript">
									$(function(){
										try{
											var checkbox_view = $('input[name="container.tankMgr_check"]');
											if(null != checkbox_view.next().val() && "" != checkbox_view.next().val()){
												if(checkbox_view.val()==checkbox_view.next().val() && checkbox_view.val()=='true'){
													checkbox_view.prop('checked',true);
												}
											}
											checkbox_view.bind('click', function(){
												var tempObj = $('input[name="container.tankMgr"]');
												CUI('input[name="container.tankMgr_check"]').each(function(){
													if(this.checked) {
														tempObj.val('true');
													} else {
														tempObj.val('false');
													}
												});
											});
										}catch(e){}	
									});
								</script>
							
				</td>
				
							 					<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.radion1415847889766')}" >${getText('MESBasic.propertydisplayName.radion1415847889766')}</label>
				</td>
				
						<#assign container_produceMgr_defaultValue  = ''>
							 							<#assign container_produceMgr_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   align="left" style="text-align: left;;" >
					
							
								
								<input property_type="BOOLEAN" type="checkbox" style=";" class="ec_radio" name="container.produceMgr_check" originalvalue="<#if !newObj>${(container.produceMgr!false)?string('true','false')}<#elseif container_produceMgr_defaultValue?has_content>${(container_produceMgr_defaultValue!true)?string}<#else>false</#if>" value="<#if !newObj>${(container.produceMgr!false)?string('true','false')}<#else>${(container_produceMgr_defaultValue!true)?string}</#if>"  />
								
								<input property_type="BOOLEAN" type="hidden" name="container.produceMgr" originalvalue="<#if ((container.produceMgr)?? &&  container.produceMgr)||(container_produceMgr_defaultValue!)?string=='true'>true<#else>false</#if>" value="<#if ((container.produceMgr)?? &&  container.produceMgr)||(container_produceMgr_defaultValue!)?string=='true'>true<#else>false</#if>"/>
								<script type="text/javascript">
									$(function(){
										try{
											var checkbox_view = $('input[name="container.produceMgr_check"]');
											if(null != checkbox_view.next().val() && "" != checkbox_view.next().val()){
												if(checkbox_view.val()==checkbox_view.next().val() && checkbox_view.val()=='true'){
													checkbox_view.prop('checked',true);
												}
											}
											checkbox_view.bind('click', function(){
												var tempObj = $('input[name="container.produceMgr"]');
												CUI('input[name="container.produceMgr_check"]').each(function(){
													if(this.checked) {
														tempObj.val('true');
													} else {
														tempObj.val('false');
													}
												});
											});
										}catch(e){}	
									});
								</script>
							
				</td>
				
				<td class="edit-table-symbol">&nbsp;</td>
				
				<td class="edit-table-symbol">&nbsp;</td>
				</tr><tr >
							 					<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.randon1557726111607')}" >${getText('MESBasic.propertydisplayName.randon1557726111607')}</label>
				</td>
				
						<#assign container_liquidDensityFactor_defaultValue  = ''>
							 							<#assign container_liquidDensityFactor_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   colspan="5" style="text-align: left;;" >
					
							
							<div class="fix-input">
								<input property_type="TEXT" name="container.liquidDensityFactor" id="container_liquidDensityFactor"  style=";" originalvalue="<#if !newObj || (container.liquidDensityFactor)?has_content>${(container.liquidDensityFactor?html)!}<#else>${container_liquidDensityFactor_defaultValue!}</#if>" value="<#if !newObj || (container.liquidDensityFactor)?has_content>${(container.liquidDensityFactor?html)!}<#else>${container_liquidDensityFactor_defaultValue!}</#if>" type="text" class="cui-noborder-input " />
							</div>
							<script type="text/javascript">
							</script>
							
				</td>
				</tr><tr >
							 					<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.randon1557726090595')}" >${getText('MESBasic.propertydisplayName.randon1557726090595')}</label>
				</td>
				
						<#assign container_gasDensityFactor_defaultValue  = ''>
							 							<#assign container_gasDensityFactor_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   colspan="5" style="text-align: left;;" >
					
							
							<div class="fix-input">
								<input property_type="TEXT" name="container.gasDensityFactor" id="container_gasDensityFactor"  style=";" originalvalue="<#if !newObj || (container.gasDensityFactor)?has_content>${(container.gasDensityFactor?html)!}<#else>${container_gasDensityFactor_defaultValue!}</#if>" value="<#if !newObj || (container.gasDensityFactor)?has_content>${(container.gasDensityFactor?html)!}<#else>${container_gasDensityFactor_defaultValue!}</#if>" type="text" class="cui-noborder-input " />
							</div>
							<script type="text/javascript">
							</script>
							
				</td>
				</tr><tr >
							 					<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.radion141532078080211')}" >${getText('MESBasic.propertydisplayName.radion141532078080211')}</label>
				</td>
				
						<#assign container_volumneCalc_defaultValue  = ''>
							 							<#assign container_volumneCalc_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   colspan="5" align="left" style="text-align: left;;" >
					
							
							<div class="fix-input fix-ie7-textarea"><textarea property_type="TEXT" id="container_volumneCalc" originalvalue="<#if !newObj || (container.volumneCalc)?has_content>${(container.volumneCalc?html)!}<#else>${container_volumneCalc_defaultValue?html}</#if>"  name="container.volumneCalc" class="cui-noborder-textarea cui-textarea-auto" style=";" onclick='expressionClick()'><#if !newObj || (container.volumneCalc)?has_content>${(container.volumneCalc)!}<#else>${container_volumneCalc_defaultValue}</#if></textarea></div>
							
				</td>
				</tr><tr >
							 					<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertyshowName.randon1560393368322.flag')}" >${getText('MESBasic.propertyshowName.randon1560393368322.flag')}</label>
				</td>
				
				<td nullable=true class="edit-table-symbol"  colspan="5" align="left" style="text-align: left;;" >
							<label style="width:100%;padding-left:5px;;" value="${getText('MESBasic.propertyshowName.randon1560393360362.flag')}" >${getText('MESBasic.propertyshowName.randon1560393360362.flag')}</label>
				</td>
				</tr><tr >
							 					<td  nullable=true class="edit-table-symbol"   align="right" style="text-align: right;;" >
					
							<label style="width:100%;;" value="${getText('MESBasic.propertydisplayName.randon1551700493116')}" >${getText('MESBasic.propertydisplayName.randon1551700493116')}</label>
				</td>
				
						<#assign container_remark_defaultValue  = ''>
							 							<#assign container_remark_defaultValue  = ''>
					<td  nullable=true class="edit-table-content"   colspan="5" align="left" style="text-align: left;;" >
					
							
							<div class="fix-input fix-ie7-textarea"><textarea property_type="TEXT" id="container_remark" originalvalue="<#if !newObj || (container.remark)?has_content>${(container.remark?html)!}<#else>${container_remark_defaultValue?html}</#if>"  name="container.remark" class="cui-noborder-textarea cui-textarea-auto" style=";" ><#if !newObj || (container.remark)?has_content>${(container.remark)!}<#else>${container_remark_defaultValue}</#if></textarea></div>
							
				</td>
		</tr>
	</table>
		<#assign cpvmInfo = ''>
			<#assign customPropList = getShowCustomProps("MESBasic_1_container_Container", "MESBasic_1_container_newContainerEdit", 'EDIT')>
			<#if customPropList?? && customPropList?size gte 1>
				<table class="edit-table" style="" cellspacing="0" cellpadding="0" border="0">
				<tr>
					<td style="width:13%;"></td><td style="width:20%;"></td>
					<td style="width:13%;"></td><td style="width:20%;"></td>
					<td style="width:13%;"></td><td style="width:20%;"></td>
				</tr>
			<tr>
				<#-- 排布自定义字段 -->
				<#assign totalspan = 0>
				<#list customPropList as c>
				<#assign cspan = (c.colspan!1)>
				<#if cspan gt 3>
					<#assign cspan = 3>
				</#if>
				<#if cspan gt 1>
					<#assign colspanVal = cspan * 2 - 1>
				</#if> 
				<#assign cp_index = c_index + totalspan>
				<#if (cp_index + 1) % 3 == 0>
					<#assign restcol = 1>
				<#else>
					<#assign restcol = 3 - (cp_index + 1) % 3 + 1>
				</#if>
				<#if (cp_index gt 0 && ((cp_index + 1) % 3 == 1 || 3 == 1)) || cspan gt restcol>
					<#if cspan gt restcol>
						<#assign totalspan = totalspan + restcol>
					</#if>
				</tr><tr>
				</#if>
				<#assign totalspan = totalspan + cspan - 1>
				<td nullable=<#if (c.nullable!false)>true<#else>false</#if> class="edit-table-symbol" <#if c.fieldType?? && c.fieldType == 'DATATIME'>celltype="DATATIME"</#if> style="text-align:right;">
					<label value="${getText('${c.displayName}')}">${getText('${c.displayName}')}</label>
				</td>
				<td nullable=<#if (c.nullable!false)>true<#else>false</#if> class="edit-table-content" <#if c.fieldType?? && c.fieldType == 'DATATIME'>celltype="DATATIME"</#if> <#if cspan gt 1>colspan="${colspanVal}"</#if> style="text-align:left;">
					<#assign columnType = c.property.type>
					<#assign columnName = c.property.name>
					<#assign decimalNum = (c.property.decimalNum!-1)>
					<#assign elementName = 'container' + "." + columnName>
					<#assign elementId = 'container' + "_" + columnName>
					<#if cpvmInfo?? && c.relatedKey?has_content>
					<#assign cpvmInfo = cpvmInfo + ',' + c.relatedKey + "||" + elementName>
					</#if>
					<#assign fieldType = c.fieldType>
					<#if fieldType == 'TEXTFIELD'>
					<div class="fix-input">
					<#if columnType == 'DECIMAL'>
						<#if c.precision??>
							<#assign decimalNum =c.precision!>
						</#if>
						<@s.hidden property_type="${columnType}" id="${elementName?replace('.', '_')}_hide" name="${elementName}" />
						<input property_type="${columnType}" type="text" id="${elementName?replace('.', '_')}" name="${elementName?replace('.', '_')}" class="cui-noborder-input numberField" <#if c.align??>style="text-align:${c.align?html};"</#if> <#if (c.readonly!false)>readonly="readonly"</#if>  />
					<#elseif columnType == 'INTEGER'>
						<@s.textfield id="${elementName?replace('.', '_')}" name="${elementName}" cssClass="cui-noborder-input numberField" cssStyle="text-align:${c.align!}" readonly="${(c.readonly!false)?c}" />
					<#else>
						<@s.textfield id="${elementName?replace('.', '_')}" name="${elementName}" cssClass="cui-noborder-input" cssStyle="text-align:${c.align!}" readonly="${(c.readonly!false)?c}" />
					</#if>
					</div>
					<script type="text/javascript">
						$(function(){
							<#if columnType == 'DECIMAL'>
							var tmpVal = parseFloat($("#${elementName?replace('.', '_')}_hide").val());
							if (!isNaN(tmpVal)) {
								var percision = parseInt("${decimalNum}");
								var countVal = (percision > -1 ? tmpVal.toFixed(percision) : tmpVal);
								$("#${elementName?replace('.', '_')}_hide").val(countVal);
								$("#${elementName?replace('.', '_')}_hide").attr("originalvalue", countVal);
								<#if c.format == 'THOUSAND' || c.format == 'TEN_THOUSAND'>
								countVal = formatMoney(<#if c.format == 'THOUSAND'>3<#elseif c.format = 'TEN_THOUSAND'>4</#if>, countVal);
								<#elseif c.format == 'PERCENT'>
								if (percision > -1) {
									var tmpPercision = percision - 2 >= 0 ? percision - 2 : 0;
									countVal = (countVal * 100).toFixed(tmpPercision) + "%";
								} else {
									countVal = (countVal * 100) + "%";
								}
								</#if>
								$("#${elementName?replace('.', '_')}").val(countVal);
								$("#${elementName?replace('.', '_')}").attr('originalvalue', countVal);
							}
							<#if c.format == 'THOUSAND' || c.format == 'TEN_THOUSAND'>
							$("#${elementName?replace('.', '_')}").unbind("blur").unbind("focus").bind({
								blur : function() {
									if ( !$(this).val() ) {
										$('#${elementName?replace('.', '_')}_hide').val('');
										return;
									}
									if ( !isDecimal($(this).val()) ) {
										$('#${elementName?replace('.', '_')}_hide').val($(this).val());
										return;
									}
									var temp = $(this).val();
									var percision = parseInt("${decimalNum}");
									if (percision > -1) {
										temp = (temp * 1).toFixed(percision);
									}
									$('#${elementName?replace('.', '_')}_hide').val( temp );
									temp = formatMoney(<#if c.format == 'THOUSAND'>3<#elseif c.format = 'TEN_THOUSAND'>4</#if>, temp);
									$(this).val(temp);
								},
								focus : function() {
									$(this).val($('#${elementName?replace('.', '_')}_hide').val());
								}	
							});
							<#elseif c.format == 'PERCENT'>
							$("#${elementName?replace('.', '_')}").unbind('blur').unbind('focus').bind({
								blur : function() {
									if ( !$(this).val() ) {
										$('#${elementName?replace('.', '_')}_hide').val('');
										return;
									}
									if ( !isDecimal($(this).val()) ) {
										$('#${elementName?replace('.', '_')}_hide').val($(this).val());
										return;
									}
									var percision = parseInt("${decimalNum}");
									if ( percision > -1 ) {
										$('#${elementName?replace('.', '_')}_hide').val( ($(this).val() / 100).toFixed(percision) );
										var num = percision - 2 >= 0 ? percision - 2 : 0;
										var temp = ($(this).val() * 1).toFixed(num) + "%";
										$(this).val(temp);
									} else {
										$('#${elementName?replace('.', '_')}_hide').val( ($(this).val() / 100) );
										$(this).val($(this).val() + "%");
									}
								},
								focus : function() {
									if ( $('#${elementName?replace('.', '_')}_hide').val() ) {
										if ( !isDecimal($('#${elementName?replace('.', '_')}_hide').val()) ) {
											$(this).val( $('#${elementName?replace('.', '_')}_hide').val() );
										} else {
											var percision = parseInt("${decimalNum}");
											if (percision > -1) {
												var num = percision - 2 >= 0 ? percision - 2 : 0;
												$(this).val( ($('#${elementName?replace('.', '_')}_hide').val() * 100).toFixed(num) );
											} else {
												$(this).val( ($('#${elementName?replace('.', '_')}_hide').val() * 100) );
											}
										}
									} else {
										$(this).val('');
									}
								}
							});
							<#else>
							$('#${elementName?replace('.', '_')}').unbind('blur').bind('blur', function(){
								if ( !$(this).val() ) {
									$('#${elementName?replace('.', '_')}_hide').val('');
									return;
								}
								if ( !isDecimal($(this).val()) ) {
									$('#${elementName?replace('.', '_')}_hide').val( $(this).val() );
									return;
								}
								var percision = parseInt("${decimalNum}");
								if (percision > -1) {
									$(this).val( ($(this).val() * 1).toFixed(percision) );
								}
								$('#${elementName?replace('.', '_')}_hide').val( $(this).val() );
							});
							</#if>
							</#if>
						});
					</script>
					<#elseif fieldType == 'TEXTAREA'>
						<div class="fix-input fix-ie7-textarea">
							<@s.textarea property_type="${columnType}" id="${elementName?replace('.', '_')}" name="${elementName}" rows="${c.textareaRow!3}" cssClass="cui-textarea-wh" cssStyle="border:0;line-height:16px;padding-left:2px;text-align:${c.align!}" readonly="${(c.readonly!false)?c}" onpropertychange="setTimeout(function(){autoTextarea('${elementName?replace('.', '_')}',null,null,true);}, 100);" oninput="setTimeout(function(){autoTextarea('${elementName?replace('.', '_')}',null,null,true);}, 100);" onkeyup="autoTextarea('${elementName?replace('.', '_')}',null,null,true);" />
						</div>
						<script type="text/javascript">
							$(function(){
								CUI["${elementName?replace('.', '_')}completeFlag"] = "first";
								autoTextarea("${elementName?replace('[^a-zA-Z0-9_]', '_', 'r')}");
								//有业务中心的时候,非ie浏览器需要手动再延迟触发一次
								if (YAHOO.env.ua.ie == 0) {
									setTimeout(function(){autoTextarea("${elementName?replace('.', '_')}")}, 200);
								}else{
									setTimeout(function(){autoTextarea("${elementName?replace('.', '_')}")}, 1000);
								}
							});
						</script>
					<#elseif fieldType == 'DATETIME' || fieldType == 'DATE'>
						<#assign dateType = ''>
						<#if c.format == 'YMD_H'>
							<#assign dateType = 'dateTimeHour'>
						<#elseif c.format == 'YMD_HM'>
							<#assign dateType = 'dateTimeMin'>
						<#elseif c.format == 'YMD'>
							<#assign dateType = 'date'>
						<#elseif c.format == 'YM'>
							<#assign dateType = 'yearMonth'>
						<#elseif c.format == 'Y'>
							<#assign dateType = 'year'>
						<#else>
							<#assign dateType = 'dateTime'>
						</#if>
						<#assign dateVal = ''>
						<#if container[columnName]??>
							<#assign dateVal = (container[columnName])?string('yyyy-MM-dd HH:mm:ss')>
						</#if>
						<@datepicker property_type="${columnType}" cssClass="cui-noborder-input" name="${elementName}" id="${elementName?replace('.', '_')}" value=dateVal type="${dateType}" align="${c.align!}" view=(c.readonly!false) />
					<#elseif fieldType == 'SELECTCOMP'>
						<#if columnType == 'SYSTEMCODE'>
							<#assign isS2 = false>
							<#if c.property.seniorSystemCode?? && c.property.seniorSystemCode>
								<#assign isS2 = true>
							</#if>
							<#assign isMultable = false>
							<#if c.property.multable?? && c.property.multable>
								<#assign isMultable = true>
							</#if>
							<@systemcode property_type="${columnType}" iscustom=true showType="${fieldType}" viewType=viewType cssStyle="text-align:${c.align!}" formId="MESBasic_container_container_newContainerEdit_form" classStyle="cui-noborder-input" view=(c.readonly!false) cssStyle="" ecFlag=true multable=isMultable name="${elementName}" code="${(c.property.fillcontentMap.fillContent)!}" value="${container[columnName]!}" seniorSystemCode=isS2 />
						<#else>
							<#assign displayColumnName = columnName + "MainDisplay">
							<#assign viewUrl = (c.refView.url)!''>
							<#assign viewTitle = (c.refView.title)!''>
							<#assign typeVal = ''>
							<#if viewUrl?? && viewUrl?index_of('/foundation/') gte 0 && viewUrl?index_of('/common/') gte 0 >
								<#assign viewSplitArr = viewUrl?split('/')>
								<#assign typeVal = viewSplitArr[2]>
							</#if>
							<#assign pkName = ''>
							<#assign mainDisplayName = ''>
							<#list c.property.associatedProperty.model.properties as p>
								<#if !pkName?has_content && p.isPk?? && p.isPk>
									<#assign pkName = p.name>
								</#if>
								<#if !mainDisplayName?has_content && p.isMainDisplay?? && p.isMainDisplay>
									<#assign mainDisplayName = p.name>
								</#if>
							</#list>
							<#if typeVal?? && typeVal?has_content>
								<#assign mneType = typeVal?cap_first>
							<#else>
								<#assign mneType = 'other'>
							</#if>
							<input type="hidden" iscustom="true" name="${elementName}" value="${container[columnName]!}" />
							<input type="hidden" name="${elementName}.${pkName!'id'}" value="${container[columnName]!}" />
							<@mneclient iframe=false property_type="${columnType}" mneenable=false reftitle="${getText('${viewTitle!}')}" viewType=viewType cssStyle="text-align:${c.align!}" view=(c.readonly!false) value="${container[displayColumnName]!}" name="${elementName}.${mainDisplayName!'name'}" id="${elementName?replace('.', '_')}_${mainDisplayName!'name'}" type="${mneType}" url="${viewUrl!}" clicked=true multiple=false isEdit=true mnewidth=260 formId="MESBasic_container_container_newContainerEdit_form" editCustomCallback="callback_obj_cp_${elementName?replace('.', '_')}()" delCustomCallback="callback_obj_cp_${elementName?replace('.', '_')}_delete()" />
							<script type="text/javascript">
								function callback_obj_cp_${elementName?replace('.', '_')}() {
									if ( $('input:hidden[name="${elementName}.${pkName!'id'}"]').val() ) {
										$('input:hidden[name="${elementName}"]').val( $('input:hidden[name="${elementName}.${pkName!'id'}"]').val() );
									}
								}
								function callback_obj_cp_${elementName?replace('.', '_')}_delete() {
									$('input:hidden[name="${elementName}.${pkName!'id'}"]').val('');
									$('input:hidden[name="${elementName}"]').val('');
									if ( $('#cp_info').length > 0 ) {
											var dg_cp_info = $('#cp_info').val();
											var infoArr = dg_cp_info.split(',');
											for (var n in infoArr) {
												var info = infoArr[n].split('||');
												var name = info[1];
												CUI('input[name="'+ name +'"]').val('');
											}
									}
								}
							</script>
						</#if>
					</#if>
				</td>
				</#list>
					<#if cpvmInfo?? && cpvmInfo?length gt 0>
						<#assign cpvmInfo = cpvmInfo?substring(1)>
						<input type="hidden" id="cp_info" value="${cpvmInfo!}" />
					</#if>
		</tr>
	</table>
	</#if>
</div>				</div>
				<div class="edit-datatable">	

<#assign colAdmFlag=checkUserPermisition('ec_ptManage_list_view')>

<#assign colAdmFlag=checkUserPermisition('ec_ptManage_list_view')>

<#assign colAdmFlag=checkUserPermisition('ec_ptManage_list_view')>
					
				
					<#if  refId?? && (refId > 0)>
						<#assign nodeExpanded = true>
					<#else>
						<#assign nodeExpanded = false>
					</#if>
					
				<#if newObj?? && !newObj && !(refId?? && (refId > 0))>
				<#assign exportExcel=false>
				<#else>
				<#assign exportExcel=false>
				</#if>
			<#if false>
				<#assign routeFlag = "2">
			<#else>
				<#if false && isIE>
						<#assign routeFlag = "1">
				<#else>
						<#assign routeFlag = "0">
				</#if>
			</#if>

			<#assign cpObjHideKey = '' >
			<#assign cpvmInfo = ''>
								<#assign customPropViewMappings = getShowCustomProps("MESBasic_1_container_PropertyTags", "MESBasic_1_container_newContainerEditdg1551701917640", "DATAGRID", "propertyTags")>
								<#list customPropViewMappings as cpvm>
									<#if cpvm.property.type == 'OBJECT' && cpObjHideKey?index_of(",'" +cpvm.propertyLayRec) lt 0>
										<#assign cpObjHideKey = cpObjHideKey + ",'" + cpvm.propertyLayRec + "'">
									</#if>
									<#if cpvm.propertyLayRec?index_of('.') lt 0 && cpvm.relatedKey?has_content>
										<#assign cpvmInfo = cpvmInfo + ',' + cpvm.relatedKey + "||" + cpvm.propertyLayRec>
										<#if cpvm.property.type == 'OBJECT'>
											<#assign cpvmInfo = cpvmInfo + "||" + cpvm.property.code>	
										</#if>
									</#if>
								</#list>
			
								
								
								
			<#if  refId?? && (refId > 0)>
				<#assign dUrl="/MESBasic/container/container/data-dg1551701917640.action?container.id=${refId!-1}&refId=${refId!-1}&datagridCode=MESBasic_1_container_newContainerEditdg1551701917640">
			<#else>
				<#assign dUrl="/MESBasic/container/container/data-dg1551701917640.action?container.id=${(container.id)!-1}&datagridCode=MESBasic_1_container_newContainerEditdg1551701917640">
			</#if>
			<#assign firstLoad = true>
				
			<#if viewType?? && viewType != "readonly" && newObj?? && !newObj && !(refId?? && (refId > 0))>
				<#assign buttons="[{text:\"${getText('MESBasic.buttonPropertyshowName.radion1551702006426')}\",handler:function(event){this.addNewRow(event);},iconClass:\"cui-btn-add\",useInMore:\"false\"},{text:\"${getText('MESBasic.buttonPropertyshowName.radion1551702006219')}\",handler:function(event){DT_PropertyTags_dg1551701917640_deldatagrid();},iconClass:\"cui-btn-del\",useInMore:\"false\"},{text:\"${getText('MESBasic.buttonPropertyshowName.radion1551702162855')}\",handler:function(){this.appendRow();},iconClass:\"cui-btn-insert\",useInMore:\"false\"},{text:\"${getText(\"ec.view.button.moveRowUp\")}\",handler:function(){this.moveRow(\"up\");},iconClass:\"cui-btn-up\",useInMore:\"false\"},{text:\"${getText(\"ec.view.button.moveRowDown\")}\",handler:function(){this.moveRow(\"down\");},iconClass:\"cui-btn-down\",useInMore:\"false\"}]">
				<#assign canImportExcel=false>
			<#else>
				<#assign buttons="[{text:\"${getText('MESBasic.buttonPropertyshowName.radion1551702006426')}\",handler:function(event){this.addNewRow(event);},iconClass:\"cui-btn-add\",useInMore:\"false\"},{text:\"${getText('MESBasic.buttonPropertyshowName.radion1551702006219')}\",handler:function(event){DT_PropertyTags_dg1551701917640_deldatagrid();},iconClass:\"cui-btn-del\",useInMore:\"false\"},{text:\"${getText('MESBasic.buttonPropertyshowName.radion1551702162855')}\",handler:function(){this.appendRow();},iconClass:\"cui-btn-insert\",useInMore:\"false\"},{text:\"${getText(\"ec.view.button.moveRowUp\")}\",handler:function(){this.moveRow(\"up\");},iconClass:\"cui-btn-up\",useInMore:\"false\"},{text:\"${getText(\"ec.view.button.moveRowDown\")}\",handler:function(){this.moveRow(\"down\");},iconClass:\"cui-btn-down\",useInMore:\"false\"}]">
				<#assign canImportExcel=false>
			</#if>
				<#if cpvmInfo?? && cpvmInfo?length gt 0>
					<#assign cpvmInfo = cpvmInfo?substring(1)>
					<input type="hidden" id="dg_cp_info_PropertyTags_dg1551701917640" value="${cpvmInfo!}" />
				</#if>
			
			<input type="hidden" id="dg1551701917640_id" value="PropertyTags_dg1551701917640" />
			
			<input type="hidden" id="dg1551701917640_url" value="${dUrl}" />
			
			<#assign assModelDisplayName = getText('MESBasic.modelname.radion1415869369969')!>
			<#assign assModelDisplayName = assModelDisplayName + getText('ec.common.validate.colon') >
			<@exportexcel action="/MESBasic/container/container/data-dg1551701917640.action?operateType=export&datagridCode=MESBasic_1_container_newContainerEditdg1551701917640"  settingtext="" settingUrl="" prepareParams="" formId="" look="text" width=250 height=170 text="" exportPageChoose=0 dtPage="dgPage" prefix="PropertyTags_dg1551701917640" />
			<@datagrid colAdminFlag=colAdmFlag withoutConfigTable=true id="PropertyTags_dg1551701917640" viewType="${viewType}" renderOverEvent="dg1551701917640RenderOverEvent" route="${routeFlag}" formId="MESBasic_container_container_newContainerEdit_form" noPermissionKeys="property.code,property.itemName,property.tagType,property.itemClass,property.itemNumber,primary,remark" modelCode="MESBasic_1_container_PropertyTags" dataUrl="${dUrl}" postData="&dgPage.pageSize=65536" dataGridName="dg1551701917640" dtPage="dgPage"  hidekeyPrefix="dg1551701917640" hidekey="['id','version','sort','property.id','property.code','property.id','property.itemName','property.id','property.tagType.id','property.id','property.itemClass.id','property.id','property.itemNumber'${cpObjHideKey!''}]" transMethod="post" paginator=false editable=true buttons="${buttons}"  canImportExcel=canImportExcel noPadding=true isEdit=true tabViewIndex=0 pageInitMethod="dg1551701917640PageInitMethod"  defaultNodeExpanded=nodeExpanded  cannotAddNewRow=true cannotDeleteRow=false assModelDisplayName=assModelDisplayName  activexButton="MESBasic.buttonPropertyshowName.radion1551702006426,ADDROW,add;MESBasic.buttonPropertyshowName.radion1551702006219,DELETEROW,del;MESBasic.buttonPropertyshowName.radion1551702162855,INSERTROW,insert" exportExcel=exportExcel addNewRow=false   canInsertRow=false  insertRowAble=true firstLoad=firstLoad  copyRow=false  copyColumn=false  ptRealTimeLoad=0 >		
								<@datacolumn key="checkbox" textalign="center" label="" width="30" type="checkbox" checkall="true"/>
							<#assign property_code_displayDefaultType=''>
								<#assign property_code_defaultValue=''>
										<#assign property_code_defaultValue=''>
																	<#if (property_code_defaultValue!)?string=="currentUser">
								<#assign property_code_defaultValue='${staffJson!}'>
							<#elseif (property_code_defaultValue!)?string=="currentPost">
								<#assign property_code_defaultValue='${postJson!}'>
							<#elseif (property_code_defaultValue!)?string=="currentDepart">
								<#assign property_code_defaultValue='${deptJson!}'>
							<#elseif (property_code_defaultValue!)?string=="currentComp">
								<#assign property_code_defaultValue='${compJson!}'>
							</#if>

									<@datacolumn key="property.code"        showFormat="SELECTCOMP" defaultValue="${(property_code_defaultValue!)?string}" defaultDisplay="${(property_code_displayDefaultType!)?string}" decimal="" editable=true type="selectcomp" showType="selectcomp" notnull=false   selectCompName="MESBasic.container.container.newContainerEdit"  textalign="left"  viewUrl="/MESBasic/itemManage/itemSetup/itemSelfList.action" viewCode="MESBasic_1_itemManage_itemSelfList" mneenable=false crossCompany=false viewTitle="${getText('MESBasic.viewtitle.radion1421223012419')}"  label="${getText('MESBasic.propertydisplayName.radion1415261315358')}" width=100 showFormatFunc=""  />
							<#assign property_itemName_displayDefaultType=''>
								<#assign property_itemName_defaultValue=''>
										<#assign property_itemName_defaultValue=''>
																	<#if (property_itemName_defaultValue!)?string=="currentUser">
								<#assign property_itemName_defaultValue='${staffJson!}'>
							<#elseif (property_itemName_defaultValue!)?string=="currentPost">
								<#assign property_itemName_defaultValue='${postJson!}'>
							<#elseif (property_itemName_defaultValue!)?string=="currentDepart">
								<#assign property_itemName_defaultValue='${deptJson!}'>
							<#elseif (property_itemName_defaultValue!)?string=="currentComp">
								<#assign property_itemName_defaultValue='${compJson!}'>
							</#if>

									<@datacolumn key="property.itemName"        showFormat="TEXT" defaultValue="${(property_itemName_defaultValue!)?string}" defaultDisplay="${(property_itemName_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false   selectCompName="MESBasic.container.container.newContainerEdit"  textalign="left"  viewUrl="/MESBasic/itemManage/itemSetup/itemRefForContainer.action" viewCode="MESBasic_1_itemManage_itemRefForContainer" mneenable=false crossCompany=false viewTitle="${getText('MESBasic.viewtitle.randon1422422463756')}"  label="${getText('MESBasic.propertydisplayName.radion14152588137933')}" width=100 showFormatFunc=""  />
							<#assign property_tagType_displayDefaultType=''>
								<#assign property_tagType_defaultValue=''>
										<#assign property_tagType_defaultValue=''>
																	<#if (property_tagType_defaultValue!)?string=="currentUser">
								<#assign property_tagType_defaultValue='${staffJson!}'>
							<#elseif (property_tagType_defaultValue!)?string=="currentPost">
								<#assign property_tagType_defaultValue='${postJson!}'>
							<#elseif (property_tagType_defaultValue!)?string=="currentDepart">
								<#assign property_tagType_defaultValue='${deptJson!}'>
							<#elseif (property_tagType_defaultValue!)?string=="currentComp">
								<#assign property_tagType_defaultValue='${compJson!}'>
							</#if>
									<@systemCodeColumn code="TAG_TYPE" textalign="center" defaultValue="${(property_tagType_defaultValue!)?string}" key="property.tagType.id" editable=false type="selectcomp" notnull=false     label="${getText('MESBasic.propertydisplayName.radion1415260997658')}" width=100  />
							<#assign property_itemClass_displayDefaultType=''>
								<#assign property_itemClass_defaultValue=''>
										<#assign property_itemClass_defaultValue=''>
																	<#if (property_itemClass_defaultValue!)?string=="currentUser">
								<#assign property_itemClass_defaultValue='${staffJson!}'>
							<#elseif (property_itemClass_defaultValue!)?string=="currentPost">
								<#assign property_itemClass_defaultValue='${postJson!}'>
							<#elseif (property_itemClass_defaultValue!)?string=="currentDepart">
								<#assign property_itemClass_defaultValue='${deptJson!}'>
							<#elseif (property_itemClass_defaultValue!)?string=="currentComp">
								<#assign property_itemClass_defaultValue='${compJson!}'>
							</#if>
									<@systemCodeColumn code="ITEM_PROPERTY" textalign="center" defaultValue="${(property_itemClass_defaultValue!)?string}" key="property.itemClass.id" editable=false type="selectcomp" notnull=false     label="${getText('MESBasic.propertydisplayName.radion1416380194525')}" width=100  />
							<#assign property_itemNumber_displayDefaultType=''>
								<#assign property_itemNumber_defaultValue=''>
										<#assign property_itemNumber_defaultValue=''>
																	<#if (property_itemNumber_defaultValue!)?string=="currentUser">
								<#assign property_itemNumber_defaultValue='${staffJson!}'>
							<#elseif (property_itemNumber_defaultValue!)?string=="currentPost">
								<#assign property_itemNumber_defaultValue='${postJson!}'>
							<#elseif (property_itemNumber_defaultValue!)?string=="currentDepart">
								<#assign property_itemNumber_defaultValue='${deptJson!}'>
							<#elseif (property_itemNumber_defaultValue!)?string=="currentComp">
								<#assign property_itemNumber_defaultValue='${compJson!}'>
							</#if>

									<@datacolumn key="property.itemNumber"        showFormat="SELECTCOMP" defaultValue="${(property_itemNumber_defaultValue!)?string}" defaultDisplay="${(property_itemNumber_displayDefaultType!)?string}" decimal="" editable=true type="selectcomp" showType="selectcomp" notnull=false   selectCompName="MESBasic.container.container.newContainerEdit"  textalign="left"  viewUrl="/MESBasic/itemManage/itemSetup/itemSelfList.action" viewCode="MESBasic_1_itemManage_itemSelfList" mneenable=false crossCompany=false viewTitle="${getText('MESBasic.viewtitle.radion1421223012419')}"  label="${getText('MESBasic.propertydisplayName.radion1415258842136')}" width=100 showFormatFunc=""  />
							<#assign primary_displayDefaultType=''>
								<#assign primary_defaultValue=''>
										<#assign primary_defaultValue=''>
										  
									<@datacolumn key="primary"        showFormat="CHECKBOX" defaultValue="${(primary_defaultValue!)?string}" defaultDisplay="${(primary_displayDefaultType!)?string}" decimal="" editable=true type="checkbox" showType="checkbox" notnull=false     textalign="center"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.radion1415869492053')}" width=100 showFormatFunc=""  />
							<#assign remark_displayDefaultType=''>
								<#assign remark_defaultValue=''>
										<#assign remark_defaultValue=''>
										  
									<@datacolumn key="remark"        showFormat="TEXT" defaultValue="${(remark_defaultValue!)?string}" defaultDisplay="${(remark_displayDefaultType!)?string}" decimal="" editable=true type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1551700197254')}" width=100 showFormatFunc=""  />
							<#assign customPropViewMappings = getShowCustomProps("MESBasic_1_container_PropertyTags", "MESBasic_1_container_newContainerEditdg1551701917640", "DATAGRID", "propertyTags")>
							<#-- 排布自定义字段 -->
							<#list customPropViewMappings as cpvm>
								<#assign cpvmColumnType = cpvm.property.type>
								<#assign cpvmKey = cpvm.propertyLayRec>
								<#assign cpvmType = cpvmColumnType?lower_case>
								
								<#assign cpEditable = true>
								<#if cpEditable && cpvmKey?index_of('.') gt -1>
									<#assign cpEditable = false>
								</#if>
								<#if cpvm.readonly!false>
									<#assign cpEditable = false>
								</#if>
								<#assign cpvmNotNull = false>
								<#if cpEditable && !(cpvm.nullable!true)>
									<#assign cpvmNotNull = true>
								</#if>
								<#assign cpDecimal = ''>
								<#if cpvm.property.type == 'DECIMAL'>
									<#assign cpDecimal = (cpvm.property.decimalNum!0)>
									<#if cpvm.precision??>
										<#assign cpDecimal =cpvm.precision!>
									</#if>
								</#if>
								<#assign cpvmWidth = 100>
								<#if cpvmColumnType == 'DATETIME'>
									<#assign cpvmWidth = 130>
								</#if>
								<#if cpvm.fieldType == 'TEXTAREA'>
									<#assign cpvmWidth = 200>
								</#if>
								
								<#if cpvmColumnType == 'TEXT'>
									<#assign cpvmType = 'textfield'>
								<#elseif cpvmColumnType == 'DATETIME' || cpvmColumnType == 'SYSTEMCODE' || cpvmColumnType == 'OBJECT'>
									<#assign cpvmType = cpvm.fieldType?lower_case>
								</#if>
								
								<#if cpvmColumnType == 'SYSTEMCODE'>
									<#assign cpvmSeniorSystemCode = false>
									<#if cpvm.property.seniorSystemCode?? && cpvm.property.seniorSystemCode>
										<#assign cpvmSeniorSystemCode = true>
									</#if>
									<@systemCodeColumn width=cpvmWidth label="${getText('${cpvm.displayName}')}" code="${(cpvm.property.fillcontentMap.fillContent)!}" key=cpvmKey editable=cpEditable type=cpvmType notnull=cpvmNotNull seniorSystemCode=cpvmSeniorSystemCode />
								<#else>
									<#assign viewUrl = ''>
									<#assign viewTitle = ''>
									<#assign viewCode = ''>
									<#assign selectCompName = ''>
									<#assign isObjCustomProp = false>
									<#assign objCustomPropNames = ''>
									<#if cpvmColumnType == 'OBJECT'>
										<#if cpvm.refView??>
											<#assign viewUrl = (cpvm.refView.url)!''>
											<#assign viewTitle = (cpvm.refView.title)!''>
											<#assign viewCode = (cpvm.refView.code)!''>
											<#assign selectCompName = 'MESBasic.container.container.newContainerEdit'>
										</#if>
										<#assign pkName = ''>
										<#assign mainDisplayName = ''>
										<#list cpvm.property.associatedProperty.model.properties as p>
											<#if !pkName?has_content && p.isPk?? && p.isPk>
												<#assign pkName = p.name>
											</#if>
											<#if !mainDisplayName?has_content && p.isMainDisplay?? && p.isMainDisplay>
												<#assign mainDisplayName = p.name>
											</#if>
										</#list>
										<#assign cpvmKey = cpvmKey + 'MainDisplay'>
										<#assign isObjCustomProp = true>
										<#assign objCustomPropNames = (mainDisplayName!'name') + ',' + (pkName!'id')> 
									</#if>
									
									<#if cpvm.align??>
										<#assign columnAlign = cpvm.align >						
									<#elseif (cpvm.property.type=='INTEGER' || cpvm.property.type=='DECIMAL')>
										<#assign columnAlign = 'right'>
									<#else>
										<#assign columnAlign = 'left' >
									</#if>
						
									<@datacolumn key=cpvmKey width=cpvmWidth showFormat="${cpvm.format!'TEXT'}" decimal="${cpDecimal}" editable=cpEditable type=cpvmType showType="${cpvm.fieldType}" notnull=cpvmNotNull callbackname="" selectCompName=selectCompName viewUrl="${viewUrl!}" viewCode="${viewCode!}" crossCompany=false viewTitle="${getText('${viewTitle!}')}" label="${getText('${cpvm.displayName}')}" isObjCustomProp=isObjCustomProp objCustomPropNames="${objCustomPropNames}" textalign="${columnAlign}" />
								</#if>
							</#list>
			
			</@datagrid>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
			
			<script type="text/javascript">
				function PropertyTags_dg1551701917640_check_datagridvalid(){
					//
					var errorObj =PropertyTags_dg1551701917640Widget._DT.testData();
					var errorContent='';
					if(errorObj!=null){
					  for(var i=0;i<errorObj.length;i++){
						var obj1=errorObj[i];
						if(obj1.errorType=='date'){
						  errorContent+=obj1.label+'必须为日期类型！';
						  break;
						}else if(obj1.errorType=='integer'){
						  errorContent+=obj1.label+'必须为数字类型！';
						  break;
						}else if(obj1.errorType=='decimal'){
						  errorContent+=obj1.label+'必须为整数类型！';
						  break;
						}else if(obj1.errorType=='notnull'){
						   errorContent+=obj1.label+'不能为空';
						   break;
						}else if(obj1.errorType=='toolong'){
						   errorContent+=obj1.label+'字段长度不能超过'+obj1.length+'字节(注：英文字母占1个字节，中文字占3个字节)！';
						   break;
						}
					  }
					  if(errorContent!=""){
						hasErr = true;
					  }
					  if(hasErr){
						EditDialogErrorBarWidget.show(errorContent);
						return false;
					  }
					}
					return true;
				}
				
				function savedg1551701917640DataGrid(){
					<#if  refId?? && (refId gt 0)>
					PropertyTags_dg1551701917640Widget.setAllRowEdited();
					</#if>
					// 针对需要全部更新的PT，把pt Id存到body的CHANGED_PT中，保存时，会自动保存全部数据
					var changed_pt_name = $('body').data('CHANGED_PT');
					if(changed_pt_name && changed_pt_name.indexOf('PropertyTags_dg1551701917640Widget') > -1) {
						PropertyTags_dg1551701917640Widget.setAllRowEdited();
					}
					var json = PropertyTags_dg1551701917640Widget.parseEditedData();
					$('input[name="dg1551701917640ListJson"]').remove();
					$('input[name="dgLists[\'dg1551701917640\']"]').remove();
					$('input[name="dg1551701917640ModelCode"]').remove();
					$('<input type="hidden" name="dgLists[\'dg1551701917640\']">').val(json).appendTo($('#MESBasic_container_container_newContainerEdit_form'));
					$('<input type="hidden" name="dg1551701917640ModelCode">').val('MESBasic_1_container_PropertyTags').appendTo($('#MESBasic_container_container_newContainerEdit_form'));
					//兼容旧版本提交函数
					$('<input type="hidden" name="dg1551701917640ListJson">').val(json).appendTo($('#MESBasic_container_container_newContainerEdit_form'));
				}
				function DT_PropertyTags_dg1551701917640_deldatagrid(){
					var deleteRows = PropertyTags_dg1551701917640Widget.deleteRows();
					if(!deleteRows || deleteRows.length == 0) {
						CUI.Dialog.alert("${getHtmlText('foundation.message.choicedel')}");
						return false;
					}
					var delproperty = "'id','version','container.id','property.id'";
					delproperty= delproperty.split(",")[0].substring(1).replace("'","");
					$.each(deleteRows, function(index, deleteRow){
						var tepID = eval("deleteRow."+delproperty);
						if(tepID==null || tepID == undefined || tepID == '') {
							return true;
						}
						if($("#dg1551701917640DeletedIds").length>0){
							$("#dg1551701917640DeletedIds")[0].value+=","+tepID;
						}else{
							CUI('<input type="hidden" id="dg1551701917640DeletedIds" name="dgDeletedIds[\'dg1551701917640\']" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
						}
						//兼容旧版本提交函数
						CUI('<input type="hidden" name="dg1551701917640DeletedIds['+CUI('input[name^="dg1551701917640DeletedIds"]').length+']'+'" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
					});
					return deleteRows;
				}
				function DT_PropertyTags_dg1551701917640_delTreeNodes(){
					var deleteRows = PropertyTags_dg1551701917640Widget._DT.removeTreeNode();
					if(!deleteRows || deleteRows.length == 0) {
						return false;
					}
					var delproperty = "'id','version','container.id','property.id'";
					delproperty= delproperty.split(",")[0].substring(1).replace("'","");
					$.each(deleteRows, function(index, deleteRow){
						var tepID = eval("deleteRow."+delproperty);
						if(tepID==null || tepID == undefined || tepID == '') {
							return true;
						}
						if($("#dg1551701917640DeletedIds").length>0){
							$("#dg1551701917640DeletedIds")[0].value+=","+tepID;
						}else{
							CUI('<input type="hidden" id="dg1551701917640DeletedIds" name="dgDeletedIds[\'dg1551701917640\']" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
						}
						//兼容旧版本提交函数
						CUI('<input type="hidden" name="dg1551701917640DeletedIds['+CUI('input[name^="dg1551701917640DeletedIds"]').length+']'+'" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
					});
				}
				$(function($){
					var datagrids = $('body').data('MESBasic_container_container_newContainerEdit_datagrids');
					if(!datagrids) {
						datagrids = [];
					}
					for(var i=0;i<4;i++) {
						if(!datagrids[i]) {
							datagrids[i] = [];
						}
					}
					if(datagrids[0].length>0) {
						for(var i=0;i<datagrids[0].length;i++) {
							if(datagrids[0][i] == 'PropertyTags_dg1551701917640') {
								break;
							}
							if(i==datagrids[0].length-1) {
								datagrids[0][datagrids[0].length] = 'PropertyTags_dg1551701917640';
							}
						}
					} else {
						datagrids[0][datagrids[0].length] = 'PropertyTags_dg1551701917640';
					}
					$('body').data('MESBasic_container_container_newContainerEdit_datagrids', datagrids);
				});
				
				var PropertyTags_dg1551701917640_importDialog = null;
				function PropertyTags_dg1551701917640_showImportDialog(){
					try{
						if(PropertyTags_dg1551701917640_importDialog!=null&&PropertyTags_dg1551701917640_importDialog.isShow==1){
							return false;
						}
						var url = "/MESBasic/container/container/initImport.action?datagridCode=MESBasic_1_container_newContainerEditdg1551701917640&tid=${id!}&datagridName=dg1551701917640";
							<#if canImportExcel>
								var buttonCode="MESBasic_1_container_newContainerEditdg1551701917640_BUTTON_dgImport";
								url+="&buttonCode="+buttonCode;
							</#if>
						PropertyTags_dg1551701917640_importDialog = new CUI.Dialog({
							title: "${getHtmlText('common.button.import')}",
							url:url,
							modal:true,
							description:'',
							height:'330',
							width: '420',
							dragable:true,
							buttons:[{id:"import",name:"${getHtmlText('common.button.import')}",handler:function(){var dg = eval("PropertyTags_dg1551701917640"+"Widget");if(dg && dg.checkEdited && dg.checkEdited()){CUI.Dialog.alert("${getHtmlText('ec.view.unsavedgdata')}");}else{foundation.importExcel.submitImportForm();}}},{name:"${getHtmlText('common.button.cancel')}",id:"close",handler:function(){setTimeout(function(){$('#importResponse').remove();PropertyTags_dg1551701917640_importDialog.close();}, 200);}},{name:"${getHtmlText('common.button.Confirm')}",id:"ok",display:'hidden',handler:function(){setTimeout(function(){$('#importResponse').remove();PropertyTags_dg1551701917640_importDialog.close();}, 200);}},{name:"${getHtmlText('common.button.back')}",id:"tback",display:'hidden',handler:function(){tback();}}],
							beforeCloseEvent:function(){$('#importResponse').remove();}
						});
						PropertyTags_dg1551701917640_importDialog.show();
					}catch(e){}
				}	
				
				function PropertyTags_dg1551701917640_downLoadFile(){
					var url = "/MESBasic/container/container/downLoad.action?datagridCode=MESBasic_1_container_newContainerEditdg1551701917640&templateRelatedModelCode=MESBasic_1_container_newContainerEditdg1551701917640&downloadType=template&fileName=dg1551701917640";
					window.open(url,"","");
				}
				function dg1551701917640RenderOverEvent(){
				}
				function dg1551701917640PageInitMethod(nTabIndex){
					MESBasic.container.container.newContainerEdit.initSize(nTabIndex);
				}
			</script>
			
			

<#assign colAdmFlag=checkUserPermisition('ec_ptManage_list_view')>
			</div>
		</div>
			<div class="clearfix pd_bottom">
				<div class="cui-elements pd-top">

<div class="edit-panes-s" >
</div>				</div>
				<div class="edit-datatable">	

<#assign colAdmFlag=checkUserPermisition('ec_ptManage_list_view')>

<#assign colAdmFlag=checkUserPermisition('ec_ptManage_list_view')>
				
					<#if  refId?? && (refId > 0)>
						<#assign nodeExpanded = true>
					<#else>
						<#assign nodeExpanded = false>
					</#if>
					
				<#if newObj?? && !newObj && !(refId?? && (refId > 0))>
				<#assign exportExcel=false>
				<#else>
				<#assign exportExcel=false>
				</#if>
			<#if false>
				<#assign routeFlag = "2">
			<#else>
				<#if false && isIE>
						<#assign routeFlag = "1">
				<#else>
						<#assign routeFlag = "0">
				</#if>
			</#if>

			<#assign cpObjHideKey = '' >
			<#assign cpvmInfo = ''>
			
			<#if  refId?? && (refId > 0)>
				<#assign dUrl="/MESBasic/container/container/data-dg1553144257690.action?container.id=${refId!-1}&refId=${refId!-1}&datagridCode=MESBasic_1_container_newContainerEditdg1553144257690">
			<#else>
				<#assign dUrl="/MESBasic/container/container/data-dg1553144257690.action?container.id=${(container.id)!-1}&datagridCode=MESBasic_1_container_newContainerEditdg1553144257690">
			</#if>
			<#assign firstLoad = true>
				
			<#if viewType?? && viewType != "readonly" && newObj?? && !newObj && !(refId?? && (refId > 0))>
				<#assign buttons="[]">
				<#assign canImportExcel=false>
			<#else>
				<#assign buttons="[]">
				<#assign canImportExcel=false>
			</#if>
				<#if cpvmInfo?? && cpvmInfo?length gt 0>
					<#assign cpvmInfo = cpvmInfo?substring(1)>
					<input type="hidden" id="dg_cp_info_ContainerExp_dg1553144257690" value="${cpvmInfo!}" />
				</#if>
			
			<input type="hidden" id="dg1553144257690_id" value="ContainerExp_dg1553144257690" />
			
			<input type="hidden" id="dg1553144257690_url" value="${dUrl}" />
			
			<#assign assModelDisplayName = getText('MESBasic.modelname.randon1553144862986')!>
			<#assign assModelDisplayName = assModelDisplayName + getText('ec.common.validate.colon') >
			<@exportexcel action="/MESBasic/container/container/data-dg1553144257690.action?operateType=export&datagridCode=MESBasic_1_container_newContainerEditdg1553144257690"  settingtext="" settingUrl="" prepareParams="" formId="" look="text" width=250 height=170 text="" exportPageChoose=0 dtPage="dgPage" prefix="ContainerExp_dg1553144257690" />
			<@datagrid colAdminFlag=colAdmFlag withoutConfigTable=true id="ContainerExp_dg1553144257690" viewType="${viewType}" renderOverEvent="dg1553144257690RenderOverEvent" route="${routeFlag}" formId="MESBasic_container_container_newContainerEdit_form" noPermissionKeys="name,representCode,code" modelCode="MESBasic_1_container_ContainerExp" dataUrl="${dUrl}" postData="&dgPage.pageSize=65536" dataGridName="dg1553144257690" dtPage="dgPage"  hidekeyPrefix="dg1553144257690" hidekey="['id','version'${cpObjHideKey!''}]" transMethod="post" paginator=false editable=false  buttons="${buttons}" noPadding=true isEdit=true tabViewIndex=1 pageInitMethod="dg1553144257690PageInitMethod"  defaultNodeExpanded=nodeExpanded  cannotAddNewRow=false cannotDeleteRow=true assModelDisplayName=assModelDisplayName  activexButton="" exportExcel=exportExcel addNewRow=true   canInsertRow=false  insertRowAble=true firstLoad=firstLoad  copyRow=false  copyColumn=false  ptRealTimeLoad=1 >		
							<#assign name_displayDefaultType=''>
								<#assign name_defaultValue=''>
										<#assign name_defaultValue=''>
										 
									<@datacolumn key="name"        showFormat="TEXT" defaultValue="${(name_defaultValue!)?string}" defaultDisplay="${(name_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1553144942140')}" width=100 showFormatFunc=""  />
							<#assign representCode_displayDefaultType=''>
								<#assign representCode_defaultValue=''>
										<#assign representCode_defaultValue=''>
										 
									<@datacolumn key="representCode"        showFormat="TEXT" defaultValue="${(representCode_defaultValue!)?string}" defaultDisplay="${(representCode_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1553144955108')}" width=100 showFormatFunc=""  />
							<#assign code_displayDefaultType=''>
								<#assign code_defaultValue=''>
										<#assign code_defaultValue=''>
										 
									<@datacolumn key="code"        showFormat="TEXT" defaultValue="${(code_defaultValue!)?string}" defaultDisplay="${(code_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left" hiddenCol=true viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1553144902565')}" width=100 showFormatFunc=""  />
			
			</@datagrid>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
			
			<script type="text/javascript">
				function ContainerExp_dg1553144257690_check_datagridvalid(){
					//
					var errorObj =ContainerExp_dg1553144257690Widget._DT.testData();
					var errorContent='';
					if(errorObj!=null){
					  for(var i=0;i<errorObj.length;i++){
						var obj1=errorObj[i];
						if(obj1.errorType=='date'){
						  errorContent+=obj1.label+'必须为日期类型！';
						  break;
						}else if(obj1.errorType=='integer'){
						  errorContent+=obj1.label+'必须为数字类型！';
						  break;
						}else if(obj1.errorType=='decimal'){
						  errorContent+=obj1.label+'必须为整数类型！';
						  break;
						}else if(obj1.errorType=='notnull'){
						   errorContent+=obj1.label+'不能为空';
						   break;
						}else if(obj1.errorType=='toolong'){
						   errorContent+=obj1.label+'字段长度不能超过'+obj1.length+'字节(注：英文字母占1个字节，中文字占3个字节)！';
						   break;
						}
					  }
					  if(errorContent!=""){
						hasErr = true;
					  }
					  if(hasErr){
						EditDialogErrorBarWidget.show(errorContent);
						return false;
					  }
					}
					return true;
				}
				
				function savedg1553144257690DataGrid(){
					<#if  refId?? && (refId gt 0)>
					ContainerExp_dg1553144257690Widget.setAllRowEdited();
					</#if>
					// 针对需要全部更新的PT，把pt Id存到body的CHANGED_PT中，保存时，会自动保存全部数据
					var changed_pt_name = $('body').data('CHANGED_PT');
					if(changed_pt_name && changed_pt_name.indexOf('ContainerExp_dg1553144257690Widget') > -1) {
						ContainerExp_dg1553144257690Widget.setAllRowEdited();
					}
					var json = ContainerExp_dg1553144257690Widget.parseEditedData();
					$('input[name="dg1553144257690ListJson"]').remove();
					$('input[name="dgLists[\'dg1553144257690\']"]').remove();
					$('input[name="dg1553144257690ModelCode"]').remove();
					$('<input type="hidden" name="dgLists[\'dg1553144257690\']">').val(json).appendTo($('#MESBasic_container_container_newContainerEdit_form'));
					$('<input type="hidden" name="dg1553144257690ModelCode">').val('MESBasic_1_container_ContainerExp').appendTo($('#MESBasic_container_container_newContainerEdit_form'));
					//兼容旧版本提交函数
					$('<input type="hidden" name="dg1553144257690ListJson">').val(json).appendTo($('#MESBasic_container_container_newContainerEdit_form'));
				}
				function DT_ContainerExp_dg1553144257690_deldatagrid(){
					var deleteRows = ContainerExp_dg1553144257690Widget.deleteRows();
					if(!deleteRows || deleteRows.length == 0) {
						CUI.Dialog.alert("${getHtmlText('foundation.message.choicedel')}");
						return false;
					}
					var delproperty = "'id','version','headId.id'";
					delproperty= delproperty.split(",")[0].substring(1).replace("'","");
					$.each(deleteRows, function(index, deleteRow){
						var tepID = eval("deleteRow."+delproperty);
						if(tepID==null || tepID == undefined || tepID == '') {
							return true;
						}
						if($("#dg1553144257690DeletedIds").length>0){
							$("#dg1553144257690DeletedIds")[0].value+=","+tepID;
						}else{
							CUI('<input type="hidden" id="dg1553144257690DeletedIds" name="dgDeletedIds[\'dg1553144257690\']" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
						}
						//兼容旧版本提交函数
						CUI('<input type="hidden" name="dg1553144257690DeletedIds['+CUI('input[name^="dg1553144257690DeletedIds"]').length+']'+'" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
					});
					return deleteRows;
				}
				function DT_ContainerExp_dg1553144257690_delTreeNodes(){
					var deleteRows = ContainerExp_dg1553144257690Widget._DT.removeTreeNode();
					if(!deleteRows || deleteRows.length == 0) {
						return false;
					}
					var delproperty = "'id','version','headId.id'";
					delproperty= delproperty.split(",")[0].substring(1).replace("'","");
					$.each(deleteRows, function(index, deleteRow){
						var tepID = eval("deleteRow."+delproperty);
						if(tepID==null || tepID == undefined || tepID == '') {
							return true;
						}
						if($("#dg1553144257690DeletedIds").length>0){
							$("#dg1553144257690DeletedIds")[0].value+=","+tepID;
						}else{
							CUI('<input type="hidden" id="dg1553144257690DeletedIds" name="dgDeletedIds[\'dg1553144257690\']" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
						}
						//兼容旧版本提交函数
						CUI('<input type="hidden" name="dg1553144257690DeletedIds['+CUI('input[name^="dg1553144257690DeletedIds"]').length+']'+'" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
					});
				}
				$(function($){
					var datagrids = $('body').data('MESBasic_container_container_newContainerEdit_datagrids');
					if(!datagrids) {
						datagrids = [];
					}
					for(var i=0;i<4;i++) {
						if(!datagrids[i]) {
							datagrids[i] = [];
						}
					}
					if(datagrids[1].length>0) {
						for(var i=0;i<datagrids[1].length;i++) {
							if(datagrids[1][i] == 'ContainerExp_dg1553144257690') {
								break;
							}
							if(i==datagrids[1].length-1) {
								datagrids[1][datagrids[1].length] = 'ContainerExp_dg1553144257690';
							}
						}
					} else {
						datagrids[1][datagrids[1].length] = 'ContainerExp_dg1553144257690';
					}
					$('body').data('MESBasic_container_container_newContainerEdit_datagrids', datagrids);
				});
				
				var ContainerExp_dg1553144257690_importDialog = null;
				function ContainerExp_dg1553144257690_showImportDialog(){
					try{
						if(ContainerExp_dg1553144257690_importDialog!=null&&ContainerExp_dg1553144257690_importDialog.isShow==1){
							return false;
						}
						var url = "/MESBasic/container/container/initImport.action?datagridCode=MESBasic_1_container_newContainerEditdg1553144257690&tid=${id!}&datagridName=dg1553144257690";
							<#if canImportExcel>
								var buttonCode="MESBasic_1_container_newContainerEditdg1553144257690_BUTTON_dgImport";
								url+="&buttonCode="+buttonCode;
							</#if>
						ContainerExp_dg1553144257690_importDialog = new CUI.Dialog({
							title: "${getHtmlText('common.button.import')}",
							url:url,
							modal:true,
							description:'',
							height:'330',
							width: '420',
							dragable:true,
							buttons:[{id:"import",name:"${getHtmlText('common.button.import')}",handler:function(){var dg = eval("ContainerExp_dg1553144257690"+"Widget");if(dg && dg.checkEdited && dg.checkEdited()){CUI.Dialog.alert("${getHtmlText('ec.view.unsavedgdata')}");}else{foundation.importExcel.submitImportForm();}}},{name:"${getHtmlText('common.button.cancel')}",id:"close",handler:function(){setTimeout(function(){$('#importResponse').remove();ContainerExp_dg1553144257690_importDialog.close();}, 200);}},{name:"${getHtmlText('common.button.Confirm')}",id:"ok",display:'hidden',handler:function(){setTimeout(function(){$('#importResponse').remove();ContainerExp_dg1553144257690_importDialog.close();}, 200);}},{name:"${getHtmlText('common.button.back')}",id:"tback",display:'hidden',handler:function(){tback();}}],
							beforeCloseEvent:function(){$('#importResponse').remove();}
						});
						ContainerExp_dg1553144257690_importDialog.show();
					}catch(e){}
				}	
				
				function ContainerExp_dg1553144257690_downLoadFile(){
					var url = "/MESBasic/container/container/downLoad.action?datagridCode=MESBasic_1_container_newContainerEditdg1553144257690&templateRelatedModelCode=MESBasic_1_container_newContainerEditdg1553144257690&downloadType=template&fileName=dg1553144257690";
					window.open(url,"","");
				}
				function dg1553144257690RenderOverEvent(){
					var widget = ContainerExp_dg1553144257690Widget;
if (widget.getRowLength() == 0) {
	for(var key in columnMap){
		var value = columnMap[key];
		var name = '';
		var code = '';
		var representCode = '';
		switch(columnMap[key]){
			case 'radius': 
				name = key;
				code = columnMap[key];
				representCode = 'R';
				break;
			case 'tankHeight': 
				name = key;
				code = columnMap[key];
				representCode = 'H';
				break;
			case 'level': 
				name = key;
				code = columnMap[key];
				representCode = 'L';
				break;
			case 'density': 
				name = key;
				code = columnMap[key];
				representCode = 'D';
				break;
			case 'pressure': 
				name = key;
				code = columnMap[key];
				representCode = 'P';
				break;
		}
		widget.addRow();
		var currentRow = widget.getRowLength() - 1;
		widget.setCellValue(currentRow, 'name', name);
		widget.setCellValue(currentRow, 'code', code);
		widget.setCellValue(currentRow, 'representCode', representCode);
		// 设置字段名称只读
		//widget.setCellProperty(currentRow, "name", 'readonly', 'true');
		// 设置对应值只读
		//widget.setCellProperty(currentRow, "representCode", 'readonly', 'true');
	}
} 

// 绑定单元格点击事件
//bindClickEvent(event);
				}
				function dg1553144257690PageInitMethod(nTabIndex){
					MESBasic.container.container.newContainerEdit.initSize(nTabIndex);
					$('#ContainerExp_dg1553144257690 .paginatorbar-operatebar').hide();
				}
			</script>
			
			
			</div>
		</div>
			<div class="clearfix pd_bottom">
				<div class="cui-elements pd-top">

<div class="edit-panes-s" >
</div>				</div>
				<div class="edit-datatable">	

<#assign colAdmFlag=checkUserPermisition('ec_ptManage_list_view')>

<#assign colAdmFlag=checkUserPermisition('ec_ptManage_list_view')>
				
					<#if  refId?? && (refId > 0)>
						<#assign nodeExpanded = true>
					<#else>
						<#assign nodeExpanded = false>
					</#if>
					
				<#if newObj?? && !newObj && !(refId?? && (refId > 0))>
				<#assign exportExcel=false>
				<#else>
				<#assign exportExcel=false>
				</#if>
			<#if false>
				<#assign routeFlag = "2">
			<#else>
				<#if false && isIE>
						<#assign routeFlag = "1">
				<#else>
						<#assign routeFlag = "0">
				</#if>
			</#if>

			<#assign cpObjHideKey = '' >
			<#assign cpvmInfo = ''>
			
			<#if  refId?? && (refId > 0)>
				<#assign dUrl="/MESBasic/container/container/data-dg1555312971656.action?container.id=${refId!-1}&refId=${refId!-1}&datagridCode=MESBasic_1_container_newContainerEditdg1555312971656">
			<#else>
				<#assign dUrl="/MESBasic/container/container/data-dg1555312971656.action?container.id=${(container.id)!-1}&datagridCode=MESBasic_1_container_newContainerEditdg1555312971656">
			</#if>
			<#assign firstLoad = true>
				
			<#if viewType?? && viewType != "readonly" && newObj?? && !newObj && !(refId?? && (refId > 0))>
				<#assign buttons="[]">
				<#assign canImportExcel=false>
			<#else>
				<#assign buttons="[]">
				<#assign canImportExcel=false>
			</#if>
				<#if cpvmInfo?? && cpvmInfo?length gt 0>
					<#assign cpvmInfo = cpvmInfo?substring(1)>
					<input type="hidden" id="dg_cp_info_FlowRecord_dg1555312971656" value="${cpvmInfo!}" />
				</#if>
			
			<input type="hidden" id="dg1555312971656_id" value="FlowRecord_dg1555312971656" />
			
			<input type="hidden" id="dg1555312971656_url" value="${dUrl}" />
			
			<#assign assModelDisplayName = getText('MESBasic.modelname.randon1555293134923')!>
			<#assign assModelDisplayName = assModelDisplayName + getText('ec.common.validate.colon') >
			<@exportexcel action="/MESBasic/container/container/data-dg1555312971656.action?operateType=export&datagridCode=MESBasic_1_container_newContainerEditdg1555312971656"  settingtext="" settingUrl="" prepareParams="" formId="" look="text" width=250 height=170 text="" exportPageChoose=0 dtPage="dgPage" prefix="FlowRecord_dg1555312971656" />
			<@datagrid colAdminFlag=colAdmFlag withoutConfigTable=true id="FlowRecord_dg1555312971656" viewType="${viewType}" renderOverEvent="dg1555312971656RenderOverEvent" route="${routeFlag}" formId="MESBasic_container_container_newContainerEdit_form" noPermissionKeys="containerId.name,businessType,action,liquidWeight,liquidVolume,gasWeight,gasVolume,startLevel,endLevel,levelDiff,productId.productName,startTime,endTime,source,sourceType,destination,desType,routineId.name,flowRecordId" modelCode="MESBasic_1_container_FlowRecord" dataUrl="${dUrl}" postData="&dgPage.pageSize=65536" dataGridName="dg1555312971656" dtPage="dgPage"  hidekeyPrefix="dg1555312971656" hidekey="['id','version','containerId.id','containerId.name','productId.id','productId.productName','routineId.id','routineId.name'${cpObjHideKey!''}]" transMethod="post" paginator=false editable=false  buttons="${buttons}" noPadding=true isEdit=true tabViewIndex=2 pageInitMethod="dg1555312971656PageInitMethod"  defaultNodeExpanded=nodeExpanded  cannotAddNewRow=false cannotDeleteRow=true assModelDisplayName=assModelDisplayName  activexButton="" exportExcel=exportExcel addNewRow=true   canInsertRow=false  insertRowAble=true firstLoad=firstLoad  copyRow=false  copyColumn=false  ptRealTimeLoad=0 >		
							<#assign containerId_name_displayDefaultType=''>
								<#assign containerId_name_defaultValue=''>
										<#assign containerId_name_defaultValue=''>
																	<#if (containerId_name_defaultValue!)?string=="currentUser">
								<#assign containerId_name_defaultValue='${staffJson!}'>
							<#elseif (containerId_name_defaultValue!)?string=="currentPost">
								<#assign containerId_name_defaultValue='${postJson!}'>
							<#elseif (containerId_name_defaultValue!)?string=="currentDepart">
								<#assign containerId_name_defaultValue='${deptJson!}'>
							<#elseif (containerId_name_defaultValue!)?string=="currentComp">
								<#assign containerId_name_defaultValue='${compJson!}'>
							</#if>

									<@datacolumn key="containerId.name"        showFormat="TEXT" defaultValue="${(containerId_name_defaultValue!)?string}" defaultDisplay="${(containerId_name_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false   selectCompName="MESBasic.container.container.newContainerEdit"  textalign="left"  viewUrl="/MESBasic/container/container/containerRef.action" viewCode="MESBasic_1_container_containerRef" mneenable=false crossCompany=false viewTitle="${getText('MESBasic.viewtitle.radion1415323292765')}"  label="${getText('MESBasic.propertydisplayName.radion141526839345211')}" width=100 showFormatFunc=""  />
							<#assign businessType_displayDefaultType=''>
								<#assign businessType_defaultValue=''>
										<#assign businessType_defaultValue=''>
										 
									<@datacolumn key="businessType"        showFormat="TEXT" defaultValue="${(businessType_defaultValue!)?string}" defaultDisplay="${(businessType_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293349287')}" width=100 showFormatFunc=""  />
							<#assign action_displayDefaultType=''>
								<#assign action_defaultValue=''>
										<#assign action_defaultValue=''>
										 
									<@datacolumn key="action"        showFormat="TEXT" defaultValue="${(action_defaultValue!)?string}" defaultDisplay="${(action_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293390953')}" width=100 showFormatFunc=""  />
							<#assign liquidWeight_displayDefaultType=''>
								<#assign liquidWeight_defaultValue=''>
										<#assign liquidWeight_defaultValue=''>
										 
									<@datacolumn key="liquidWeight"     isCount=true   showFormat="TEXT" defaultValue="${(liquidWeight_defaultValue!)?string}" defaultDisplay="${(liquidWeight_displayDefaultType!)?string}" decimal="3" editable=false type="DECIMAL" showType="decimal" notnull=false     textalign="right"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293194490')}" width=100 showFormatFunc=""  />
							<#assign liquidVolume_displayDefaultType=''>
								<#assign liquidVolume_defaultValue=''>
										<#assign liquidVolume_defaultValue=''>
										 
									<@datacolumn key="liquidVolume"     isCount=true   showFormat="TEXT" defaultValue="${(liquidVolume_defaultValue!)?string}" defaultDisplay="${(liquidVolume_displayDefaultType!)?string}" decimal="3" editable=false type="DECIMAL" showType="decimal" notnull=false     textalign="right"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293206265')}" width=100 showFormatFunc=""  />
							<#assign gasWeight_displayDefaultType=''>
								<#assign gasWeight_defaultValue=''>
										<#assign gasWeight_defaultValue=''>
										 
									<@datacolumn key="gasWeight"     isCount=true   showFormat="TEXT" defaultValue="${(gasWeight_defaultValue!)?string}" defaultDisplay="${(gasWeight_displayDefaultType!)?string}" decimal="3" editable=false type="DECIMAL" showType="decimal" notnull=false     textalign="right"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293233181')}" width=100 showFormatFunc=""  />
							<#assign gasVolume_displayDefaultType=''>
								<#assign gasVolume_defaultValue=''>
										<#assign gasVolume_defaultValue=''>
										 
									<@datacolumn key="gasVolume"     isCount=true   showFormat="TEXT" defaultValue="${(gasVolume_defaultValue!)?string}" defaultDisplay="${(gasVolume_displayDefaultType!)?string}" decimal="3" editable=false type="DECIMAL" showType="decimal" notnull=false     textalign="right"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293260505')}" width=100 showFormatFunc=""  />
							<#assign startLevel_displayDefaultType=''>
								<#assign startLevel_defaultValue=''>
										<#assign startLevel_defaultValue=''>
										 
									<@datacolumn key="startLevel"        showFormat="TEXT" defaultValue="${(startLevel_defaultValue!)?string}" defaultDisplay="${(startLevel_displayDefaultType!)?string}" decimal="3" editable=false type="DECIMAL" showType="decimal" notnull=false     textalign="right"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293181589')}" width=100 showFormatFunc=""  />
							<#assign endLevel_displayDefaultType=''>
								<#assign endLevel_defaultValue=''>
										<#assign endLevel_defaultValue=''>
										 
									<@datacolumn key="endLevel"        showFormat="TEXT" defaultValue="${(endLevel_defaultValue!)?string}" defaultDisplay="${(endLevel_displayDefaultType!)?string}" decimal="3" editable=false type="DECIMAL" showType="decimal" notnull=false     textalign="right"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293218148')}" width=100 showFormatFunc=""  />
							<#assign levelDiff_displayDefaultType=''>
								<#assign levelDiff_defaultValue=''>
										<#assign levelDiff_defaultValue=''>
										 
									<@datacolumn key="levelDiff"        showFormat="TEXT" defaultValue="${(levelDiff_defaultValue!)?string}" defaultDisplay="${(levelDiff_displayDefaultType!)?string}" decimal="3" editable=false type="DECIMAL" showType="decimal" notnull=false     textalign="right"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293248327')}" width=100 showFormatFunc=""  />
							<#assign productId_productName_displayDefaultType=''>
								<#assign productId_productName_defaultValue=''>
										<#assign productId_productName_defaultValue=''>
																	<#if (productId_productName_defaultValue!)?string=="currentUser">
								<#assign productId_productName_defaultValue='${staffJson!}'>
							<#elseif (productId_productName_defaultValue!)?string=="currentPost">
								<#assign productId_productName_defaultValue='${postJson!}'>
							<#elseif (productId_productName_defaultValue!)?string=="currentDepart">
								<#assign productId_productName_defaultValue='${deptJson!}'>
							<#elseif (productId_productName_defaultValue!)?string=="currentComp">
								<#assign productId_productName_defaultValue='${compJson!}'>
							</#if>

									<@datacolumn key="productId.productName"        showFormat="TEXT" defaultValue="${(productId_productName_defaultValue!)?string}" defaultDisplay="${(productId_productName_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false   selectCompName="MESBasic.container.container.newContainerEdit"  textalign="left"  viewUrl="/MESBasic/product/product/productRefNew.action" viewCode="MESBasic_1_product_productRefNew" mneenable=false crossCompany=false viewTitle="${getText('MESBasic.viewtitle.randon1475137145215')}"  label="${getText('MESBasic.propertydisplayName.radion141577274073711')}" width=100 showFormatFunc=""  />
							<#assign startTime_displayDefaultType=''>
								<#assign startTime_defaultValue=''>
										<#assign startTime_defaultValue=''>
										 								<#if (startTime_defaultValue)?? &&(startTime_defaultValue)?has_content>
									<#assign startTime_defaultValue  = getDefaultDateTime(startTime_defaultValue!)?datetime>
								</#if>

									<@datacolumn key="startTime"        showFormat="YMD_HMS" defaultValue="${(startTime_defaultValue!)?string}" defaultDisplay="${(startTime_displayDefaultType!)?string}" decimal="" editable=false type="datetime" showType="datetime" notnull=false     textalign="center"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293161365')}" width=142 showFormatFunc=""  />
							<#assign endTime_displayDefaultType=''>
								<#assign endTime_defaultValue=''>
										<#assign endTime_defaultValue=''>
										 								<#if (endTime_defaultValue)?? &&(endTime_defaultValue)?has_content>
									<#assign endTime_defaultValue  = getDefaultDateTime(endTime_defaultValue!)?datetime>
								</#if>

									<@datacolumn key="endTime"        showFormat="YMD_HMS" defaultValue="${(endTime_defaultValue!)?string}" defaultDisplay="${(endTime_displayDefaultType!)?string}" decimal="" editable=false type="datetime" showType="datetime" notnull=false     textalign="center"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293170857')}" width=142 showFormatFunc=""  />
							<#assign source_displayDefaultType=''>
								<#assign source_defaultValue=''>
										<#assign source_defaultValue=''>
										 
									<@datacolumn key="source"        showFormat="TEXT" defaultValue="${(source_defaultValue!)?string}" defaultDisplay="${(source_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293376259')}" width=100 showFormatFunc=""  />
							<#assign sourceType_displayDefaultType=''>
								<#assign sourceType_defaultValue=''>
										<#assign sourceType_defaultValue=''>
										 
									<@datacolumn key="sourceType"        showFormat="TEXT" defaultValue="${(sourceType_defaultValue!)?string}" defaultDisplay="${(sourceType_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293383468')}" width=100 showFormatFunc=""  />
							<#assign destination_displayDefaultType=''>
								<#assign destination_defaultValue=''>
										<#assign destination_defaultValue=''>
										 
									<@datacolumn key="destination"        showFormat="TEXT" defaultValue="${(destination_defaultValue!)?string}" defaultDisplay="${(destination_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293360137')}" width=100 showFormatFunc=""  />
							<#assign desType_displayDefaultType=''>
								<#assign desType_defaultValue=''>
										<#assign desType_defaultValue=''>
										 
									<@datacolumn key="desType"        showFormat="TEXT" defaultValue="${(desType_defaultValue!)?string}" defaultDisplay="${(desType_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293367908')}" width=100 showFormatFunc=""  />
							<#assign routineId_name_displayDefaultType=''>
								<#assign routineId_name_defaultValue=''>
										<#assign routineId_name_defaultValue=''>
																	<#if (routineId_name_defaultValue!)?string=="currentUser">
								<#assign routineId_name_defaultValue='${staffJson!}'>
							<#elseif (routineId_name_defaultValue!)?string=="currentPost">
								<#assign routineId_name_defaultValue='${postJson!}'>
							<#elseif (routineId_name_defaultValue!)?string=="currentDepart">
								<#assign routineId_name_defaultValue='${deptJson!}'>
							<#elseif (routineId_name_defaultValue!)?string=="currentComp">
								<#assign routineId_name_defaultValue='${compJson!}'>
							</#if>

									<@datacolumn key="routineId.name"        showFormat="TEXT" defaultValue="${(routineId_name_defaultValue!)?string}" defaultDisplay="${(routineId_name_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false   selectCompName="MESBasic.container.container.newContainerEdit"  textalign="left"  viewUrl="/MESBasic/routine/routine/routineRef.action" viewCode="MESBasic_1_routine_routineRef" mneenable=false crossCompany=false viewTitle="${getText('MESBasic.viewtitle.radion1415338782604')}"  label="${getText('MESBasic.propertydisplayName.radion141533659780133')}" width=100 showFormatFunc=""  />
							<#assign flowRecordId_displayDefaultType=''>
								<#assign flowRecordId_defaultValue=''>
										<#assign flowRecordId_defaultValue=''>
										 
									<@datacolumn key="flowRecordId"        showFormat="TEXT" defaultValue="${(flowRecordId_defaultValue!)?string}" defaultDisplay="${(flowRecordId_displayDefaultType!)?string}" decimal="" editable=false type="long" showType="long" notnull=false     textalign="center" hiddenCol=true viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293271767')}" width=100 showFormatFunc=""  />
			
			</@datagrid>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
			
			<script type="text/javascript">
				function FlowRecord_dg1555312971656_check_datagridvalid(){
					//
					var errorObj =FlowRecord_dg1555312971656Widget._DT.testData();
					var errorContent='';
					if(errorObj!=null){
					  for(var i=0;i<errorObj.length;i++){
						var obj1=errorObj[i];
						if(obj1.errorType=='date'){
						  errorContent+=obj1.label+'必须为日期类型！';
						  break;
						}else if(obj1.errorType=='integer'){
						  errorContent+=obj1.label+'必须为数字类型！';
						  break;
						}else if(obj1.errorType=='decimal'){
						  errorContent+=obj1.label+'必须为整数类型！';
						  break;
						}else if(obj1.errorType=='notnull'){
						   errorContent+=obj1.label+'不能为空';
						   break;
						}else if(obj1.errorType=='toolong'){
						   errorContent+=obj1.label+'字段长度不能超过'+obj1.length+'字节(注：英文字母占1个字节，中文字占3个字节)！';
						   break;
						}
					  }
					  if(errorContent!=""){
						hasErr = true;
					  }
					  if(hasErr){
						EditDialogErrorBarWidget.show(errorContent);
						return false;
					  }
					}
					return true;
				}
				
				function savedg1555312971656DataGrid(){
					<#if  refId?? && (refId gt 0)>
					FlowRecord_dg1555312971656Widget.setAllRowEdited();
					</#if>
					// 针对需要全部更新的PT，把pt Id存到body的CHANGED_PT中，保存时，会自动保存全部数据
					var changed_pt_name = $('body').data('CHANGED_PT');
					if(changed_pt_name && changed_pt_name.indexOf('FlowRecord_dg1555312971656Widget') > -1) {
						FlowRecord_dg1555312971656Widget.setAllRowEdited();
					}
					var json = FlowRecord_dg1555312971656Widget.parseEditedData();
					$('input[name="dg1555312971656ListJson"]').remove();
					$('input[name="dgLists[\'dg1555312971656\']"]').remove();
					$('input[name="dg1555312971656ModelCode"]').remove();
					$('<input type="hidden" name="dgLists[\'dg1555312971656\']">').val(json).appendTo($('#MESBasic_container_container_newContainerEdit_form'));
					$('<input type="hidden" name="dg1555312971656ModelCode">').val('MESBasic_1_container_FlowRecord').appendTo($('#MESBasic_container_container_newContainerEdit_form'));
					//兼容旧版本提交函数
					$('<input type="hidden" name="dg1555312971656ListJson">').val(json).appendTo($('#MESBasic_container_container_newContainerEdit_form'));
				}
				function DT_FlowRecord_dg1555312971656_deldatagrid(){
					var deleteRows = FlowRecord_dg1555312971656Widget.deleteRows();
					if(!deleteRows || deleteRows.length == 0) {
						CUI.Dialog.alert("${getHtmlText('foundation.message.choicedel')}");
						return false;
					}
					var delproperty = "'id','version','productId.id','routineId.id','containerId.id'";
					delproperty= delproperty.split(",")[0].substring(1).replace("'","");
					$.each(deleteRows, function(index, deleteRow){
						var tepID = eval("deleteRow."+delproperty);
						if(tepID==null || tepID == undefined || tepID == '') {
							return true;
						}
						if($("#dg1555312971656DeletedIds").length>0){
							$("#dg1555312971656DeletedIds")[0].value+=","+tepID;
						}else{
							CUI('<input type="hidden" id="dg1555312971656DeletedIds" name="dgDeletedIds[\'dg1555312971656\']" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
						}
						//兼容旧版本提交函数
						CUI('<input type="hidden" name="dg1555312971656DeletedIds['+CUI('input[name^="dg1555312971656DeletedIds"]').length+']'+'" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
					});
					return deleteRows;
				}
				function DT_FlowRecord_dg1555312971656_delTreeNodes(){
					var deleteRows = FlowRecord_dg1555312971656Widget._DT.removeTreeNode();
					if(!deleteRows || deleteRows.length == 0) {
						return false;
					}
					var delproperty = "'id','version','productId.id','routineId.id','containerId.id'";
					delproperty= delproperty.split(",")[0].substring(1).replace("'","");
					$.each(deleteRows, function(index, deleteRow){
						var tepID = eval("deleteRow."+delproperty);
						if(tepID==null || tepID == undefined || tepID == '') {
							return true;
						}
						if($("#dg1555312971656DeletedIds").length>0){
							$("#dg1555312971656DeletedIds")[0].value+=","+tepID;
						}else{
							CUI('<input type="hidden" id="dg1555312971656DeletedIds" name="dgDeletedIds[\'dg1555312971656\']" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
						}
						//兼容旧版本提交函数
						CUI('<input type="hidden" name="dg1555312971656DeletedIds['+CUI('input[name^="dg1555312971656DeletedIds"]').length+']'+'" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
					});
				}
				$(function($){
					var datagrids = $('body').data('MESBasic_container_container_newContainerEdit_datagrids');
					if(!datagrids) {
						datagrids = [];
					}
					for(var i=0;i<4;i++) {
						if(!datagrids[i]) {
							datagrids[i] = [];
						}
					}
					if(datagrids[2].length>0) {
						for(var i=0;i<datagrids[2].length;i++) {
							if(datagrids[2][i] == 'FlowRecord_dg1555312971656') {
								break;
							}
							if(i==datagrids[2].length-1) {
								datagrids[2][datagrids[2].length] = 'FlowRecord_dg1555312971656';
							}
						}
					} else {
						datagrids[2][datagrids[2].length] = 'FlowRecord_dg1555312971656';
					}
					$('body').data('MESBasic_container_container_newContainerEdit_datagrids', datagrids);
				});
				
				var FlowRecord_dg1555312971656_importDialog = null;
				function FlowRecord_dg1555312971656_showImportDialog(){
					try{
						if(FlowRecord_dg1555312971656_importDialog!=null&&FlowRecord_dg1555312971656_importDialog.isShow==1){
							return false;
						}
						var url = "/MESBasic/container/container/initImport.action?datagridCode=MESBasic_1_container_newContainerEditdg1555312971656&tid=${id!}&datagridName=dg1555312971656";
							<#if canImportExcel>
								var buttonCode="MESBasic_1_container_newContainerEditdg1555312971656_BUTTON_dgImport";
								url+="&buttonCode="+buttonCode;
							</#if>
						FlowRecord_dg1555312971656_importDialog = new CUI.Dialog({
							title: "${getHtmlText('common.button.import')}",
							url:url,
							modal:true,
							description:'',
							height:'330',
							width: '420',
							dragable:true,
							buttons:[{id:"import",name:"${getHtmlText('common.button.import')}",handler:function(){var dg = eval("FlowRecord_dg1555312971656"+"Widget");if(dg && dg.checkEdited && dg.checkEdited()){CUI.Dialog.alert("${getHtmlText('ec.view.unsavedgdata')}");}else{foundation.importExcel.submitImportForm();}}},{name:"${getHtmlText('common.button.cancel')}",id:"close",handler:function(){setTimeout(function(){$('#importResponse').remove();FlowRecord_dg1555312971656_importDialog.close();}, 200);}},{name:"${getHtmlText('common.button.Confirm')}",id:"ok",display:'hidden',handler:function(){setTimeout(function(){$('#importResponse').remove();FlowRecord_dg1555312971656_importDialog.close();}, 200);}},{name:"${getHtmlText('common.button.back')}",id:"tback",display:'hidden',handler:function(){tback();}}],
							beforeCloseEvent:function(){$('#importResponse').remove();}
						});
						FlowRecord_dg1555312971656_importDialog.show();
					}catch(e){}
				}	
				
				function FlowRecord_dg1555312971656_downLoadFile(){
					var url = "/MESBasic/container/container/downLoad.action?datagridCode=MESBasic_1_container_newContainerEditdg1555312971656&templateRelatedModelCode=MESBasic_1_container_newContainerEditdg1555312971656&downloadType=template&fileName=dg1555312971656";
					window.open(url,"","");
				}
				function dg1555312971656RenderOverEvent(){
				}
				function dg1555312971656PageInitMethod(nTabIndex){
					MESBasic.container.container.newContainerEdit.initSize(nTabIndex);
				}
			</script>
			
			
			</div>
		</div>
			<div class="clearfix pd_bottom">
				<div class="cui-elements pd-top">

<div class="edit-panes-s" >
</div>				</div>
				<div class="edit-datatable">	

<#assign colAdmFlag=checkUserPermisition('ec_ptManage_list_view')>

<#assign colAdmFlag=checkUserPermisition('ec_ptManage_list_view')>
				
					<#if  refId?? && (refId > 0)>
						<#assign nodeExpanded = true>
					<#else>
						<#assign nodeExpanded = false>
					</#if>
					
				<#if newObj?? && !newObj && !(refId?? && (refId > 0))>
				<#assign exportExcel=false>
				<#else>
				<#assign exportExcel=false>
				</#if>
			<#if false>
				<#assign routeFlag = "2">
			<#else>
				<#if false && isIE>
						<#assign routeFlag = "1">
				<#else>
						<#assign routeFlag = "0">
				</#if>
			</#if>

			<#assign cpObjHideKey = '' >
			<#assign cpvmInfo = ''>
			
			<#if  refId?? && (refId > 0)>
				<#assign dUrl="/MESBasic/container/container/data-dg1555312985524.action?container.id=${refId!-1}&refId=${refId!-1}&datagridCode=MESBasic_1_container_newContainerEditdg1555312985524">
			<#else>
				<#assign dUrl="/MESBasic/container/container/data-dg1555312985524.action?container.id=${(container.id)!-1}&datagridCode=MESBasic_1_container_newContainerEditdg1555312985524">
			</#if>
			<#assign firstLoad = true>
				
			<#if viewType?? && viewType != "readonly" && newObj?? && !newObj && !(refId?? && (refId > 0))>
				<#assign buttons="[]">
				<#assign canImportExcel=false>
			<#else>
				<#assign buttons="[]">
				<#assign canImportExcel=false>
			</#if>
				<#if cpvmInfo?? && cpvmInfo?length gt 0>
					<#assign cpvmInfo = cpvmInfo?substring(1)>
					<input type="hidden" id="dg_cp_info_MaintainLog_dg1555312985524" value="${cpvmInfo!}" />
				</#if>
			
			<input type="hidden" id="dg1555312985524_id" value="MaintainLog_dg1555312985524" />
			
			<input type="hidden" id="dg1555312985524_url" value="${dUrl}" />
			
			<#assign assModelDisplayName = getText('MESBasic.modelname.randon1555293405102')!>
			<#assign assModelDisplayName = assModelDisplayName + getText('ec.common.validate.colon') >
			<@exportexcel action="/MESBasic/container/container/data-dg1555312985524.action?operateType=export&datagridCode=MESBasic_1_container_newContainerEditdg1555312985524"  settingtext="" settingUrl="" prepareParams="" formId="" look="text" width=250 height=170 text="" exportPageChoose=0 dtPage="dgPage" prefix="MaintainLog_dg1555312985524" />
			<@datagrid colAdminFlag=colAdmFlag withoutConfigTable=true id="MaintainLog_dg1555312985524" viewType="${viewType}" renderOverEvent="dg1555312985524RenderOverEvent" route="${routeFlag}" formId="MESBasic_container_container_newContainerEdit_form" noPermissionKeys="logType,jsonData,operation,maintainStaff,maintainDept,maintainTime,remark" modelCode="MESBasic_1_container_MaintainLog" dataUrl="${dUrl}" postData="&dgPage.pageSize=65536" dataGridName="dg1555312985524" dtPage="dgPage"  hidekeyPrefix="dg1555312985524" hidekey="['id','version'${cpObjHideKey!''}]" transMethod="post" paginator=false editable=false  buttons="${buttons}" noPadding=true isEdit=true tabViewIndex=3 pageInitMethod="dg1555312985524PageInitMethod"  defaultNodeExpanded=nodeExpanded  cannotAddNewRow=false cannotDeleteRow=true assModelDisplayName=assModelDisplayName  activexButton="" exportExcel=exportExcel addNewRow=true   canInsertRow=false  insertRowAble=true firstLoad=firstLoad  copyRow=false  copyColumn=false  ptRealTimeLoad=0 >		
							<#assign logType_displayDefaultType=''>
								<#assign logType_defaultValue=''>
										<#assign logType_defaultValue=''>
										 
									<@datacolumn key="logType"        showFormat="TEXT" defaultValue="${(logType_defaultValue!)?string}" defaultDisplay="${(logType_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555307021178')}" width=100 showFormatFunc=""  />
							<#assign jsonData_displayDefaultType=''>
								<#assign jsonData_defaultValue=''>
										<#assign jsonData_defaultValue=''>
										 
									<@datacolumn key="jsonData"  popView=true      showFormat="TEXT" defaultValue="${(jsonData_defaultValue!)?string}" defaultDisplay="${(jsonData_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555307010704')}" width=100 showFormatFunc=""  />
							<#assign operation_displayDefaultType=''>
								<#assign operation_defaultValue=''>
										<#assign operation_defaultValue=''>
										 
									<@datacolumn key="operation"        showFormat="TEXT" defaultValue="${(operation_defaultValue!)?string}" defaultDisplay="${(operation_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555307067818')}" width=100 showFormatFunc=""  />
							<#assign maintainStaff_displayDefaultType=''>
								<#assign maintainStaff_defaultValue=''>
										<#assign maintainStaff_defaultValue=''>
										 
									<@datacolumn key="maintainStaff"        showFormat="TEXT" defaultValue="${(maintainStaff_defaultValue!)?string}" defaultDisplay="${(maintainStaff_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555307058849')}" width=100 showFormatFunc=""  />
							<#assign maintainDept_displayDefaultType=''>
								<#assign maintainDept_defaultValue=''>
										<#assign maintainDept_defaultValue=''>
										 
									<@datacolumn key="maintainDept"        showFormat="TEXT" defaultValue="${(maintainDept_defaultValue!)?string}" defaultDisplay="${(maintainDept_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555307050870')}" width=100 showFormatFunc=""  />
							<#assign maintainTime_displayDefaultType=''>
								<#assign maintainTime_defaultValue=''>
										<#assign maintainTime_defaultValue=''>
										 								<#if (maintainTime_defaultValue)?? &&(maintainTime_defaultValue)?has_content>
									<#assign maintainTime_defaultValue  = getDefaultDateTime(maintainTime_defaultValue!)?datetime>
								</#if>

									<@datacolumn key="maintainTime"        showFormat="YMD_HMS" defaultValue="${(maintainTime_defaultValue!)?string}" defaultDisplay="${(maintainTime_displayDefaultType!)?string}" decimal="" editable=false type="datetime" showType="datetime" notnull=false     textalign="center"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555293426013')}" width=142 showFormatFunc=""  />
							<#assign remark_displayDefaultType=''>
								<#assign remark_defaultValue=''>
										<#assign remark_defaultValue=''>
										 
									<@datacolumn key="remark"        showFormat="TEXT" defaultValue="${(remark_defaultValue!)?string}" defaultDisplay="${(remark_displayDefaultType!)?string}" decimal="" editable=false type="textfield" showType="textfield" notnull=false     textalign="left"  viewUrl="" viewCode="" mneenable=false crossCompany=false viewTitle="${getText('')}"  label="${getText('MESBasic.propertydisplayName.randon1555307077153')}" width=100 showFormatFunc=""  />
			
			</@datagrid>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
				<script type="text/javascript">
					;
					//datagrid自定义参数方法
				</script>
			
			<script type="text/javascript">
				function MaintainLog_dg1555312985524_check_datagridvalid(){
					//
					var errorObj =MaintainLog_dg1555312985524Widget._DT.testData();
					var errorContent='';
					if(errorObj!=null){
					  for(var i=0;i<errorObj.length;i++){
						var obj1=errorObj[i];
						if(obj1.errorType=='date'){
						  errorContent+=obj1.label+'必须为日期类型！';
						  break;
						}else if(obj1.errorType=='integer'){
						  errorContent+=obj1.label+'必须为数字类型！';
						  break;
						}else if(obj1.errorType=='decimal'){
						  errorContent+=obj1.label+'必须为整数类型！';
						  break;
						}else if(obj1.errorType=='notnull'){
						   errorContent+=obj1.label+'不能为空';
						   break;
						}else if(obj1.errorType=='toolong'){
						   errorContent+=obj1.label+'字段长度不能超过'+obj1.length+'字节(注：英文字母占1个字节，中文字占3个字节)！';
						   break;
						}
					  }
					  if(errorContent!=""){
						hasErr = true;
					  }
					  if(hasErr){
						EditDialogErrorBarWidget.show(errorContent);
						return false;
					  }
					}
					return true;
				}
				
				function savedg1555312985524DataGrid(){
					<#if  refId?? && (refId gt 0)>
					MaintainLog_dg1555312985524Widget.setAllRowEdited();
					</#if>
					// 针对需要全部更新的PT，把pt Id存到body的CHANGED_PT中，保存时，会自动保存全部数据
					var changed_pt_name = $('body').data('CHANGED_PT');
					if(changed_pt_name && changed_pt_name.indexOf('MaintainLog_dg1555312985524Widget') > -1) {
						MaintainLog_dg1555312985524Widget.setAllRowEdited();
					}
					var json = MaintainLog_dg1555312985524Widget.parseEditedData();
					$('input[name="dg1555312985524ListJson"]').remove();
					$('input[name="dgLists[\'dg1555312985524\']"]').remove();
					$('input[name="dg1555312985524ModelCode"]').remove();
					$('<input type="hidden" name="dgLists[\'dg1555312985524\']">').val(json).appendTo($('#MESBasic_container_container_newContainerEdit_form'));
					$('<input type="hidden" name="dg1555312985524ModelCode">').val('MESBasic_1_container_MaintainLog').appendTo($('#MESBasic_container_container_newContainerEdit_form'));
					//兼容旧版本提交函数
					$('<input type="hidden" name="dg1555312985524ListJson">').val(json).appendTo($('#MESBasic_container_container_newContainerEdit_form'));
				}
				function DT_MaintainLog_dg1555312985524_deldatagrid(){
					var deleteRows = MaintainLog_dg1555312985524Widget.deleteRows();
					if(!deleteRows || deleteRows.length == 0) {
						CUI.Dialog.alert("${getHtmlText('foundation.message.choicedel')}");
						return false;
					}
					var delproperty = "'id','version','tank.id'";
					delproperty= delproperty.split(",")[0].substring(1).replace("'","");
					$.each(deleteRows, function(index, deleteRow){
						var tepID = eval("deleteRow."+delproperty);
						if(tepID==null || tepID == undefined || tepID == '') {
							return true;
						}
						if($("#dg1555312985524DeletedIds").length>0){
							$("#dg1555312985524DeletedIds")[0].value+=","+tepID;
						}else{
							CUI('<input type="hidden" id="dg1555312985524DeletedIds" name="dgDeletedIds[\'dg1555312985524\']" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
						}
						//兼容旧版本提交函数
						CUI('<input type="hidden" name="dg1555312985524DeletedIds['+CUI('input[name^="dg1555312985524DeletedIds"]').length+']'+'" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
					});
					return deleteRows;
				}
				function DT_MaintainLog_dg1555312985524_delTreeNodes(){
					var deleteRows = MaintainLog_dg1555312985524Widget._DT.removeTreeNode();
					if(!deleteRows || deleteRows.length == 0) {
						return false;
					}
					var delproperty = "'id','version','tank.id'";
					delproperty= delproperty.split(",")[0].substring(1).replace("'","");
					$.each(deleteRows, function(index, deleteRow){
						var tepID = eval("deleteRow."+delproperty);
						if(tepID==null || tepID == undefined || tepID == '') {
							return true;
						}
						if($("#dg1555312985524DeletedIds").length>0){
							$("#dg1555312985524DeletedIds")[0].value+=","+tepID;
						}else{
							CUI('<input type="hidden" id="dg1555312985524DeletedIds" name="dgDeletedIds[\'dg1555312985524\']" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
						}
						//兼容旧版本提交函数
						CUI('<input type="hidden" name="dg1555312985524DeletedIds['+CUI('input[name^="dg1555312985524DeletedIds"]').length+']'+'" value="'+tepID+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
					});
				}
				$(function($){
					var datagrids = $('body').data('MESBasic_container_container_newContainerEdit_datagrids');
					if(!datagrids) {
						datagrids = [];
					}
					for(var i=0;i<4;i++) {
						if(!datagrids[i]) {
							datagrids[i] = [];
						}
					}
					if(datagrids[3].length>0) {
						for(var i=0;i<datagrids[3].length;i++) {
							if(datagrids[3][i] == 'MaintainLog_dg1555312985524') {
								break;
							}
							if(i==datagrids[3].length-1) {
								datagrids[3][datagrids[3].length] = 'MaintainLog_dg1555312985524';
							}
						}
					} else {
						datagrids[3][datagrids[3].length] = 'MaintainLog_dg1555312985524';
					}
					$('body').data('MESBasic_container_container_newContainerEdit_datagrids', datagrids);
				});
				
				var MaintainLog_dg1555312985524_importDialog = null;
				function MaintainLog_dg1555312985524_showImportDialog(){
					try{
						if(MaintainLog_dg1555312985524_importDialog!=null&&MaintainLog_dg1555312985524_importDialog.isShow==1){
							return false;
						}
						var url = "/MESBasic/container/container/initImport.action?datagridCode=MESBasic_1_container_newContainerEditdg1555312985524&tid=${id!}&datagridName=dg1555312985524";
							<#if canImportExcel>
								var buttonCode="MESBasic_1_container_newContainerEditdg1555312985524_BUTTON_dgImport";
								url+="&buttonCode="+buttonCode;
							</#if>
						MaintainLog_dg1555312985524_importDialog = new CUI.Dialog({
							title: "${getHtmlText('common.button.import')}",
							url:url,
							modal:true,
							description:'',
							height:'330',
							width: '420',
							dragable:true,
							buttons:[{id:"import",name:"${getHtmlText('common.button.import')}",handler:function(){var dg = eval("MaintainLog_dg1555312985524"+"Widget");if(dg && dg.checkEdited && dg.checkEdited()){CUI.Dialog.alert("${getHtmlText('ec.view.unsavedgdata')}");}else{foundation.importExcel.submitImportForm();}}},{name:"${getHtmlText('common.button.cancel')}",id:"close",handler:function(){setTimeout(function(){$('#importResponse').remove();MaintainLog_dg1555312985524_importDialog.close();}, 200);}},{name:"${getHtmlText('common.button.Confirm')}",id:"ok",display:'hidden',handler:function(){setTimeout(function(){$('#importResponse').remove();MaintainLog_dg1555312985524_importDialog.close();}, 200);}},{name:"${getHtmlText('common.button.back')}",id:"tback",display:'hidden',handler:function(){tback();}}],
							beforeCloseEvent:function(){$('#importResponse').remove();}
						});
						MaintainLog_dg1555312985524_importDialog.show();
					}catch(e){}
				}	
				
				function MaintainLog_dg1555312985524_downLoadFile(){
					var url = "/MESBasic/container/container/downLoad.action?datagridCode=MESBasic_1_container_newContainerEditdg1555312985524&templateRelatedModelCode=MESBasic_1_container_newContainerEditdg1555312985524&downloadType=template&fileName=dg1555312985524";
					window.open(url,"","");
				}
				function dg1555312985524RenderOverEvent(){
				}
				function dg1555312985524PageInitMethod(nTabIndex){
					MESBasic.container.container.newContainerEdit.initSize(nTabIndex);
				}
			</script>
			
			
			</div>
		</div>
			</div>
		</div>
	</div>
			
			
</div>
		<#if businessCenterList??>
	     	<#list businessCenterList as l>
		<div style="float:none;width:auto;display:none;" class="edit-main grid-s5m0 col-main main-wrap" id="otherContentDiv_${l.relatingModel.code.replace('.','')}">
	     	</div>
	     	</#list>
     	</#if>
     	
		<div id="MESBasic_container_container_newContainerEdit_dealInfo" style="display: none;margin-top:5px;">
			<ul class="edit-tabs">
				<li id="fileUploadHead" <#if !(superEdit!false)>class="bar"</#if> onclick="MESBasic.container.container.newContainerEdit.showFileUpload('fileUpload')"><span class="icon_file"></span>${getText("foundation.upload.attachment")}</li>
			</ul>
			<div class="edit-panes wid-hei"  style="padding:0px;">
				<div id="fileUploadDiv" class="wid-hei"></div>
			</div>
		</div>
		<!-- CUSTOM CODE START(view-EDIT-MESBasic_1_container_newContainerEdit,html,MESBasic_1_container_Container,MESBasic_1) -->
<!-- 自定义代码 -->

<!-- CUSTOM CODE END -->
		<@errorbar id="workbenchErrorBar" offsetY=42 />
		
		<script type="text/javascript">
		$(function(){
			//修复select下拉框不能跟随滚动条一起滚动的bug
			$(".cui-elements").bind("scroll", function(){ 
			    $(".edit-select-box").hide();
				$(".select-iframe").hide();     
			});
			$(window).resize(function(){
				//var isoldie = $.browser.msie&&($.browser.version == "6.0")&&!$.support.style;
				//var body = isoldie?(document.documentElement||document.body):document.body;
				var width = parseInt($('html').width(),10);
				var w1 = parseInt($(window).width(),10);
				if($("#edit_sidebar").css("display") == "block"){
					w1 = w1 - 150;
				}
				if (width <= 800) {
					if($("#edit_sidebar").length==0 || $("#edit_sidebar").css("display")=="none"){
						$("#MESBasic_container_container_newContainerEdit_main_div").css("width",800);
						$(".edit-head").css("width",800);
						$(".edit-workflow").css("width",800);
						$("body").css({"overflow-x":"scroll","position":"relative","zIndex":"100"});
					}else{
						$("#MESBasic_container_container_newContainerEdit_main_div").css("width",650);
						$(".edit-head").css("width",650);
						$(".edit-workflow").css("width",650);
						$("body").css({"overflow-x":"scroll","position":"relative","zIndex":"100"});
					}
				}
				else {
					if (YAHOO.env.ua.ie == "6") {
						$("#MESBasic_container_container_newContainerEdit_main_div").css("width",w1);
						$(".edit-workflow").css("width",w1);
					}else{
						$("#MESBasic_container_container_newContainerEdit_main_div").css("width","auto");
						$(".edit-workflow").css("width","auto");
					}
					$("body").css({"overflow-x":"hidden"});
					$(".edit-head").css("width","auto");
				}
			});
		});
		
		</script>
		<script type="text/javascript">
			MESBasic.container.container.newContainerEdit.initCount = 0;
			MESBasic.container.container.newContainerEdit.initSize = function(nTabIndex){
				var panesHeight;
				var thisHeight;
				var h = $(window).height();
			    var w = $(window).width();
			    var width_ = 0;
			    if($('#edit_side_btn').length > 0){
				 $('#edit_side_btn').hasClass('edit-side-btn-r') ? width_ = 0 : width_ = 145;			
				}
				<#if businessCenterList??&&businessCenterList?size gt 0 >
				if($("#edit_sidebar").css("display") === "none"){
					$("div.edit-workflow").css("left",1);
				}else{
					$("div.edit-workflow").css("left",145);
				}
				$("#edit_sidebar").height(h);
				$("div.edit-sidebar-inner").height(h);
				$("#edit_side_btn").css("top",(h-50)/2);
				CUI('div[id^="otherContentDiv_"]').height(h);
				</#if>
				var conHeight = h-$("#MESBasic_container_container_newContainerEdit_main_div .edit-head").height()-$("#MESBasic_container_container_newContainerEdit_main_div .edit-tabs").height()<#if pendingId?? || editNew>-$("#MESBasic_container_container_newContainerEdit_main_div .edit-workflow").height()</#if>;
				$("#MESBasic_container_container_newContainerEdit_main_div .edit-tabs").length == 0 ? conHeight = conHeight : conHeight = conHeight-28 //再减去28px，28px是由.edit-tabs的margin-top:14px+6px边框+8px的底部边距组成
				panesHeight = conHeight*0.4;  //当表单跟pt共存的时候采用4/6开
				var datagrids = $('body').data('MESBasic_container_container_newContainerEdit_datagrids');
				var padding_bottom=16;
				$("#MESBasic_container_container_newContainerEdit_main_div .pd_bottom,#MESBasic_container_container_newContainerEdit_main_div .edit-tabs").width(w-14*2-2-width_)  //把tab跟tab下面的内容宽度统一调整
				$("#MESBasic_container_container_newContainerEdit_main_div .edit-panes-s").each(function(index){
					//多页签切换时只计算本页签下的PT高度
					if(nTabIndex != undefined && typeof(nTabIndex) == 'number' && index != nTabIndex){
						return;
					}
					thisHeight = $(this).height();
					var datatableHeight = conHeight - panesHeight;
					if(datagrids&&datagrids.length>index&&datagrids[index].length>0) {
						if(thisHeight > panesHeight) {
							$(this).parent().height(panesHeight);
							$(this).parent().css("overflow-y","auto");
						} else {
							$(this).parent().height(thisHeight);			//解决存在存在pt的情况，当页面resize时，造成的高度设定不正确问题， BugID=27472			--fukun
							datatableHeight = conHeight - thisHeight;
						}
					} else {
						if(thisHeight > conHeight) {
							$(this).parent().height(conHeight);
							$(this).parent().css("overflow-y","auto");
						} else if(thisHeight && thisHeight > 0) {
							$(this).parent().height(conHeight);  //如果实际高度小于分配给它的高度，就使用分配给它的高度 BugID=18196     --xudihui
						}
					}
					if(datagrids && datagrids.length > 0) {
						if(datagrids[index].length > 0) {
							datatableHeight = datatableHeight; 
							var perHeight = datatableHeight/datagrids[index].length;
							for(var dg=0;dg<datagrids[index].length;dg++) {
								
								var dgwidget = eval(datagrids[index][dg]+'Widget');
								
								if(dgwidget) {
									var dg_container = dgwidget._DT ? ( dgwidget.isJS ? dgwidget._DT.container :  dgwidget._DT.oGridDiv ) : dgwidget.container;
									if ( $( dg_container ).is( ':visible' ) ) {
									   	 if( dgwidget._oGrid || dgwidget._DT._oGrid ){
                                          dgwidget.setHeight(perHeight - 78); 
										  if ( $('._DT_blank','#' + datagrids[index] + '_wrapper').length == 0 ) {
										     $('#' + datagrids[index] + '_wrapper').append('<div style="height:11px" class="_DT_blank" ></div>')  //当使用控件PT的时候，为底部增加10px的div，  xudihui  2015.01.27
										   } 
                                         }
									     else{
									      dgwidget.setHeight(perHeight - 68);
									     }	
									}
								} else {
									if(MESBasic.container.container.newContainerEdit.initCount <= 2) {
										setTimeout(function(){MESBasic.container.container.newContainerEdit.initSize();}, 200);
										MESBasic.container.container.newContainerEdit.initCount++;
									}/* else {
										MESBasic.container.container.newContainerEdit.initCount = 0;
									}*/
								}
							}
						}
					} else {
						if(thisHeight < conHeight){ //当此页签下面的实际内容高度小于分配给它的高度
						    $(this).parent().height(conHeight);
						}
						else{     //当此页签下面的实际内容高度大于分配给它的高度
							$(this).parent().height(conHeight);
							if(($("#MESBasic_container_container_newContainerEdit_main_div .edit-workflow").length > 0) && ($("#MESBasic_container_container_newContainerEdit_main_div .edit-tabs").length > 0)){		// 底下有处理结果，并且头部有页签切换，此时底部留白14像素
							 $(this).parent().height(conHeight-14); //有处理结果浮动层的时候，底部留白14像素
							}	
							$(this).parent().css("overflow-y","auto");
						}
					}
					/*
					// 文档申明换成更标准的之后,这个问题不会出现在真实的ie8及以上的浏览器中, 这里的算法会产生其他问题BugID=18197,先注释掉这段代码，后面如果有需要再调整这块代码 ———— lidong
					if($(this).parent().css("overflow-y")=="auto"){  //IE7 下面当内容出现滚动条的时候，不会主动去腾出滚动条的宽度，需要手动计算
						if(YAHOO.env.ua.ie < 8 ){
	                         var width = parseInt($(window).width());
							if($("#edit_side_btn").length>0){
							   $("#edit_side_btn").hasClass('edit-side-btn-r') ? width = width : width = width-145;
							}
							if($('.edit-tabs').length>0){
							   width = width*0.98; //IE7下面把总宽度的98%赋值给它的分配宽度，保持跟IE高版本一致
							}
							var style = ';width:' + (width-48) + 'px;';  //IE7下面把它的分配宽度再减去右侧滚动条的宽度
							$(this).attr('style',style);
							$(this).parent().parent().find('.edit-datatable').each(function(){ //IE7下面如果pt内容为空，直接隐藏，不然会有一个默认高度
								if($(this).html() ==''){$(this).css('display','none');}
							});
						}					
					}
					*/						
				});
			}
			$(function(){
				$('#MESBasic_container_container_newContainerEdit_form').get(0).onkeydown=function(event){
					event=event?event:window.event;
					var elm = event.target || event.srcElement;
					if(event.keyCode==13 && elm.nodeName.toUpperCase() !== 'TEXTAREA'){
						return false
					}
				};
				
				MESBasic.container.container.newContainerEdit.buttonBar = new CUI.ButtonBar( { panel: '#top_buttonbar' }  );
				MESBasic.container.container.newContainerEdit.initSize();
				if(YAHOO.env.ua.ie == 6){
					$("#loading_wrap_first").css("display","block");
				}
				$("#load_mask_first").remove();
				$("#load_iframe_ie_first").remove();
				$("#loading_wrap_first").remove();
				<#if businessCenterList??&&businessCenterList?size gt 0 >
					$(window).resize(function(){
						for(var i=0; i<CUI.DataTable.Arrays.length; i++){
							if( CUI.DataTable.Arrays[i] && document.getElementById( CUI.DataTable.Arrays[i].dataTableId ) &&  $( CUI.DataTable.Arrays[i].container ).is(':visible') ){
								CUI.DataTable.Arrays[i]._initDomElements();
							}else if( CUI.DataTable.Arrays[i] && !document.getElementById( CUI.DataTable.Arrays[i].dataTableId ) ){
								CUI.DataTable.Arrays[i] = null;
								CUI.DataTable.Arrays.splice(i, 1);
							}
						}
					})
					$(".edit-workflow").css("left",145);
					$("#edit_side_btn").toggle(function(){
						if(parseInt($("#MESBasic_container_container_newContainerEdit_main_div").css("width"),10)==650){
							$("#MESBasic_container_container_newContainerEdit_main_div").css("width","800px");
							$(".edit-workflow").css("width","800px");
						}
						$(this).addClass("edit-side-btn-r");
						$(".main-wrap").css("margin-left",0);
						//$(".col-sub").width(0);
						$("#edit_side_btn").css("left",0);
						$(".edit-workflow").css("left",1);
						$("#edit_sidebar").css("display","none");
						//MESBasic.container.container.newContainerEdit.resizeLayout();
						//MESBasic.container.container.newContainerEdit.initSize();
						$('body').trigger('resize');
					},function(){
						if(parseInt($("#MESBasic_container_container_newContainerEdit_main_div").css("width"),10)==800){
							$("#MESBasic_container_container_newContainerEdit_main_div").css("width","650px");
							$(".edit-workflow").css("width","650px");
						}
						$(this).removeClass("edit-side-btn-r");
						$(".main-wrap").css("margin-left",145);
						//$(".col-sub").width(150);
						$("#edit_side_btn").css("left",145);
						$(".edit-workflow").css("left",145);
						$("#edit_sidebar").css("display","block");
						//MESBasic.container.container.newContainerEdit.resizeLayout();
						//MESBasic.container.container.newContainerEdit.initSize();
						$('body').trigger('resize');
					});
				<#else>	
					$(".main-wrap").css("margin-left",0);
					$(".col-sub").width(0);
					$("#edit_side_btn").css("left",0);
					$(".edit-workflow").css("left",1);
					
				</#if>

				if($("ul.edit-tabs li").length > 0) {
			     	$("ul.edit-tabs").tabs("div.edit-panes > div");
			    }
				var datatableHeight;
				var bh = $(".edit-workflow tr:gt(0)").height();
				<#if pendingId?? || editNew>
				$("#workflow_toggle").toggle(function(){
					$(".edit-workflow tr:gt(0)").hide();
					MESBasic.container.container.newContainerEdit.initSize();
					$("#workflow_toggle").removeClass('workflow-toggle-b').addClass('workflow-toggle-t');
				},function(){
					$(".edit-workflow tr:gt(0)").show();
					MESBasic.container.container.newContainerEdit.initSize();
					$("#workflow_toggle").removeClass('workflow-toggle-t').addClass('workflow-toggle-b');
				});
				</#if>
				$(window).resize(function(){MESBasic.container.container.newContainerEdit.initSize();});
				/*
				MESBasic.container.container.newContainerEdit.resizeLayout=function(){
					CUI("div[class='elm-layout-doc elm-layout-doc-in-wrap']").each(function(){
						var id=CUI(this).attr("id");
						var layoutObj=eval(id+"Widget");
						layoutObj.resize();
					})
				}
				*/
			});
		</script>
		<script type="text/javascript">
		
		$(function(){
			//解决合并单元格后，同行（tr）内的所有td跨行数（rowspan）相同时,组态期表现为tr占n行单元格，在运行期错乱的bug
			var editContainer = $( 'div.edit-container' );
		    var editTr=editContainer.find(".edit-table tr");
		    $.each(editTr,function(i,item){
		        var editTd=$(item).find("td");
		        var isSameRowSpan=true;//单元格跨行数是否相等
		        var rsTemp;//跨行数
		        var csTemp=0;//跨列数（需累加）
		        for(var k=0;k<editTd.length;k++){
		           var ele=editTd[k];
		           var rowspan=$(ele).attr("rowspan");
		           var colspan=$(ele).attr("colspan");
		           if(!rowspan||rowspan=="") rowspan=1;
		           if(!colspan||colspan=="") colspan=1;
		           csTemp+=Number(colspan);
		           if(!rsTemp){
		              rsTemp=Number(rowspan);
		           }else{
		              if(rsTemp!=rowspan){
		                 isSameRowSpan=false;
		              }
		           }  
		        }
		        //单元格跨行数相等且不为1的情况下，重组本行内容
		        if(isSameRowSpan&&rsTemp!=1){
		           recombineTr(item,rsTemp,csTemp);
		        }
		    });
		    //对满足条件的行进行跨行重组
		    function recombineTr(editTr,rsNum,csNum){
		        var editTd=$(editTr).find("td");
		        $.each(editTd,function(i,item){
		           $(item).attr({"rowspan":"1","data-row":rsNum});
		        });
		        var appendTr="";
		        for(var i=0;i<rsNum-1;i++){
		          appendTr+="<tr data-tag='appendrow'><td class='edit-table-symbol' colspan='"+csNum+"'>&nbsp;</td></tr>";
		        }
		        $(appendTr).insertAfter(editTr);
		    }
		});

		MESBasic.container.container.newContainerEdit.validate = function(){
		    <#if dealSet?? && dealSet == 1>
			var cancelItem = $('input[name="workFlowVarStatus"]');
	        validateRequiredFlag = $('input[name="operateType"]').val()=='submit' && (!cancelItem || cancelItem.length == 0 || !(cancelItem.val()=='cancel'));
			if(validateRequiredFlag){
				var comments = $.trim(CUI("#workflow_comments").val());
			 	if(comments != null && comments == ""){
		        	workbenchErrorBarWidget.showMessage("${getText('ec.property.dealinfo.isNotNull')}", 'f');
		        	return false;
				}
			}
		    </#if>
		    return true;
		}
		MESBasic.container.container.newContainerEdit.beforeSaveProcess = function(){
			try{eval("savedg1555312985524DataGrid()");}catch(e){}
			try{eval("savedg1555312971656DataGrid()");}catch(e){}
			try{eval("savedg1551701917640DataGrid()");}catch(e){}
			try{eval("savedg1553144257690DataGrid()");}catch(e){}

			var extraCol = '<extra-data>';
			$('#MESBasic_container_container_newContainerEdit_form').trigger('beforeSubmit');
			//container.extraCol
			$('*[name^="_complex_"]').each(function(index, item){
				if($(item).attr('type') != 'radio' || ($(item).attr('type') == 'radio' && $(item).prop('checked'))){
					if(CUI(item).attr('name') && CUI(item).attr('name').length > 9)
					var itemValue = CUI(item).val();
					extraCol += '<' + CUI(item).attr('name').substr(9) + '><![CDATA[' + itemValue + ']]></' + CUI(item).attr('name').substr(9) + '>';
				}
			});
			extraCol += '</extra-data>';
			$('input[name="container.extraCol"]').val(extraCol);
		}
		MESBasic.container.container.newContainerEdit.processDataGrid = function(){
										<#if false && isIE>
										$('#MESBasic_container_container_newContainerEdit_form').append(PropertyTags_dg1551701917640Widget._DT.createInputs('dg1551701917640List'));
										</#if>
										<#if false && isIE>
										$('#MESBasic_container_container_newContainerEdit_form').append(ContainerExp_dg1553144257690Widget._DT.createInputs('dg1553144257690List'));
										</#if>
										<#if false && isIE>
										$('#MESBasic_container_container_newContainerEdit_form').append(FlowRecord_dg1555312971656Widget._DT.createInputs('dg1555312971656List'));
										</#if>
										<#if false && isIE>
										$('#MESBasic_container_container_newContainerEdit_form').append(MaintainLog_dg1555312985524Widget._DT.createInputs('dg1555312985524List'));
										</#if>
		};
		MESBasic.container.container.newContainerEdit.save = function(){
			$('#operateType').val("submit");
			try{eval('beforeSubmitUploadForm()');}catch(e){}
			if(!MESBasic.container.container.newContainerEdit.validate()){return;}
			//延迟到延迟提交中处理,解决onchange事件无法触发问题
			//MESBasic.container.container.newContainerEdit.beforeSaveProcess();

			//MESBasic.container.container.newContainerEdit.processDataGrid();
			$('#MESBasic_container_container_newContainerEdit_form').submit();
		}
		
		<#if viewType != "readonly">
		$(window).bind('beforeunload',function(){
		        if(isFormChanged('MESBasic_container_container_newContainerEdit_form','MESBasic_container_container_newContainerEdit_datagrids')) {      
		            return "${getText('ec.view.losedata')}";      
		        }else{
		        	 if($('#workflow_comments').length!=0){
			        	if($('#workflow_comments').val()!=null && $('#workflow_comments').val()!=""){
			        		return "${getText('ec.view.losedata')}";
			        	}
				     }  
		        }   
	    });
		<#else>
		$(window).bind('beforeunload',function(){
		        if($('#workflow_comments').length!=0){
		        	if($('#workflow_comments').val()!=null && $('#workflow_comments').val()!=""){
		        		return "${getText('ec.view.losedata')}";
		        	}
		        }  		  
		});		
		</#if>
		//打印
		MESBasic.container.container.newContainerEdit.print = function(){
			var viewCode = $('input[name="viewCode"]').val();
			var value = "";
			var printId = 0;
			var printVersion = 0;
			if(viewCode!=undefined && viewCode!=null && viewCode!=''){
				$.ajax({
					url : "/ec/print/getAjaxSetting.action",
					type : 'post',
					async : false,
					data:{"printCookie.type":viewCode},
					success : function(msg) {
						if(msg!=null){
							value = msg.value;
							printId = msg.id;
							printVersion = msg.version;
						}
					}
				});
				$("#printCookie_id").val(printId);
				$("#printCookie_version").val(printVersion);
				var values = {};
				if(value!=undefined && value!=null && value != ""){
					values = value.split(/\|/g);
				}
				var data="";
				if(values != null && values.length > 0){
					for(var i=0;i < values.length;i++){
						var item = values[i];
						if(data!=""){
							data = data + "&" + item;
						}else{
							data = item;
						}
					}
				}else{
					data = "mainContent=true&attachmentInfo=true&dealInfo=true";
				}
				data += "&dealInfoGroup=" + $('#dealInfoGroup').val();

				var url = document.location.href;
				// TODO 去掉url后的'#'，将来页面上有锚点时，在打印可能也会有问题
				while(url.endsWith('#')) {
					url = url.substring(0, url.length - 1);
				}
				if(url!=undefined && url != null && url !=''){
					var index = url.indexOf(".action");
					var index0 = url.indexOf(".action?");
					if(index0 != -1){
						data = "&" + data;
					}else{
						data = "?" + data;
					}
					if(index != -1){
						var newUrl = url.substring(0,index) + "Print" + url.substring(index) + data;
						window.open(newUrl);
					}
				}
			}
		}
		
		MESBasic.container.container.newContainerEdit.saveSetting = function(){
			var url = "/ec/print/saveSetting.action";
			var value = "mainContent="+$('#mainContent').prop('checked')+ "|attachmentInfo="+$('#attachmentInfo').prop('checked') +  "|dealInfo="+$('#dealInfo').prop('checked');
			var flag = false;
			$.ajax({
				url : url,
				type : 'post',
				async : false,
				data:{"printCookie.value": value, "printCookie.type":$('input[name="viewCode"]').val(),"printCookie.id":$('#printCookie_id').val(),"printCookie.version":$('#printCookie_version').val()},
				success : function(json) {flag = true;}
			});
			return flag;
		}
		
		MESBasic.container.container.newContainerEdit.printSetting = function(){
			var viewCode = $('input[name="viewCode"]').val();
			var value = "";
			var printId = 0;
			var printVersion = 0;
			if(viewCode!=undefined && viewCode!=null && viewCode!=''){
				$.ajax({
					url : "/ec/print/getAjaxSetting.action",
					type : 'post',
					async : false,
					data:{"printCookie.type":viewCode},
					success : function(msg) {
						if(msg!=null){
							value = msg.value;
							printId = msg.id;
							printVersion = msg.version;
						}
					}
				});
				$("#printCookie_id").val(printId);
				$("#printCookie_version").val(printVersion);
				var values = {};
				if(value!=undefined && value!=null && value != ""){
					values = value.split(/\|/g);
				}
				if(values != null && values.length > 0){
					for(var i=0;i < values.length;i++){
						var item = values[i].split("=");
						if(item[1]=='true'){
							$('#' + item[0]).prop('checked',true);
						}else{
							$('#' + item[0]).prop('checked',false);
						}
					}
				}else{
					$('#mainContent').prop('checked',true);
					$('#dealInfo').prop('checked',true);
					$('#attachmentInfo').prop('checked',true);
				}
				<#if isWorkflow?? && isWorkflow>
				$('td[name="deal"]').show();
				<#else>
				$('td[name="deal"]').hide();
				$('#dealInfo').prop('checked',false);
				</#if>
				<#if isAttachment?? && isAttachment>
				$('td[name="att"]').show();
				<#else>
				$('td[name="att"]').hide();
				$('#attachmentInfo').prop('checked',false);
				</#if>
				MESBasic.container.container.newContainerEdit.settingDialog = new CUI.Dialog({
					title: "${getText("ec.print.setting")}",
					elementId:"printSettingDiv",
					modal:true,
					type:2,
					buttons:[
							{	name:"${getText("ec.flow.save")}",
								handler:function(){if(MESBasic.container.container.newContainerEdit.saveSetting()){this.close();}}
							},
							{	name:"${getText("ec.flow.cancal")}",
								handler:function(){this.close()}
							}]
					})
				MESBasic.container.container.newContainerEdit.settingDialog.show();
			}
		}
		
		
		MESBasic.container.container.newContainerEdit._callBackInfo = function(res){
			if(res.dealSuccessFlag){
					var showMsg ;
				if(res.operateType == 'save'){
					showMsg = "${getText("ec.common.savesuccessful")}";
				}else{
					showMsg = "${getText("ec.common.saveandclosesuccessful")}";
				}
				
				//提交成功时隐藏之前的错误信息
				workbenchErrorBarWidget.close();
				
				if(containerLoadPanelWidget && containerLoadPanelWidget.loading && YUD.get("loading_wrap")){
 					YUD.get("loading_wrap").innerHTML = "<div class='success-middle'></div>" ;
 				}

 				try{
					window.opener.refreshPortal('workflow');
					window.opener.timeData();
				}catch(e){
					try{
 						window.opener.MESBasic.container.container.editCallBackInfo(res); 						
					}catch(e2){
						try{
							if(typeof window.opener.refViewRefresh == 'function'){
								window.opener.refViewRefresh()
							} else {
								window.opener.location.reload();
							}
						}catch(e3){}
					}
				};

 				setTimeout(function(){
					window.close();
				},1000);
				//workbenchErrorBarWidget.showMessage(showMsg,'s',function(){closeLoadPanel();try{window.opener.MESBasic.container.container.editCallBackInfo();}catch(e){try{window.opener.location.reload();}catch(e2){}};window.close();});
			} else {
				CUI.showErrorInfos(res);
			}
		};
		refViewRefresh = function(){
			if($("[name='refViewRefresh']").val() != undefined && "" != $("[name='refViewRefresh']").val()){
				eval($("[name='refViewRefresh']").val());
			}
		}
		
		//控件版PT选人查看按钮单击事件处理函数
		function dataGridBtnImgClick(sUrl,objNameCustomCondition,sTitle,sPTGridID,nRow,sFieldName,oGrid,customCallBack,crossCompany,isObjCustomProp,objCustomPropNames,viewCode){
			//保存当前单击事件的对象信息
			var obj = {
				"oGrid" : oGrid,
				"nRow" : nRow - 1,
				"sKey":	sFieldName
			}
			if(customCallBack){
				MESBasic.container.container.newContainerEdit._customCallBack = customCallBack;
			}
			if (isObjCustomProp) {
				MESBasic.container.container.newContainerEdit._isObjCustomProp_IE = isObjCustomProp;
			} else {
				MESBasic.container.container.newContainerEdit._isObjCustomProp_IE = false;
			}
			if (objCustomPropNames) {
				MESBasic.container.container.newContainerEdit._objCustomPropNames_IE = objCustomPropNames;
			} else {
				MESBasic.container.container.newContainerEdit._objCustomPropNames_IE = '';
			}
			if (viewCode) {
				MESBasic.container.container.newContainerEdit._refViewCode_IE = viewCode;
			} else {
				MESBasic.container.container.newContainerEdit._refViewCode_IE = '';
			}
			MESBasic.container.container.newContainerEdit._selectEvent(objNameCustomCondition,null,sUrl,sTitle,null,null,null,crossCompany,obj);
		}
		
		MESBasic.container.container.newContainerEdit.initMnemonic_DG_IE = function(oConfig){
			// 助记码也需要区分是否为自定义字段
			MESBasic.container.container.newContainerEdit._isObjCustomProp_IE = oConfig._isObjCustomProp_IE;
			MESBasic.container.container.newContainerEdit._objCustomPropNames_IE = oConfig._objCustomPropNames_IE;
			
			var oGrid = oConfig.oGrid;
			// 获取控件PT  object
			var oPTGridEx = oGrid._DT || oGrid;
			// 存储当前操作相关信息
			MESBasic.container.container.newContainerEdit.gridEventObj = {
				"oGrid" : oGrid,
				"nRow" : oConfig.nRow - 1,
				"sKey":	oConfig.sFieldName
			}
			MESBasic.container.container.newContainerEdit._sUrl = oConfig.url;
			if(oConfig.customCallBack){
				MESBasic.container.container.newContainerEdit._customCallBack = oConfig.customCallBack;
			}
			// 自定义的表格对象
			var oInputField = oPTGridEx.getCell(oConfig.nRow,oConfig.sFieldName);
			oInputField.value = oConfig.value;
			oInputField.isCrossCompany = oConfig.isCrossCompany;
			selectKeyEvent({'keyCode':oConfig.keyCode},oInputField,oConfig.url,oConfig.displayfieldname,oConfig.type,oConfig.multiple,oConfig.mnewidth,oConfig.funcname,oConfig.conditionfunc);
		}
		
		MESBasic.container.container.newContainerEdit._selectEvent = function(objName,_selectType,url,title,refparam,obj,customCallBack,crossCompanyFlag,gridEventObj,oGrid,isMultiselect,oColumn){

			var callbackName="";
			var condition='';
			var _prefix= '';
			var arr = objName.split('.');
			if(MESBasic.container.container.newContainerEdit._querycustomFunc(objName.replace(/\./g, '_')) !=null){
				condition=encodeURIComponent(MESBasic.container.container.newContainerEdit._querycustomFunc(objName.replace(/\./g, '_')));
			}
			if(gridEventObj) {
				MESBasic.container.container.newContainerEdit.gridEventObj = gridEventObj;
				callbackName = "MESBasic.container.container.newContainerEdit.getcallBackInfo_DG_IE";
			}else if(obj!=null && obj!=""){
				if(arr.length > 1){
					_prefix = '.'+ arr[0];
				}
				callbackName = isMultiselect ? "MESBasic.container.container.newContainerEdit.getMultiselectCallBackInfo_DG" : "MESBasic.container.container.newContainerEdit.getcallBackInfo_DG";
				MESBasic.container.container.newContainerEdit._currRow = $(obj).closest('tr')[0];
			}else{
				if(arr.length > 2){
					_prefix = '.'+ arr[0] + '.'+ arr[1];
				}
				callbackName ="MESBasic.container.container.newContainerEdit.getcallBackInfo";
			}

			if(_prefix!=''){
				MESBasic.container.container.newContainerEdit._prefix = _prefix.substring(1);
			}
			
			MESBasic.container.container.newContainerEdit._oGrid = oGrid;
			MESBasic.container.container.newContainerEdit._sUrl = url;
			if (oColumn) {
				if (oColumn.isObjCustomProp) {
					MESBasic.container.container.newContainerEdit._isObjCustomProp = oColumn.isObjCustomProp;
				} else {
					MESBasic.container.container.newContainerEdit._isObjCustomProp = false;
				} 
				if (oColumn.objCustomPropNames) {
					MESBasic.container.container.newContainerEdit._objCustomPropNames = oColumn.objCustomPropNames;
				} else {
					MESBasic.container.container.newContainerEdit._objCustomPropNames = '';
				}
				if (oColumn.viewCode) {
					MESBasic.container.container.newContainerEdit._refViewCode = oColumn.viewCode;
				} else {
					MESBasic.container.container.newContainerEdit._refViewCode = '';
				}
			} else {
				MESBasic.container.container.newContainerEdit._isObjCustomProp = false;
				MESBasic.container.container.newContainerEdit._objCustomPropNames = '';
				MESBasic.container.container.newContainerEdit._refViewCode = '';
			}
			if (MESBasic.container.container.newContainerEdit._isObjCustomProp == true && MESBasic.container.container.newContainerEdit._objCustomPropNames && objName && objName.substring(objName.length - 'MainDisplay'.length) == 'MainDisplay') {
				MESBasic.container.container.newContainerEdit._prefix = objName.substring(0, objName.length - 'MainDisplay'.length);
			}
			if(customCallBack){
				MESBasic.container.container.newContainerEdit._customCallBack = customCallBack;
			}
			if(MESBasic.container.container.newContainerEdit._querycustomFunc(objName.replace(/\./g, '_')) != null) {
				refparam = 'condition=' + encodeURIComponent(MESBasic.container.container.newContainerEdit._querycustomFunc(objName.replace(/\./g, '_')));
			}
			if(typeof MESBasic.container.container.newContainerEdit._querycustomFuncN == "function") {
				refparam += MESBasic.container.container.newContainerEdit._querycustomFuncN();
			}
			if(crossCompanyFlag && crossCompanyFlag == true) {
				refparam += "&crossCompanyFlag=true";
			} else {
				refparam += "&crossCompanyFlag=false";
			}
			MESBasic.container.container.newContainerEdit._dialog = foundation.common.select({
				pageType : 'other',
				closePage : true,
				condition : condition,
				callBackFuncName : callbackName,
				url : url,
				title : title,
				params : refparam
			});
		}
		MESBasic.container.container.newContainerEdit._groupSelectEvent = function(objName,_selectType,url,title,refparam){
			if(MESBasic.container.container.newContainerEdit._querycustomFunc(objName.replace(/\./g, '_')) != null) {
				refparam = 'condition=' + encodeURIComponent(MESBasic.container.container.newContainerEdit._querycustomFunc(objName.replace(/\./g, '_')));
			}
			MESBasic.container.container.newContainerEdit._dialog = foundation.common.select({
				pageType : _selectType,
				closePage : true,
				callBackFuncName : 'MESBasic.container.container.newContainerEdit.getcallBackGroupInfo',
				url : url,
				title : title,
				params : refparam
			});
		}
		MESBasic.container.container.newContainerEdit._querycustomFunc = function(obj) {
			var str = eval("typeof(MESBasic.container.container.newContainerEdit.query_"+obj+")!='undefined'") ? eval('MESBasic.container.container.newContainerEdit.query_'+obj+'()') : null;
			return str;
		};
		MESBasic.container.container.newContainerEdit.getcallBackGroupInfo = function(obj){
			var ids = "";
			var names = "";
			for(var i = 0 ; i < obj.length; i++){
				ids += "," + obj[i].id;
				names += "," + obj[i].name;
			}
			if(ids){ids = ids.substring(1);}
			if(names){names = names.substring(1);}
			$('#groupInfoIds').val(ids);
			$('#groupInfos').val(names);
			MESBasic.container.container.newContainerEdit._dialog.close();
		}
		MESBasic.container.container.newContainerEdit.getcallBackInfo = function(obj){
		
			obj[0] = foundation.common.getObject('MESBasic_container_container_newContainerEdit_form',obj[0], MESBasic.container.container.newContainerEdit._prefix, MESBasic.container.container.newContainerEdit._sUrl);
			CUI.commonFills('MESBasic_container_container_newContainerEdit_form',MESBasic.container.container.newContainerEdit._prefix,obj[0]);
			
			for(pro in obj[0]){
				try{
					var fname = "_callback_" + (MESBasic.container.container.newContainerEdit._prefix + "." + pro).replace(/\./g, '_')  + "_edit";
					if(typeof(eval(fname)) == "function"){
						eval(fname + "(obj)");
					}
				}catch(e){}
			}

			try{
				if(MESBasic.container.container.newContainerEdit._customCallBack) {
					eval(MESBasic.container.container.newContainerEdit._customCallBack);
					MESBasic.container.container.newContainerEdit._customCallBack = null;
				}
			} catch(e){alert('${getText('ec.view.callback.error')}');}

			// 助记码也会调用此方法，容错处理
			try{
				MESBasic.container.container.newContainerEdit._dialog.close();
			} catch(e){}
		}
		
		// 控件版PT回调
		MESBasic.container.container.newContainerEdit.getcallBackInfo_DG_IE = function(obj){
			if(MESBasic.container.container.newContainerEdit._customBeforeCallBack) {
				var flag = eval(MESBasic.container.container.newContainerEdit._customBeforeCallBack.split("(")[0] + "(obj)");
				if(flag === false){
					return false;
				}
			}
			var gridEventObj = MESBasic.container.container.newContainerEdit.gridEventObj;
			var rootKey = gridEventObj.sKey.split('.')[0];
			var jsonObj;
			if ( MESBasic.container.container.newContainerEdit._isObjCustomProp_IE == true && MESBasic.container.container.newContainerEdit._objCustomPropNames_IE ) {
				jsonObj = foundation.common.getObjectIE_CP_OBJ(gridEventObj,obj[0],rootKey,MESBasic.container.container.newContainerEdit._sUrl,MESBasic.container.container.newContainerEdit._objCustomPropNames_IE);
			} else {
				jsonObj = foundation.common.getObjectIE(gridEventObj,obj[0],rootKey,MESBasic.container.container.newContainerEdit._sUrl);
			}
			CUI.error_msg_DG_CP_map = {};
			var xmlHead = $(gridEventObj.oGrid._DT.opts.oXMLData).children( ':eq(0)' ).children( ':eq(0)' );
			if (MESBasic.container.container.newContainerEdit._isObjCustomProp_IE == true && MESBasic.container.container.newContainerEdit._objCustomPropNames_IE) { // 控件版PT显示自定义字段
				var showName = MESBasic.container.container.newContainerEdit._objCustomPropNames_IE.split(',')[0]; // 主显示字段名称
				var trueName = MESBasic.container.container.newContainerEdit._objCustomPropNames_IE.split(',')[1]; // 主键字段名称
				for( var i = 0; i < xmlHead.children().length; i++ ){
					var tagName = xmlHead.children()[i].tagName;
					if ( tagName == (rootKey + 'MainDisplay') ) {
						try{
							var showVal = eval('jsonObj.' + showName);
						}catch(e){
							var showVal = eval('jsonObj["' + showName + '"]');
						}
						if (showVal != undefined ) {
							gridEventObj.oGrid.setCellValue(gridEventObj.nRow,tagName,showVal);
						} else {
							try {
								var trueVal = eval('jsonObj.' + trueName);
							} catch(e) {
								var trueVal = eval('jsonObj["' + trueName + '"]');
							}
							trueVal = ( trueVal != undefined ? trueVal : '' );
							gridEventObj.oGrid.setCellValue(gridEventObj.nRow,tagName,trueVal);
						}
					} else if ( tagName == rootKey ) {
						try{
							var trueVal = eval('jsonObj.' + trueName);
						}catch(e){
							var trueVal = eval('jsonObj["' + trueName + '"]');
						}
						trueVal = ( trueVal != undefined ? trueVal : '' );
						gridEventObj.oGrid.setCellValue(gridEventObj.nRow,tagName,trueVal);
					}
				}
			} else {
				for( var i = 0; i < xmlHead.children().length; i++ ){
					var tagName = xmlHead.children()[i].tagName;
					if( tagName.indexOf(rootKey) == 0 ){
						try{
							var value = eval('jsonObj.' + tagName.substring(rootKey.length+1));
						}catch(e){
							var value = eval('jsonObj["' + tagName.substring(rootKey.length+1)+'"]');
						}
						//判断符合条件的key是否存在
						value = ( value != undefined ? value : '' );
						gridEventObj.oGrid.setCellValue(gridEventObj.nRow,tagName,value);			
					}
				}
			}
			// 自定义字段参照回填
			if ( $('#dg_cp_info_' + gridEventObj.oGrid._DT.opts.id).length > 0 ) {
				var dg_cp_info = $('#dg_cp_info_' + gridEventObj.oGrid._DT.opts.id).val();
				var id = jsonObj.id;
				var relationMap;
				if (dg_cp_info && id && MESBasic.container.container.newContainerEdit._refViewCode_IE) {
					$.ajax({
						async   : false,
						type    : 'POST',
						url     : '/foundation/customProp/related.action',
						data    : 'code=' + MESBasic.container.container.newContainerEdit._refViewCode_IE + '&id=' + id,
						success : function(res){
							if (res.dealSuccessFlag && res.relationMap) {
								relationMap = res.relationMap;
							}
						}
					});
					if (relationMap) {
						var objs = new Object();
						var infoArr = dg_cp_info.split(',');
						for (var n in infoArr) {
							var info = infoArr[n].split('||');
							var key = info[0];
							var name = info[1];
							var propCode = '';
							if (info.length > 2) {
								propCode = info[2];
							}
							var val = relationMap[key];
							if (val) {
								objs[name] = val;
								if (propCode) {
									$.ajax({
										async   : false,
										type    : 'POST',
										url     : '/foundation/customProp/getMainDisplayValue.action',
										data    : 'code=' + propCode + '&id=' + val,
										success : function(res){
											if (res.dealSuccessFlag && res.displayValue) {
												var displayName = name + 'MainDisplay';
												objs[displayName] = res.displayValue;
											}
										}
									});
								}
							}
						}
						// console.log(objs);
						if (objs) {
							for( var i = 0; i < xmlHead.children().length; i++ ){
								var tagName = xmlHead.children()[i].tagName;
								try{
									var value = eval('objs.' + tagName);
								}catch(e){
									var value = eval('objs["' + tagName + '"]');
								}
								if( value != undefined ){
									gridEventObj.oGrid.setCellValue(gridEventObj.nRow,tagName,value);
								}else if( objs.hasOwnProperty(  tagName  ) ){
									value = '';
									gridEventObj.oGrid.setCellValue(gridEventObj.nRow,tagName,value);
								}								
							}
						}
					}
				}
			}
			try{
				if(MESBasic.container.container.newContainerEdit._customCallBack) {
					eval(MESBasic.container.container.newContainerEdit._customCallBack);
					MESBasic.container.container.newContainerEdit._customCallBack = null;
				}
			} catch(e){alert('${getText('ec.view.callback.error')}');}

			// 助记码也会调用此方法，容错处理
			try{
				MESBasic.container.container.newContainerEdit._dialog.close();
			} catch(e){}
			
			try{
				var errorMsg = ''
				for ( var item in  CUI.error_msg_DG_CP_map ){
					errorMsg += ( '<b>' + gridEventObj.oGrid._DT._oGrid.ColGetProperty(item,'caption') +  '</b>第<b>' + ( gridEventObj.nRow + 1)  + '</b>行回填失败！原因:系统编码值不匹配！<br/>' );
				}
				if( errorMsg ){
					workbenchErrorBarWidget.showMessage( errorMsg );
				}	
			}catch(e){};
			
			gridEventObj.oGrid._DT._oGrid.CellSetFocus(gridEventObj.nRow+1, gridEventObj.sKey);
		}
		
		MESBasic.container.container.newContainerEdit.getcallBackInfo_DG = function(obj){
			if(MESBasic.container.container.newContainerEdit._customBeforeCallBack) {
				var flag = eval(MESBasic.container.container.newContainerEdit._customBeforeCallBack.split("(")[0] + "(obj)");
				if(flag === false){
					return false;
				}
			}
			CUI.error_msg_DG_CP_map = {};
			for(var i=0;i<obj.length;i++){
				if(i>0){
					if($(MESBasic.container.container.newContainerEdit._currRow).next().length==0){
						MESBasic.container.container.newContainerEdit._oGrid.addNewRow();
					}	
					MESBasic.container.container.newContainerEdit._currRow = $(MESBasic.container.container.newContainerEdit._currRow).next();
					$(MESBasic.container.container.newContainerEdit._currRow).attr('isEdited',true);
				}
				obj[i] = foundation.common.getObject(MESBasic.container.container.newContainerEdit._currRow,obj[i], MESBasic.container.container.newContainerEdit._prefix, MESBasic.container.container.newContainerEdit._sUrl);
				if (MESBasic.container.container.newContainerEdit._isObjCustomProp == true && MESBasic.container.container.newContainerEdit._objCustomPropNames) {
					eval("CUI.commonFills_DG_CP_OBJ(MESBasic.container.container.newContainerEdit._currRow,MESBasic.container.container.newContainerEdit._prefix,obj[i],MESBasic.container.container.newContainerEdit._oGrid,MESBasic.container.container.newContainerEdit._objCustomPropNames)");
				} else {
					eval("CUI.commonFills_DG(MESBasic.container.container.newContainerEdit._currRow,MESBasic.container.container.newContainerEdit._prefix,obj[i],MESBasic.container.container.newContainerEdit._oGrid)");
				}
				
				// 自定义字段参照回填
				if ( $('#dg_cp_info_' + MESBasic.container.container.newContainerEdit._oGrid.dataTableId).length > 0 ) {
					var dg_cp_info = $('#dg_cp_info_' + MESBasic.container.container.newContainerEdit._oGrid.dataTableId).val();
					var id = obj[i].id;
					var relationMap;
					if (dg_cp_info && id && MESBasic.container.container.newContainerEdit._refViewCode) {
						$.ajax({
							async   : false,
							type    : 'POST',
							url     : '/foundation/customProp/related.action',
							data    : 'code=' + MESBasic.container.container.newContainerEdit._refViewCode + '&id=' + id,
							success : function(res){
								if (res.dealSuccessFlag && res.relationMap) {
									relationMap = res.relationMap;
								}
							}
						});
						if (relationMap) {
							var objs = new Object();
							var infoArr = dg_cp_info.split(',');
							for (var n in infoArr) {
								var info = infoArr[n].split('||');
								var key = info[0];
								var name = info[1];
								var propCode = '';
								if (info.length > 2) {
									propCode = info[2];
								}
								var val = relationMap[key];
								if (val) {
									name = MESBasic.container.container.newContainerEdit._oGrid.configs.hidekeyPrefix + name;
									objs[name] = val;
									if (propCode) {
										$.ajax({
											async   : false,
											type    : 'POST',
											url     : '/foundation/customProp/getMainDisplayValue.action',
											data    : 'code=' + propCode + '&id=' + val,
											success : function(res){
												if (res.dealSuccessFlag && res.displayValue) {
													var displayName = name + 'MainDisplay';
													objs[displayName] = res.displayValue;
												}
											}
										});
									}
								}
							}
							// console.log(objs);
							if (objs) {
								CUI.commonFills_DG_CP(MESBasic.container.container.newContainerEdit._currRow, objs, MESBasic.container.container.newContainerEdit._oGrid);
							}
						}
					}
				}
			}
			try{
				if(MESBasic.container.container.newContainerEdit._customCallBack) {
					eval(MESBasic.container.container.newContainerEdit._customCallBack);
					MESBasic.container.container.newContainerEdit._customCallBack = null;
				}
			} catch(e){alert('${getText('ec.view.callback.error')}');}

			// 助记码也会调用此方法，容错处理
			try{
				MESBasic.container.container.newContainerEdit._dialog.close();
			} catch(e){}
			
			setTimeout( function(){
				try{
					var errorMsg = ''
					for ( var item in  CUI.error_msg_DG_CP_map ){
						for ( var n in  CUI.error_msg_DG_CP_map[item] ){
							errorMsg += ( '<b>' + MESBasic.container.container.newContainerEdit._oGrid.getLabel(item) +  '</b>第<b>' + ( parseInt( n, 10 ) + 1)  + '</b>行回填失败！原因:系统编码值不匹配！<br/>' );
						}
					}
					if( errorMsg ){
						workbenchErrorBarWidget.showMessage( errorMsg );
					}		
				}catch(e){};
			}, 500 )
			
		}
		
		MESBasic.container.container.newContainerEdit.getMultiselectCallBackInfo_DG = function(obj){
			for(var i=0;i<obj.length;i++){
				CUI.commonFillsMultiselect_DG(MESBasic.container.container.newContainerEdit._oGrid, MESBasic.container.container.newContainerEdit._currRow, MESBasic.container.container.newContainerEdit._key, MESBasic.container.container.newContainerEdit._displayFieldName, obj[i])
			}
			try{
				if(MESBasic.container.container.newContainerEdit._customCallBack) {
					eval(MESBasic.container.container.newContainerEdit._customCallBack);
					MESBasic.container.container.newContainerEdit._customCallBack = null;
				}
			} catch(e){alert('${getText('ec.view.callback.error')}');}

			// 助记码也会调用此方法，容错处理
			try{
				MESBasic.container.container.newContainerEdit._dialog.close();
			} catch(e){}
		};
		
		MESBasic.container.container.newContainerEdit.generateInput = function(prefix, obj) {
			CUI.each(obj, function(key,value){
				if(value!=null && key!='rowHtmlObj' && key!='cellHtmlObj'){
					var name = prefix + '.' + key;
					if(typeof value == 'object') {
						MESBasic.container.container.newContainerEdit.generateInput(name, value);
					} else {
						if(value!=null&&value!='null'&&value!=undefined&&value!='') {
							CUI('input[name="' + name + '"]').remove();
							CUI('<input type="hidden" name="'+name+'" value="'+value+'">').appendTo(CUI('#MESBasic_container_container_newContainerEdit_form'));
						}
					}
				}
			});
		};

		$(function(){
			MESBasic.container.container.newContainerEdit.onloadForProduct();
			// 液相密度修正公式增加helpInfo提示
addHelpInfo("container_liquidDensityFactor");
// 气相密度修正公式增加helpInfo提示
addHelpInfo("container_gasDensityFactor");
formatFactor();
		});

		MESBasic.container.container.newContainerEdit.beforeSubmitMethodSettingInPage = function(){
			MESBasic.container.container.newContainerEdit.onsaveForProduct();
			// 体积计算公式
var factor = $('#container_volumneCalc').val();
var flag = true;
if(null == factor || factor.length==0){
    // do nothing
}else{
    // 计算公式合法性校验
    flag = fn(factor, fields);

    if (flag) {
        // 模拟计算
        if (!testFormula(factor, fields)) {
            workbenchErrorBarWidget.showMessage("<b>储量(m³)计算公式</b>错误！");
            return false;
        }
    } else {
        workbenchErrorBarWidget.showMessage("<b>储量(m³)计算公式</b>错误！");
        return false;
    }
    ContainerExp_dg1553144257690Widget.setAllRowEdited();
}

/* 密度修正公式校验start */
var errorMsg = "";
// 液相密度修正公式
var liquidDensityFactor = $('#container_liquidDensityFactor').val();
// 气相密度修正公式
var gasDensityFactor = $('#container_gasDensityFactor').val();

if (liquidDensityFactor != "" && liquidDensityFactor.trim().length > 0) {
    flag = commonFactorCheck(liquidDensityFactor, testFields);
    if(!flag){
        errorMsg += "<b>液相密度修正公式</b>错误！</br>";
    }
}

if (gasDensityFactor != "" && gasDensityFactor.trim().length > 0) {
    flag = commonFactorCheck(gasDensityFactor, testFields);
    if(!flag){
        errorMsg += "<b>气相密度修正公式</b>错误！</br>";
    }
}

if (errorMsg != "") {
    workbenchErrorBarWidget.showMessage(errorMsg);
    return false;
}
/* 密度修正公式校验end */
		};
		MESBasic.container.container.newContainerEdit.beforeSubmitMethod = function(){
			<#if pending?? && pending.loop?? && pending.loop gt 0>
			if(CUI("#__workflow_outcome_countersign").prop("checked")){
				CUI('#__workflow_countersign_people').val(CUI('#countersignUsersMultiIDs').val());
			}
			</#if>
			

			var customOnsaveResult =  MESBasic.container.container.newContainerEdit.beforeSubmitMethodSettingInPage();
			if(customOnsaveResult === false) {
				return customOnsaveResult;
			}
			return customOnsaveResult;
		};
		</script>
		<script type="text/javascript">
		MESBasic.container.container.newContainerEdit.showBusinessList = function(relatingModelCode,mainEntityId,businessCenterCode,url,showType){
			var id="#otherContentDiv_"+relatingModelCode;
			if(url.indexOf('?')==-1){
				url+="?mainBusinessId="+mainEntityId+"&businessCenterCode="+businessCenterCode;
			}else{
				url+="&mainBusinessId="+mainEntityId+"&businessCenterCode="+businessCenterCode;
			}
			if(showType == 'PART') {
				url += "&viewShowType=" + showType;
			}
			url += "&useInBusiness=yes";
			$('div[id^="otherContentDiv_"]').each(function(){
				CUI(this).hide();
			});
			CUI(id).show();
			if(CUI(id).html() == null || $.trim(CUI(id).html()) == ""){
				CUI(id).load(url);
				setTimeout(function(){
					CUI("#MESBasic_container_container_newContainerEdit_main_div").hide();
				},100);
			}else{
			    CUI(id).load(url);
				setTimeout(function(){
				CUI("#MESBasic_container_container_newContainerEdit_main_div").hide();
				},100);
				//CUI("#MESBasic_container_container_newContainerEdit_main_div").hide();
			  	//$('body').trigger('resize');
			}
			setTimeout(function(){
				//try{closeLoadPanel();}catch(e){}
			},1000);
		};
		MESBasic.container.container.newContainerEdit.showThis = function(){
			if(!CUI("#MESBasic_container_container_newContainerEdit_main_div").is(':visible')) {
				CUI("#MESBasic_container_container_newContainerEdit_main_div").show();
				CUI('div[id^="otherContentDiv_"]').each(function(){
					CUI(this).hide();
				});
				$('body').trigger('resize');
			}
		};
		function reload(){
			window.location.reload();
		}
		
		MESBasic.container.container.newContainerEdit.showAudit=function(){
			<#if !id?? || editNew>
			CUI.Dialog.alert("${getText("foundation.base.audit.nolog")}")
			<#else>
			MESBasic.container.container.newContainerEdit.auditDialog = new CUI.Dialog({
				title : "${getText("foundation.base.audit")}",
				iframe : "MESBasic_container_container_newContainerEdit_auditInfo",
				modal:true,
				url : "/audits/auditLogQuery/auditInfo.action?${getPowerCode('base_auditLogQuery_self')}&auditLog.module=MESBasic&modelName=MESBasic_1_container_Container&businessKey=${id!}",
				height:600,
				width: 1024,
				buttons:[
						{	name:"${getText("foundation.common.closed")}",
							handler:function(){this.close()}
						}]
			});
			MESBasic.container.container.newContainerEdit.auditDialog.show();
			</#if>
		}
		
		
		MESBasic.container.container.newContainerEdit.showInfoDialog=function(mode){
			
			MESBasic.container.container.newContainerEdit.infoDialog = new CUI.Dialog({
				title: "${getText("ec.view.info.view")}",
				elementId: "MESBasic_container_container_newContainerEdit_dealInfo",
				modal:true,
				height:500,
				width: 850,
				buttons:[
						{	name:"${getText("foundation.common.closed")}",
							handler:function(){this.close()}
						}]
			});
			MESBasic.container.container.newContainerEdit.infoDialog.show();
		
			if(mode=='flow'){
				CUI("#flowHead").click();
			}else if(mode=='fileUpload'){
				CUI("#fileUploadHead").click();
			}else if(mode=='dealInfo'){
				CUI("#dealInfoHead").click();
			}
		
		}
		MESBasic.container.container.newContainerEdit.showFileUpload=function(){
			if(CUI.trim(CUI("#fileUploadDiv").html())==""){
			CUI("#fileUploadDiv").load("/foundation/workbench/fileupload-new-init.action?linkId=${fileuploadLinkId!-1}&type=${fileuploadType!'Table'}&entityCode=MESBasic_1_container");
			}
		}
		
		MESBasic.container.container.newContainerEdit.showDealInfo=function(){
			if(CUI.trim(CUI("#dealInfoDiv").html())==""){
				CUI("#dealInfoDiv").load("/ec/workflow/dealInfo.action?expandDealInof=true&dealInfoGroup=byTime&dealDataUrl=/MESBasic/container/container/dealInfo-list.action&dlTableInfoId=${(container.tableInfoId)?default('')}");
			}
		}
		MESBasic.container.container.newContainerEdit.showFlowInfo=function(){
		     //IE8环境下使用旧版flash流程展现页面，其他情况使用html5流程展现页面
		    var browser=navigator.appName; 
			var b_version=navigator.appVersion; 
			var version=b_version.split(";"); 
			var trim_Version=version[1]&&version[1].replace(/[ ]/g,"");
			var isIE8=(browser=="Microsoft Internet Explorer" && trim_Version=="MSIE8.0");
			if(CUI.trim(CUI("#flowDiv").html())==""){
				if(isIE8){
				    CUI("#flowDiv").load("/ec/workflow/flowView.action?env=runtime&modelCode=MESBasic_1_container_Container&deploymentId=${deploymentId?default('')}&fvTableInfoId=${(container.tableInfoId)?default('')}");
				}else{
				    CUI("#flowDiv").load("/ec/workflow/flowViewH5.action?env=runtime&modelCode=MESBasic_1_container_Container&deploymentId=${deploymentId?default('')}&fvTableInfoId=${(container.tableInfoId)?default('')}");
				}		
			}else{
			  if(!isIE8){
			    //h5展现的情况下需重新适应视图大小
			    setTimeout(function(){
			      $("#flowH5Frame").contents().find("#resetFitView").trigger("click");//视图自适应容器大小 
			    },100); 
			  } 
			}
		}
		MESBasic.container.container.newContainerEdit.supervision=function(){
			MESBasic.container.container.newContainerEdit.modifyOwnerStaffDialog = new CUI.Dialog({
					title: "${getText("ec.flow.supervision.modifyPending")}",
					url: "/ec/workflow/modifyPendingStaff.action?tableInfoId=${(container.tableInfoId)?default('')}&pendingId=${pendingId!}",
					modal:true,
					type:4,
					buttons:[
							{	name:"${getText("foundation.common.closed")}",
								handler:function(){this.close()}
							}]
				});
				MESBasic.container.container.newContainerEdit.modifyOwnerStaffDialog.show();
		}
		
function expressionClick(){
	if(window.location.href.indexOf("newContainerEdit") != -1){
		var url = "/MESBasic/container/functionInfo/expressionEdit.action";
		var selectDialog = new CUI.Dialog({
			title : "计算公式",
			url : url,
			type : 3,
			buttons : [
				{ 
					name : "清 空",
					handler : function(){
						$("[name='functionInfo.expression']").val('');
						document.getElementById("functionInfo_expression").focus();
					}
				},
				{ 
					name : "${getHtmlText('common.button.save')}",
					handler : function(){
						if(submitFormula()){
							this.close();
						}
					}
				},{ 
					name : "${getHtmlText('common.button.cancel')}",
					handler : function(){
						this.close();
					}
				}
			]
		});
		selectDialog.show();	
	}
}









		/* CUSTOM CODE START(view-EDIT-MESBasic_1_container_newContainerEdit,js,MESBasic_1_container_Container,MESBasic_1) */
// 自定义代码

        /**
         * 处理方式 默认保存不关闭
         * saveAndExit    保存并关闭
         * saveAndNew     保存并新建
         */
        var saveDealSuccessFlag = "";

        // 模拟计算体积时, 默认将未知数用以下值代入
        var fields = {
            'L' : 1000,
            'R' : 1,
            'H' : 1
        };

        // 模拟计算密度修正公式时, 默认将未知数用以下值代入
        var testFields = {
            'D': 1,
            'P': 1
        };

        var columnMap = {};

        $(function(){
            columnMap['半径(m)'] = 'radius';
            columnMap['罐高(m)'] = 'tankHeight';
            columnMap['实际液位(m)'] = 'level';
            columnMap['查表密度(kg/m³)'] = 'density';
            columnMap['压强(Mpa)'] = 'pressure';
        });

        /**
         * 容器保存后不关闭页面
         */
         MESBasic.container.container.newContainerEdit._callBackInfo = function(res){
            if(res.dealSuccessFlag){
                var showMsg ;
                if(res.operateType == 'save'){
                    showMsg = "保存成功";
                }else{
                    showMsg = "处理成功！";
                }

                //提交成功时隐藏之前的错误信息
                workbenchErrorBarWidget.close();

                if(containerLoadPanelWidget && containerLoadPanelWidget.loading && YUD.get("loading_wrap")){
                    YUD.get("loading_wrap").innerHTML = "<div class='success-middle'></div>" ;
                }

                try{
                    window.opener.refreshPortal('workflow');
                    window.opener.timeData();
                }catch(e){
                    try{
                        window.opener.MESBasic.container.container.editCallBackInfo(res); 						
                    }catch(e2){
                        try{
                            if(typeof window.opener.refViewRefresh == 'function'){
                                window.opener.refViewRefresh()
                            } else {
                                window.opener.location.reload();
                            }
                        }catch(e3){}
                    }
                };

                /* custom code start */
                setTimeout(function(){

                    if(saveDealSuccessFlag == ""){
                        // 保存不关闭
                        document.location.href = 
                        '/MESBasic/container/container/newContainerEdit.action?entityCode=MESBasic_1_container&namespace=list_operate_container_newContainerList&id=' 
                        + res.id 
                        + '&__pc__=${(Parameters.__pc__)!}';
                    }else if(saveDealSuccessFlag == "saveAndExit"){
                        // 保存并关闭
                        window.close();
                    }else if(saveDealSuccessFlag == "saveAndNew"){
                        // 保存并新建
                        var currentUrl = "http://" + location.host + "/MESBasic/container/container/newContainerEdit.action?entityCode=MESBasic_1_container&__pc__=${(Parameters.__pc__)!}";
                        window.location.href = currentUrl;
                    }


                },1000);
                /* custom code end */

            } else {
                CUI.showErrorInfos(res);
            }
        };

        /**
         * 绑定单元格点击事件
         */
        function bindClickEvent(event){
            $("#ContainerExp_dg1553144257690_tbody td[key='name']").click(function(event) {
                var widget = ContainerExp_dg1553144257690Widget;
                var selectedValue = $(this).find("div").html()
                if(selectedValue.indexOf("<select") != -1) {
                    return;
                }

                var options = "<option value =\"\"></option>";
                for(var key in columnMap){
                    if(selectedValue && selectedValue == key) {
                        options += "<option value =\"" + columnMap[key] + "\" selected>" + key + "</option>";
                    }else{
                        options += "<option value =\"" + columnMap[key] + "\">" + key + "</option>";
                    }
                }

                $(this).html(
                    "<div style=\"width:100px;\"><select class=\"td-select\" style=\"margin-top:-2px;margin-bottom:-2px;width:100px;border-width:0px;outline:0px;\">" +
                    options +
                    "</select></div>"
                );
                $(".td-select").focus();

                $(".td-select").click(function(event) {
                    return false;
                }).change(function() {
                    var str = $(this).find("option:selected").html();
                    widget.setCellValue(widget.getSelectedRow(), 'name', str);
                    widget.setCellValue(widget.getSelectedRow(), 'code', columnMap[str]);
                }).blur(function() {
                    var str = $(this).find("option:selected").html();
                    widget.setCellValue(widget.getSelectedRow(), 'name', str);
                    widget.setCellValue(widget.getSelectedRow(), 'code', columnMap[str]);
                })
                //$("td[key='name']").css("text-align", 'center');
            });
        }

        // 公式保存
        function submitFormula(){
            // 将公式编辑框中的公式填充到父页面
            var flag = true;
            var expression = $("#functionInfo_expression").val().trim();
            if (expression == "") {
                $("[name='container.volumneCalc']").val("");
                return true;
            } 

            flag = fn(expression, fields);
            if (flag) {
                if (testFormula(expression, fields)) {
                    $("[name='container.volumneCalc']").val(expression);
                    return true;
                } else {
                    MESBasic_container_functionInfo_expressionEdit_formDialogErrorBarWidget.showMessage("计算公式错误!");
                    return false;
                }
            } else {
                MESBasic_container_functionInfo_expressionEdit_formDialogErrorBarWidget.showMessage("计算公式错误!");
                return false;
            }

        }

        // 测试计算公式
        function testFormula(formula, fields){
            var L = fields['L'], R = fields['R'], H = fields['H'];

            var π = Math.PI; 

            var asin = function(arg){
                return Math.asin(arg);
            }

            var pow = function(arg1, arg2){
                return Math.pow(arg1, arg2);
            }

            try{
                var result = eval(formula);
                if (isNaN(result)) {
                    return false;
                }
            }catch(e){
                return false;
            }
            return true;
        }

        // 校验计算公式的合法性
        function fn(string, obj) {
            // 剔除空白符
            string = string.replace(/\s/g, '');
            // 错误情况，空字符串
            if("" === string) {
                return false;
            }
            // 错误情况，运算符连续
            if(/[\+\-\*\/]{2,}/.test(string)) {
                return false;
            }
            // 空括号
            if(/\(\)/.test(string)) {
                return false;
            }
            // 错误情况，括号不配对
            var stack = [];
            for(var i = 0, item; i < string.length; i++) {
                item = string.charAt(i);
                if('(' === item) {
                    stack.push('(');
                } else if(')' === item) {
                    if(stack.length > 0) {
                        stack.pop();
                    } else {
                        return false;
                    }
                }
            }
            if(0 !== stack.length) {
                return false;
            }
            // 错误情况，(后面是运算符 
            if(/\([\+\-\*\/]/.test(string)) {
                return false;
            }
            // 错误情况，)前面是运算符
            if(/[\+\-\*\/]\)/.test(string)) {
                return false;
            }
            // 错误情况，(前面不是运算符, 不包括(前面是 (|Math.pow|Math.PI|Math.sin|Math.asin|,|if|{ 的情况
            if(/[^\+\-\*\(\Math.pow\Math.PI\Math.sin\Math.asin\,\if\{\/]\(/.test(string)) {
                return false;
            }
            // 错误情况，)后面不是运算符, 不包括)后面是 )|,|{|} 的情况
            if(/\)[^\+\-\*\)\,\{\}\/]/.test(string)) {
                return false;
            }
            // 是否包含除0错误
            if(/\/0/.test(string)) {
                return false;
            }
            // 是否包含[、]、{、}错误
            if(/\[|\]/.test(string)) {
                return false;
            }

            // 公式中含有if else时, 必须以}结束
            if(string.indexOf("if") != -1 && !string.endsWith("}")) {
                return false;
            }

            // 错误情况，变量没有来自“待选公式变量”
            var tmpStr = string.replace(/[\(\)\+\-\*\,\<\>\=\{\}\/]{1,}/g, '`');
            var array = tmpStr.split('`');
            for(var i = 0, item; i < array.length; i++) {
                item = array[i];
                // 排除PI、pow、sin、asin等情况
                var itemFlag = item != 'π' && item != 'pow' && item != 'Math.pow' && item != 'asin' && item != 'sin' && item != 'if' && item != 'else';
                if(itemFlag && /[A-Z]/i.test(item) && 'undefined' === typeof(obj[item])) {
                    return false;
                }
            }
            return true;
        }

        // 公式校验通用函数
        function commonFactorCheck(string, obj) {
            // 剔除空白符
            string = string.replace(/\s/g, '');
            // 错误情况，空字符串
            if("" === string) {
                return false;
            }
            // 错误情况，运算符连续
            if(/[\+\-\*\/]{2,}/.test(string)) {
                return false;
            }
            // 空括号
            if(/\(\)/.test(string)) {
                return false;
            }
            // 错误情况，括号不配对
            var stack = [];
            for(var i = 0, item; i < string.length; i++) {
                item = string.charAt(i);
                if('(' === item) {
                    stack.push('(');
                } else if(')' === item) {
                    if(stack.length > 0) {
                        stack.pop();
                    } else {
                        return false;
                    }
                }
            }
            if(0 !== stack.length) {
                return false;
            }
            // 错误情况，(后面是运算符 
            if(/\([\+\-\*\/]/.test(string)) {
                return false;
            }
            // 错误情况，)前面是运算符
            if(/[\+\-\*\/]\)/.test(string)) {
                return false;
            }
            // 错误情况，(前面不是运算符
            if(/[^\+\-\*\/]\(/.test(string)) {
                return false;
            }
            // 错误情况，)后面不是运算符
            if(/\)[^\+\-\*\/]/.test(string)) {
                return false;
            }
            //是否包含除0错误
            if(/\/0/.test(string)) {
                return false;
            }
            //是否包含[、]、{、}错误
            if(/\[|\]|{|}/.test(string)) {
                return false;
            }
            // 错误情况，变量没有来自“待选公式变量”
            var tmpStr = string.replace(/[\(\)\+\-\*\/]{1,}/g, '`');
            var array = tmpStr.split('`');
            for(var i = 0, item; i < array.length; i++) {
                item = array[i];
                if(/[A-Z]/i.test(item) && 'undefined' === typeof(obj[item])) {
                    return false;
                }
            }

            // 模拟计算
            var D = testFields['D'];
            var P = testFields['P'];
            try{
                var result = eval(string);
                if (isNaN(result)) {
                    return false;
                }
            }catch(e){
                return false;
            }

            return true;
        }

        // 保存时维护日志不提交
        function savedg1555312971656DataGrid(){}
        // 保存时进出记录不提交
        function savedg1555312985524DataGrid(){}

        // 增加helpInfo提示
        function addHelpInfo(obj){
            var spanId;
            var divId;
            var msg1;
            if (obj == "container_liquidDensityFactor") {
                // 液相密度修正公式
                spanId = "liquidDensityFactorHelpinfo";
                divId = "liquidDensityFactorHelpinforef";
                msg1 = "用于计算实际的液体密度值，密度修正公式为空时，直接采用查表密度。";
            } else {
                // 气相密度修正公式
                spanId = "gasDensityFactorHelpinfo";
                divId = "gasDensityFactorHelpinforef";
                msg1 = "用于计算实际的气体密度值，密度修正公式为空时，直接采用查表密度。";
            }

            // 插入问号图标
            var spanElement = '<span id=\"' + spanId + '\" class=\"baphelp-icon helptip-mark\"></span>';
            $(document.getElementById(obj)).parent().parent().prev().children().eq(0).after(spanElement);
            $(document.getElementById(obj)).parent().parent().prev().children().eq(0).css('width', '70%');

            var msg2 = "范例";
            var msg3 = "比如，气体的密度计算公式为：实际密度=查表密度*（压强*10+1），则在输入框中可以填“D*(P*10+1)”。"
            var msg4 = "默认用字母P表示压强，字母D表示查表密度。";
            // 插入提示信息
            var divElement = '<div id=\"' + divId + '\" style=\"display:none\"><p class=\"helpInfo-info\">' 
                + msg1 + '</p><p class=\"helpInfo-example\">'
                + msg2 + '</p><div class=\"helpInfo-code\"><span>'
                + msg3 + '</span></div><p class=\"helpInfo-hint\">'
                + msg4 + '</p></div>';
            $(document.getElementById(spanId)).after(divElement);
            // 增加点击事件
            $(document.getElementById(spanId)).helptip({refElm: "#" + divId, html: true , isCustom :false, width: 460 , title :"说明"});

        }

        function formatFactor() {
            var factor = $("#container_volumneCalc").val();
            var html;
			if(factor.trim().length == 0){
            	return false;
            }
            factor = parseKatexFactor(factor);
            // 渲染公式
            try {
                html = katex.renderToString(factor, {
                    throwOnError: false
                });
            } catch (e) {
                console.log(e);
            }
            $("label[value*='MathJaxArea']").html(html);

        }
/* CUSTOM CODE END */
		MESBasic.container.container.newContainerEdit.onloadForProduct = function(){
		/* CUSTOM CODE START(view-EDIT-MESBasic_1_container_newContainerEdit,onloadForProduct,MESBasic_1_container_Container,MESBasic_1) */
// 自定义代码

/* CUSTOM CODE END */
		}

		MESBasic.container.container.newContainerEdit.onsaveForProduct = function(){
		/* CUSTOM CODE START(view-EDIT-MESBasic_1_container_newContainerEdit,onsaveForProduct,MESBasic_1_container_Container,MESBasic_1) */
// 自定义代码

/* CUSTOM CODE END */		
		}
		
		</script>
		<script type="text/javascript">
		
		var __last_click_item = null;
		$(".edit-tabs li").click(function(){
			var li = $(this);
			var ul=$("#flowHead").parent()[0];
			if(__last_click_item != null){
				$(ul).children().eq(__last_click_item).next().addClass("bar");
			}
			if(__last_click_item == null){
				__last_click_item = li.index();
			}
			__last_click_item = li.index();
			if(li.index() == ($(".edit-tabs li").length-1)){
			}else{
				li.next().removeClass("bar");
			}
			if(li.index() != 0){
				li.addClass("bar");
			}
			// 触发 resize 事件, 解决用户在其他页签下缩放窗口后，再切换回来时pt等元素宽度会对不上
			setTimeout( function(){
				$(window).trigger('resize');
			}, 100)
		})
		
		</script>
		<script type="text/javascript">
			$(function(){
				$(".edit-btn").hover(
				  function () {
					$(this).addClass("edit-btn-hover");
				  },
				  function () {
					$(this).removeClass("edit-btn-hover");
				  });
				  $(".edit-btn").mousedown(
				  function () {
					$(this).addClass("edit-btn-click");
				  });
				  $(".edit-btn").mouseup(
				  function () {
					$(this).removeClass("edit-btn-click");
				  });
			})
		</script>
		</@s.form>
		<#if businessCenterList??&&businessCenterList?size gt 0 >
		<script type="text/javascript">
			$(function(){
				$(".col-sub").css("display","block");
				$(".main-wrap").css("margin-left",145);
			})
		</script>
		<div class="col-sub">
			<div id="edit_side_btn" class="edit-side-btn"></div>
			<div class="edit-sidebar" id="edit_sidebar" style='height:1000px;'>
			<div class="edit-sidebar-inner" style='height:1000px;'>
				<div class="sidebar-top"><a href="#"  onclick="MESBasic.container.container.newContainerEdit.showThis()">${getText("ec.view.tableInfo")}</a></div>
				<div class="sidebar-line"></div>
				<div class="sidebar-list">
					<ul>
						<#list businessCenterList as l>
						 <li>
							<#if editNew>
							    <a href="#"  onclick="return false;" style="color:#A9A9A9;cursor:default;" title="${getText(l.showName)!}">${getText(l.showName)!}</a>
							<#else>
								<a href="#"  onclick="MESBasic.container.container.newContainerEdit.showBusinessList('${l.relatingModel.code.replace('.','')}',${(container.id)!},'${l.code}','${l.assview.url}?${getPowerCode(l.assview.code+'_self')}','${l.assview.showType}')" title="${getText(l.showName)}(${(l.count)!})">${getText(l.showName)}(${(l.count)!})</a>
							</#if>
						</li>
					    </#list>
					</ul>
				</div>
			</div>
			</div>				
		</div>
		</#if>
		
	<div id="printSettingDiv" style="display:none;width:100%;height:100%;text-align:center">
		<input type="hidden" id="printCookie_id" />
		<input type="hidden" id="printCookie_version" />
		<table width="100%" height="100%" align="center" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td class="td_right">
					<input type="checkbox" name="mainContent" id="mainContent" checked="checked" />
				</td>
				<td class="td_left">
					<label>正文</label>
				</td>
				<td class="td_right" name="att">
					<input type="checkbox" name="attachmentInfo" id="attachmentInfo" checked="checked"/>
				</td>
				<td class="td_left" name="att">
					<label>附件信息</label>
				</td>
				<td class="td_right" name="deal">
					<input type="checkbox" name="dealInfo" id="dealInfo" checked="checked"/>
				</td>
				<td class="td_left" name="deal">
					<label>处理意见</label>
				</td>
			</tr>
		</table>
	</div>
		<!--[if IE 6]><div style="clear:both;"></div><![endif]-->
		<iframe style="display:none;" id="downloadFrame" src="about:blank"/>
	</body>
</html>
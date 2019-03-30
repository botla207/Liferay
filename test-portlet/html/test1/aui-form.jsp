<%@ include file="/html/init.jsp"%>



<portlet:actionURL var="auiActionURL" name="auiAction"></portlet:actionURL>

<aui:form name="basic" id="basic"  action="${auiActionURL}" enctype="multipart/form-data">

	<aui:input label="First Name" name="firstName" id="firstName" type="text"/>
	
	<aui:input label="Age" name="age" id="age" type="text"/>
	
	<aui:field-wrapper label="Is Major">
	
		<aui:input label="Yes" name="isMajor" id="isMajor" type="radio" />
		
		<aui:input label="No" name="isMajor" id="isMajor" type="radio" />
		
	</aui:field-wrapper>
	
	<aui:input label="DOB" name="dob" id="dob" type="date"/>

	<aui:button name="saveButton" type="submit" value="save"></aui:button>
</aui:form>

<style>

input{
    height: 30px !important;
    border-radius: 4px !important;
}

</style>

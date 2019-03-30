<%@ include file="/html/init.jsp"%>



<portlet:actionURL var="basicActionURL" name="basicAction"></portlet:actionURL>

<form name="basic" id="basic"  action="${basicActionURL}" enctype="multipart/form-data">

	Age New:<input name="age" id="age" type="text"/>

	<input type="submit" value="save"/>
</form>

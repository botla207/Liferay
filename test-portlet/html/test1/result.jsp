<%@ include file="/html/init.jsp"%>

<portlet:renderURL var="backURL"/>

<a href="<%=backURL.toString()%>">Back</a> 

<table id="basicDataId" border="1" >
	
		<thead>
	
				<tr>
					<td><liferay-ui:message key="firstName" /></td>
					<td><liferay-ui:message key="age" /></td>
					<td><liferay-ui:message key="major" /></td>
					<td><liferay-ui:message key="DOB" /></td>
				</tr>
	   </thead>
	   
	   <tbody>
	   			<tr>
					<td>Ashok</td>
					<td>15</td>
					<td>yes</td>
					<td>13/5/1995</td>
				</tr>
	   
	   			<tr>
					<td>Ashok</td>
					<td>15</td>
					<td>yes</td>
					<td>13/5/1995</td>
				</tr>
				
				<tr>
					<td>Ashok</td>
					<td>15</td>
					<td>yes</td>
					<td>13/5/1995</td>
				</tr>
	   
	   
	   </tbody>

</table>

<script>

$(document).ready( function(){
	
	$("#basicDataId").DataTable({
		
	});
	
});

</script>

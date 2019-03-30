<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@ include file="/html/init.jsp"%>


<%

String tabs=ParamUtil.get(request, "primaryParam", "one");
%>

tabs::<%=tabs%>

<portlet:renderURL var="tabsURL"/>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<div class="tabbable tabs-left">
	<div class="col-md-3 abc">
		<liferay-ui:tabs names="auiForm,basicForm" refresh="true" 
					tabsValues="one,two" url="<%=tabsURL.toString()%>" param="primaryParam">
	</div>					
	<div class="col-md-9">
	
			<c:if test='<%=tabs.equalsIgnoreCase("one")%>'>
				<%@ include file="aui-form.jsp" %>
	
			</c:if>
			<c:if test='<%=tabs.equalsIgnoreCase("two")%>'>
				<%@ include file="basic-form.jsp" %>
	
			</c:if>
	
		</div>		
	
		</liferay-ui:tabs>
	</div>
	

	<style>
	
	.abc ul.nav.nav-tabs li {
    width: 100%;
}
	
	
	</style>
	
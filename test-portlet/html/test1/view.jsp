<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@ include file="/html/init.jsp"%>


<%

String tab=ParamUtil.get(request, "anyParam", "one");
%>

tab::<%=tab%>

<portlet:renderURL var="tabsURL"/>



<liferay-ui:tabs names="basic,javascript,jquery,angular" refresh="true" 
					tabsValues="one,two,three,four" url="<%=tabsURL.toString()%>" param="anyParam">

</liferay-ui:tabs>

<c:if test='<%=tab.equalsIgnoreCase("one")%>'>
		<%@ include file="horizontalInfo.jsp" %>
	
	</c:if>
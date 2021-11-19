<%@ page import="springmvcdemo.utils.SecurityUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div>

	<ul>
		<security:authorize access = "isAnonymous()">
			<li><a class="nav-link" href="<c:url value='/login'/>">Login</a></li>
			<li><a class="nav-link" href="#">Register</a></li>
		</security:authorize>
		<security:authorize access = "isAuthenticated()">
			<li>Wellcome <%=SecurityUtils.getPrincipal().getFullName()%></li>
			<li><a class="nav-link" href="<c:url value='/logout'/>">Logout</a></li>
		</security:authorize>
	</ul>

</div>
	
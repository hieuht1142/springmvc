<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<meta charset="UTF-8">
</head>
<body>
	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<div class="text-light"><a class="text-light" href="?language=en">English</a> | <a class="text-light" href="?language=vn">Vietnamese</a></div>
				<span class="login100-form-title p-b-41"> Account Login </span>
				<c:if test="${param.incorrectAccount != null}">
					<div class="alert alert-danger">	
							Incorrect Account
					</div>
				</c:if>
				<c:if test="${param.accessDenied != null}">
					<div class="alert alert-danger">	
							Access Denied
					</div>
				</c:if>
				<form class="login100-form validate-form p-b-33 p-t-5" action="j_spring_security_check" method="POST">

					<div class="wrap-input100 validate-input"
						data-validate="Enter username">
						<input class="input100" type="text" name="j_username"
							placeholder="User name"> <span class="focus-input100"
							data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter password">
						<input class="input100" type="password" name="j_password"
							placeholder="Password"> <span class="focus-input100"
							data-placeholder="&#xe80f;"></span>
					</div>

					<div class="container-login100-form-btn m-t-32">
						<button type="submit" class="login100-form-btn">Login</button>
					</div>

				</form>
			</div>
		</div>
	</div>

	<div id="dropDownSelect1"></div>
</body>
</html>
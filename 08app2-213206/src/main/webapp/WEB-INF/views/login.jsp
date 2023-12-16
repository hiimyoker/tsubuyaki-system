<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/style.css">
<title>Login Page</title>
</head>

<body>
	<!-- hearder -->
	<h1>ログイン</h1>
	<!-- nav -->
	<nav>
	<ul>
		<li><a href="./">トップ</a></li>
	</ul>
	</nav>
	<br>
	<br>
	<div class="divform">
		<h3>Login</h3>
		<f:form action="login" method="POST" modelAttribute="LoginForm">
			<div style="color: red;">${message}</div>
			<div style="color: #F00;">
				<f:errors path="*"></f:errors>
			</div>
			<label for="id">LoginID</label>
			<br>
			<f:input type="text" path="id" />
			<br>
			<label for="id">Password</label>
			<br>
			<f:input type="password" path="pw" />
			<br>
			<input type="submit" value="ログイン" />
		</f:form>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/style.css">
<title>Tweet Form</title>
</head>

<body>
	<!-- hearder -->
	<h1>みなさのつぶやき</h1>
	<!-- menu -->
	<nav>
	<ul>
		<li><a href="./">トップ</a></li>
		<li><a href="./logout">ログアウト</a></li>
	</ul>
	</nav>
	<div class="content" style="background-color: #d2d2d3; !important; border-radius: 5px;!important">
		<p>Hello ${name}さん</p>
		<h3>つぶやく？</h3>
		<f:form action="tweet" method="POST" modelAttribute="TweetForm">
			<f:textarea cssClass="textarea" path="content" />
			<br>
			<input type="submit" value="つぶやく" />
		</f:form>
	</div>

</body>

</html>
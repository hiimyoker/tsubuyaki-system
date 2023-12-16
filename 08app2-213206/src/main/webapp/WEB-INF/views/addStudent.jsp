<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/style.css">
<title>Login Page</title>
</head>

<body>
	<!-- header -->
	<h1>新規登録</h1>
	<nav>
	<ul>
		<li><a href="./">トップ</a></li>
	</ul>
	</nav>
	<br>
	<br>
	<!-- body -->
	<div class="divform">
		 <h3>新規登録</h3>
		 <f:form action="signup" method="POST" modelAttribute="StudentForm">
			<f:input type="text" path="stid" placeholder="学籍番号"/> <br>
			<f:input type="text" path="name" placeholder="名前"/> <br>
			<f:select items="${deptItems}" path="depcode" required="required"
				itemValue="deptcode" itemLabel="deptname"/> <br>
			<f:input type="password" path="pw" placeholder="パスワード"/> <br>
			<f:input type="password" path="pw2" placeholder="パスワード確認"/> <br>
			<input type="submit" value="登録" />
		</f:form>
	</div>
</body>

</html>
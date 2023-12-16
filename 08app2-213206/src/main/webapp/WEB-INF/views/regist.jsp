<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/style.css">
<title>登録確認</title>
</head>

<body>
	<!-- hearder -->
	<h1>みなさのつぶやき</h1>
	<nav>
	<ul>
		<li><a href="./">トップ</a></li>
	</ul>
	</nav>
	<br>
	<br>
	<div class="regist">
		<h3>次のように登録しました</h3>
		<p>
			学籍番号： ${stid} <br>
			名前： ${name} <br>
			所属学科： ${dept} <br>
		</p>
	</div>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/style.css">
<title>みなさのつぶやき</title>
</head>

<body>
	<div class="header">
		<h1>みなさのつぶやき</h1>
	</div>
	
	<c:choose>
    <c:when test="${isLogin}">
    <nav>
		<ul>
			<li><a href="./tweetForm">つぶやく</a></li>
			<li><a href="./logout">ログアウト</a></li>
		</ul>
	</nav>
    </c:when>    
    <c:otherwise>
	<nav>
		<ul>
			<li><a href="./loginForm">ログイン</a></li>
			<li><a href="./addStudent">新規登録</a></li>
		</ul>
	</nav>
    </c:otherwise>
	</c:choose>
	<br>
	<!-- tweets content -->
	<div class="content">
		<c:choose>
			<c:when test="${isLogin}">
				<p>Hello ${name}さん</p>
			</c:when>
			<c:otherwise>
				<p>ログインしていません</p>
			</c:otherwise>
		</c:choose>
		<c:forEach var="tweet" items="${tweets}">
			<div class='tweet'>
				<p>
					${tweet.getContent()}
					<span class='username'>by ${tweet.getStudentName()}
						(${tweet.getDeptName()}, ${tweet.getTimeString()})</span>
				</p>
			</div>
		</c:forEach>
	</div>

</body>

</html>
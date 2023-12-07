<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%
		session.invalidate();  // 세션을 삭제한다.
	%>
	<a href="loginCheck.jsp">로그인 체크</a>
</body>
</html>
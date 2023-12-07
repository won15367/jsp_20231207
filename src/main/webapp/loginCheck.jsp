<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String memberID = request.getParameter("memberID");
		String memberPW = request.getParameter("memberPW");
		
		// 로그인 확인
		if( (memberID.equals("tiger")) & (memberPW.equals("12345")) ) {
			// 세션에 새 속성을 추가 (로그인한 아이디)	
			session.setAttribute("sessionID", memberID);
			session.setAttribute("sessionPW", memberPW);
			out.println("로그인 성공");
	%>
		<!-- if 문이 참일때만 밑에 html이 실행된다. -->
		<br>
		<a href="loginCheck2.jsp">로그인 체크 페이지로 이동</a>
		<br>
		<a href="logout2.jsp">로그아웃</a>			
	<%
		} else {
			out.println("로그인 실패");
	%>
		<br>
		<a href="loginCheck2.jsp">로그인 체크 페이지로 이동</a>
	<%
		}
	%>
	
	
	
</body>
</html>
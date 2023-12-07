<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 테스트</title>
</head>
<body>
	<%
		int sessionTime1 = session.getMaxInactiveInterval(); // 세션의 유효시간
		out.println("세션의 기본 유효시간: " + sessionTime1 + " 초<br>");
		
		session.setMaxInactiveInterval(600);
		int sessionTime2 = session.getMaxInactiveInterval();
		out.println("세션 유효시간 변경 후: " + sessionTime2 + " 초<br><br>");
	
		String sessionID = session.getId();
		Long firstTime = session.getCreationTime();
		Long lastTime = session.getLastAccessedTime();
		Long keepTime = (lastTime - firstTime)/60000; // 사이트에서 유지했던 시간을 분단위로 반환
	
		out.println("세션 아이디 : " + sessionID + "<br>");
		out.println("접속 시간 : " + keepTime + " 분<br>");
		
		out.println(firstTime + "<br>");
		out.println(lastTime);
	%>
</body>
</html>
<%@ page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String sessionID = (String) session.getAttribute("sessionID");
		String name;	
	
		if (sessionID == null) {
			out.println("로그인 정보 없음");
	%>
		<br><a href="login.jsp">로그인 페이지로 이동합니다.</a>
	<%
		} else {
			out.println(sessionID + "로 로그인 되었습니다.<br>");
			Enumeration ssion = session.getAttributeNames();
			
			while(ssion.hasMoreElements()) {
				// 세션들에 있는 속성들의 이름을 가져온다.
				name = ssion.nextElement().toString();
				out.println(name + ": ");
				out.println((String) session.getAttribute(name)+"<br>");
			}
		}
	%>
	<a href="sessionTest.jsp">세션테스트로 이동</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.*" %>
<%@ page import="com.javaex.vo.*" %>


<%
	
	

	//파라미터값 추출(4개)
	
	PhoneDao phoneDao = new PhoneDao();
	
	int personId = Integer.parseInt(request.getParameter("personId"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PhoneVo phoneVo = new PhoneVo(personId, name, hp, company);
	System.out.println(phoneVo);
	
	
	//dao에 update()를 이용하여 수정
	
	int count = phoneDao.personUpdate(phoneVo);
	
	//personUpdate(personVo)
	
	//리스트 리다이렉트

	response.sendRedirect("./list.jsp");


%>
    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
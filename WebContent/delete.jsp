<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.*" %>

<%
	
	PhoneDao phoneDao = new PhoneDao();
	//파라미터 꺼내기

	int personId =	Integer.parseInt(request.getParameter("personId"));
	System.out.println(personId);
	
	//삭제하기
	int count = phoneDao.personDelete(personId);
	System.out.println(count);

	//리다이렉트(리스트 요청)
	response.sendRedirect("./list.jsp");

%> 

<!-- html 태그 필요없음 -->
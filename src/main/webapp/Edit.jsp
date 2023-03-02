<%@page import="dto.MarksCard"%>
<%@page import="dao.MarksCardDao"%>
<%@page import="dto.Student"%>
<%@page import="dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
</head>
<body>
<% int regno=Integer.parseInt(request.getParameter("reg")); 
StudentDao dao=new StudentDao();
Student student=dao.find(regno);

int id=Integer.parseInt(request.getParameter("id")); 
MarksCardDao cardDao=new MarksCardDao();
MarksCard card=cardDao.find(id);
%>

</body>
</html>
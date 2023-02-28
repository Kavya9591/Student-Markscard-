<%@page import="dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Class</title>
</head>
<body>
<%Student student=(Student)session.getAttribute("student"); 
int std=student.getStandard();
%>
<h1>Select Class for which You want to Add Marks</h1><br>

<form action="AddMarks.jsp">
Select Class:
<select name="standard">
<option>8</option>
<%if(std>8) {%>
<option>9</option>
<% }%>
<%if(std>9) {%>
<option>10</option>
<% }%>
</select>
<br><br>
<button>Submit</button>
</form>
<br><br>
<a href="StudentHome.html"><button>Home</button></a>
</body>
</html>
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
<% 
int regno=Integer.parseInt(request.getParameter("reg")); 
StudentDao dao=new StudentDao();
Student student=dao.find(regno);

int id=Integer.parseInt(request.getParameter("id")); 
MarksCardDao cardDao=new MarksCardDao();
MarksCard card=cardDao.find(id);
%>
<h1>Enter Updated Details</h1>

<form action="updateMarks" method="post">

Name:<input type="text" name="name" value=<%=student.getName()%> readonly="readonly"><br>
Register Number:<input type="text" name="reg" value=<%=student.getRegno()%> readonly="readonly"><br>
Marks Id:<input type="text" name="id" value=<%=card.getId()%> readonly="readonly"><br>
Class:<input type="text" name="std" value=<%=card.getStandard()%> readonly="readonly"><br>
Mathematics Marks:<input type="number" name="maths" value="<%=card.getMathematics()%>"><br>
English :<input type="number" name="english" value="<%=card.getEnglish()%>"><br>
Science :<input type="number" name="science" value="<%=card.getScience()%>"><br>
Kannada :<input type="number" name="kannada" value="<%=card.getKannada()%>"><br>
Hindi :<input type="number" name="hindi" value="<%=card.getHindi()%>"><br>
Social Science :<input type="number" name="socialscience" value="<%=card.getSocialscience()%>"><br>
<br>
<button type="reset">Cancel</button>
<button>Update</button>
</form>

</body>
</html>
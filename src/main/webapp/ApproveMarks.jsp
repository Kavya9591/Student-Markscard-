+<%@page import="dto.MarksCard"%>
<%@page import="dto.Student"%>
<%@page import="java.util.List"%>
<%@page import="dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Approve Marks</title>
</head>
<body>
<% 
StudentDao dao=new StudentDao();
List<Student> list=dao.fetchAll();
%>
<table border="1">
<tr>
<th>Register Number</th>
<th>Name</th>
<th>Standard</th>
<th>Mathematics</th>
<th>Science</th>
<th>Kannada</th>
<th>Hindi</th>
<th>English</th>
<th>Social Science</th>
<th>Percentage</th>
<th>Result</th>
<th>Status</th>
<th>Change Status</th>
<th>Edit</th>
</tr>
<%for(Student student:list){ 
List<MarksCard> list1=student.getCards();
%>
<%for(MarksCard card:list1){ %>
<tr>
<th><%=student.getRegno() %></th>
<th><%=student.getName() %></th>
<th><%=card.getStandard() %></th>
<th><%=card.getMathematics() %></th>
<th><%=card.getScience() %></th>
<th><%=card.getKannada() %></th>
<th><%=card.getHindi() %></th>
<th><%=card.getEnglish() %></th>
<th><%=card.getSocialscience() %></th>
<th><%=card.getPercentage() %></th>
<th><%=card.getResult() %></th>
<th><%=card.isStatus() %></th>
<th><a href="changeStatus?id=<%=card.getId()%>"><button>Change Status</button></a></th>
<th><a href="Edit.jsp?reg=<%=student.getRegno()%>&id=<%=card.getId()%>"><button>Edit</button></a></th>
</tr>
<%} %>
<%} %>
</table>
<br><br>
<a href="TeacherHome.html"><button>Home</button></a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Enter <%=request.getParameter("standard") %> Class Details</h1><br>

<form action="saveMarks" method="post">
Class:<input type="text" name="std" value=<%=request.getParameter("standard")%> readonly="readonly"><br>
Mathematics Marks:<input type="number" name="maths"><br>
English :<input type="number" name="english"><br>
Science :<input type="number" name="science"><br>
Kannada :<input type="number" name="kannada"><br>
Hindi :<input type="number" name="hindi"><br>
Social Science :<input type="number" name="socialscience"><br>
<br>
<button type="reset">Cancel</button>
<button>Save</button>
</form>
<br>
<a href="StudentHome.html"><button>Home</button></a>
</body>
</html>
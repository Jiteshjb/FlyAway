<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
</head>
<body ><bgcolor=blue>
<h1>FlyAway by Jitesh Bohra</h1>

<div align="right">
<h3>
<a href="AdminPage.jsp">Admin's Login</a>
</h3>
</div>

<%
	@SuppressWarnings("unchecked")
	HashMap<String,String> user=(HashMap<String,String>)session.getAttribute("user");
	if(user!=null){
%>
<p>Welcome <%=user.get("name") %></p>
<a href="Logout">Logout</a>
<%
	}else{
%>
<a href=UserPage.jsp>User Login</a>
<%
	}
%>
<br><br>
<center>
<div style="border:5px solid blue;width:20%;border-radius:18px;padding:18px" align="center">
<form action=FlightList method=post>
<h3>
	<label for=from>From :-</label> <input type=text name=from id=from/><br><br>
	<label for=to>To :-</label> <input type=text name=to id=to/><br><br>
	<label for=departure>Departure :-</label> <input type=date name=departure id=departure/><br><br>
	<label for=travellers>Travellers :-</label> <input type=number name=travellers id=travellers/><br><br>
	<input type=submit value=Search /> <input type=reset />
	</h3>
</form>
</div>
</center>
</body>
</html>
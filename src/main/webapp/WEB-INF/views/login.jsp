<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>First Servlet From Jsp</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body bgcolor="lightblue">
	<%-- My First JSP<br> My name is ${name}<br> My password is ${password}
	<%
	java.util.Date d = new java.util.Date();
	%>
	<div>
		Date is
		<%=d%></div>--%>
	<div class="container">
	<div>
	<h3>Enter Login Details:</h3>
	</div>
	<br>
	<form class="form-inline" action="/login" method="post">
	<div class="form-group">
		<label for="name">Enter Name:</label>
		    <input type="text" class="form-control" name="name"/>
		</div>
		<br>
		<br>
		<div class="form-group">
		<label for="password">Enter Password:</label>
		<input type="password" class="form-control" name="password"/>
		</div>
		<br><br>
		<div>
		<input class="btn btn-success" type="submit" value="Login"/>
		</div>
		<br>
		<p><font color="red">${errorMessage}</font></p>
	</form>	
	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Todo List</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body >
	
<%@  include file="common/Navigation.jspf" %>	
	
	<div class="container">
		<table class="table table-striped ">
			<caption>Your Todos are:</caption>
			<thead>
				<tr>
					<th>ID</th>
					<th>User</th>
					<th>Description</th>
					<th>Target Date</th>
					<th>Is Completed?</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${todos}" var="todo">

					<tr>
						<td>${todo.id}</td>
						<td>${todo.user}</td>
						<td>${todo.desc}</td>
						<td><fmt:formatDate pattern="dd/MM/yyyy" value="${todo.targetDate}" /></td>
						<td>${todo.itDone}</td>
						<td><a href="/update-todo?id=${todo.id}" class="btn btn-info">Update</a>
							<a href="/delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a>
						</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
		<br>
		<div>
			<a class="btn btn-success" href="/add-todo">Add</a>
		</div>
	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>University Enrollments</title>
<link href="<c:url value="/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
<script src="<c:url value="/bootstrap/js/bootstrap.min.js" />"></script>
</head>


<body>
<div class="fluid-container">
	<div class="table-responsive col-md-4">
	<h2>List of Employees</h2>
	<br>
	<table class="table table-striped table-bordered">
		<tr>
			<td>NAME</td>
			<td>Joining Date</td>
			<td>Salary</td>
			<td>SSN</td>
			<td></td>
		</tr>
		<c:forEach items="${employees}" var="employee">
			<tr>
				<td>${employee.name}</td>
				<td>${employee.joiningDate}</td>
				<td>${employee.salary}</td>
				<td><a href="<c:url value='/edit-${employee.ssn}-employee' />">${employee.ssn}</a></td>
				<td><a
					href="<c:url value='/delete-${employee.ssn}-employee' />">delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	</div>
	</div>
	<div class="table-responsive col-md-4" style="clear:both">
	<a class="btn btn-primary" href="<c:url value='/new' />">Add New Employee</a>
	</div>
</body>
</html>
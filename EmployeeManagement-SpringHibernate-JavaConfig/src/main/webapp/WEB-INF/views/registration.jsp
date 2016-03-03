<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Registration Form</title>
<link href="<c:url value="/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/bootstrap/js/bootstrap.min.js" />"></script>
<style>
.error {
	color: #ff0000;
}
</style>

</head>

<body>

	
	<div class="container-fluid">
	<h2>Registration Form</h2><br>
		<div class="col-lg-4 col-md-4 col-sm-8 col-xs-12">
		<form:form method="POST" modelAttribute="employee">
			<form:input type="hidden" path="id" id="id" />
			<div class="form-group">
				<label for="exampleInputName">Name</label>
				<form:input id="name" path="name" cssClass="form-control"/> 
				<form:errors path="name" cssClass="help-block"/>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Joining Date:</label> 
				<form:input id="joiningDate" path="joiningDate" cssClass="form-control" /> 
				<form:errors path="joiningDate" cssClass="help-block"/>
			</div>
			<div class="form-group">
				<label for="exampleInputSalary">Salary</label> 
				<form:input id="salary" path="salary" cssClass="form-control" /> 
				<form:errors path="salary" cssClass="help-block"/>
			</div>
			<div class="form-group">
				<label for="exampleInputSalary">SSN:</label> 
				<form:input id="ssn" path="ssn" cssClass="form-control" /> 
				<form:errors path="ssn" cssClass="help-block"/>
			</div>
			<c:choose>
				<c:when test="${edit}">
					<input type="submit" value="Update" class="btn btn-primary" />
				</c:when>
				<c:otherwise>
					<input type="submit" value="Register" class="btn btn-primary" />
				</c:otherwise>
			</c:choose>
		</form:form>
		</div>


	</div>
	<br />
	<div class="container-fluid">
	<a class="btn btn-danger" href="<c:url value='/list' />">List of All Employees</a>
	</div>
</body>
</html>
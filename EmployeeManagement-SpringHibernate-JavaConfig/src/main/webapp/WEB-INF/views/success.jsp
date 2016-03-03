<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Confirmation Page</title>
<link href="<c:url value="/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
<script src="<c:url value="/bootstrap/js/bootstrap.min.js" />"></script>
</head>
<body>
<div class="container">
<br>
<p class="bg-success" style="line-height:40px;vertical-alogn:middle;text-align:center;">
	${success}
	</p>
	<br />
	<br />
	<a class="btn btn-primary" href="<c:url value='/list' />">List of All Employees</a>
</div>
</body>

</html>
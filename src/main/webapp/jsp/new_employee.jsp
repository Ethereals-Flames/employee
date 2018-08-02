<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Manager</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"></link>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/controller.js"></script>

</head>
<body>

<div class="pheader">
		<h1>EMPLOYEE MANANAGER</h1>
	</div>
	
	<div align="center">
		<div class="row1 clear" style="background-color:#ddd; padding:3px 10px; cursor: default;">
			<span style="font-weight:bold;text-align: left;">New Employee</span>
			
		</div>

		<form:form action="new" method="POST" modelAttribute="employee" id="newForm">
			<div class="display1">
				<i>Name:</i> <form:input path="name" required="required"/> <br>
				<i>Contact number:</i> <form:input path="contactNumber" required="required"/> <br>
				<i>Email address:</i> <form:input path="email" required="required"/> <br>
				<i>Address:</i> <form:input path="address" required="required"/> <br>
				<i>Degree/Collage:</i> <form:input path="degree" required="required"/> <br>
				<i>Salary:</i> <form:input path="salary" required="required"/> <br>
			</div>
			<div class="display1" style="text-align:center;">
				<a href="/demo/employees/" class="btn">Back to list</a>
				<input type="reset" value="Reset form" class="btn" />
				<input type="submit" value="Create employee" class="btn" />
			</div>
		</form:form>

	</div>


</body>
</html>
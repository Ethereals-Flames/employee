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
			<span style="font-weight:bold;text-align: left;">Employee</span>
			<button id="empDelete" class="btn-small-content" name="${employee.empId}" style="color: #a40000">Delete</button>
			<button id="empUpdate" class="btn-small-content" name="${employee.empId}" style="color: darkgreen">Update</button>
			
		</div>

		<div class="display1">
			<i>Name:</i> <span>${employee.name}</span> <br>
			<i>Contact number:</i> <span>${employee.contactNumber}</span> <br>
			<i>Email address:</i> <span>${employee.email}</span> <br>
			<i>Address:</i> <span>${employee.address}</span> <br>
			<i>Degree/Collage:</i> <span>${employee.degree}</span> <br>
			<i>Salary:</i> <span>${employee.salary}</span> <i class="ks">KS</i> <br>
		</div>

	</div>


</body>
</html>
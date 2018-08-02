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
			<span style="font-weight:bold;text-align: left;">Employees</span>
			<button id="newEmployee" class="btn-small-content" style="color: darkgreen">New Employee</button>
		</div>
		<c:if test="${not empty employees}">
			<c:forEach var="emp" items="${employees}">
				<div class="row1">
				<form class="list_item_form" action="${emp.empId}" method="get">
					<span>${emp.name}</span>
					<span>${emp.contactNumber}</span>
					<span>${emp.degree}</span>
					<span>${emp.salary} <i>KS</i></span>
				</form>
				</div>
			</c:forEach>


		</c:if>
	</div>



</body>
</html>
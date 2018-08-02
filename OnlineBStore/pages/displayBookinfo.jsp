<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
<title>Book Information</title>
<style>
	body{
		background-color: FFF5EE;
	}
		
	h2{
		color: rgb(0, 128, 0);
		font-weight: bold;
		align:center;
	}
	
	th{
		color: rgb(0, 128, 0);
	}
</style>

</head>

<body>
	<sql:setDataSource var="dbConnect" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/OnlineBookStore"
	user="root" password="root"/>
	
	<sql:query dataSource="${dbConnect}" var="result">
		SELECT * from BookInfo;
	</sql:query>
	
	<br><br>
	<center><h2>Book Information</h2></center>
	<br>
	
	<table border="1" width="60%" align="center">
		<tr>
			<th>Cover Photo</th>
			<th>Title</th>
			<th>Description</th>
		</tr>
		
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td>
					<img src="<c:url value='/coverPhoto/${row.coverPhoto}'/>" />
				</td>
 
				<td>
					<font color="navy"><b>
						<c:out value="${row.bTitle}"/>
					</b></font>
				</td>
				
				<td>
					<font color="navy">
						<c:out value="${row.bDescription}"/>
					</font>	
				</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>
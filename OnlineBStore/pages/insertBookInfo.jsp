<html>
<head>
<title>Online Book Store System</title>
<style type="text/css">

	body{
		background-color: FFF5EE;
		color: navy;
	}
		
	h2{
		color: rgb(0, 128, 0);
		font-weight: bold;
		align:center;
	}
	
	th{
		color: rgb(0, 128, 0);
	}
	
	td{
		padding:10px;
		font-size:15px;	
	}	

	.buttonStyle {
		margin: 20px;
		padding: 5px;
	}

	#description {
		width: 500px;
		height: 250px;
	}

</style>

</head>
<body>	
		<br> <br>
		<center><h2>Book Information</h2></center>
		<br>	
		
			<form method="post" action="insertServlet" enctype="multipart/form-data">
				<table align="center">

					<tr>
						<td>Book Title:</td>
						<td><input type="text" name="bookTitle" size="50"/></td>					</tr>
					
					<tr>
						<td>Book Description:</td>
						<td><textarea id="description" name="bookDescription"
								rows="5" cols="50"></textarea>
					</tr>

					<tr>
						<td>Cover Photo:</td>
						<td><input type="file" name="coverPhoto" /></td>
					</tr>					

					<tr>
						<td colspan="2" align="center">
							<input type="submit" class="buttonStyle"
								value="Insert Book" style="background-color:#FFE4B5;" />
							<input type="reset" class="buttonStyle"
								value="Cancel" style="background-color:#FFE4B5;" />
						</td>
					</tr>

				</table>
			</form>		
	
	
</body>
</html>
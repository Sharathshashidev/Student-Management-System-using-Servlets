<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><b>Enter the Student Details</b></h1>
	<form action="add-student" method="post">
		<input type="number" placeholder="Enter the Student Id:" name="studentId"> <br> <br>
		<input type="text" placeholder="Enter the Student Name:" name="studentName"> <br> <br>
		<input type="text" placeholder="Enter the Student Email:" name="studentEmail"> <br> <br>
		<input type="number" placeholder="Enter the Student Age:" name="studentAge"> <br> <br>
		<input type="text" placeholder="Enter the Student Course:" name="studentCourse"> <br> <br>
		<input type="text" placeholder="Enter the Student City:" name="studentCity"> <br> <br>
		<input type="submit" value="ADD">
	</form>
</body>
</html>
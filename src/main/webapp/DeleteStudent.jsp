<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ResultSet rs = (ResultSet) request.getAttribute("resultSet");
	rs.next();
	%>
	<h1>
		<b>Delete Student Details</b>
	</h1>
	<form action="deletes-student" method="post">
		<input type="number"  value="<%=rs.getInt(1) %>"name="studentId" readonly="readonly"><br>
		<br> <input type="submit" value="DELETE">
	</form>
</body>
</html>
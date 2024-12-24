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
    <% ResultSet rs = (ResultSet)request.getAttribute("resultSet"); %>
	<h1>All Student Details:-</h1>
	<table border= "5px">
	    <tr>
	    	<th>StudentId</td>
	    	<th>StudentName</td>
	    	<th>StudentEmail</td>
	    	<th>StudentAge</td>
	    	<th>StudentCourse</td>
	    	<th>StudentCity</td>
	    	<th>Update</td>
	    	<th>Delete</td>	    	
	    </tr>
	    
	    <%
	    	while(rs.next()){
	    %>
	    <tr>
	    	<td><%=rs.getInt(1)%></td>
	    	<td><%=rs.getString(2)%></td>
	    	<td><%=rs.getString(3)%></td>
	    	<td><%=rs.getInt(4)%></td>
	    	<td><%=rs.getString(5)%></td>
	    	<td><%=rs.getString(6)%></td>
	    	<td><a href="find-by-id?studentId=<%=rs.getInt(1)%>">UPDATE</a></td>
	    	<td><a href="delete-student?studentId=<%=rs.getInt(1)%>">DELETE</a></td>
	      	
	    </tr>
	   <%
	    }
	    %>
	    <h2>
	    	<a href="index.jsp">Revisit the DashBoard</a>
	    </h2>
	
	</table>
</body>
</html>
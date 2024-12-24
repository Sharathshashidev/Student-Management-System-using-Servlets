package com.jsp.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/displayallstudent")
public class DisplayAllStudentServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Connection conn=null;

	try {
		
		//Driver driver=new com.mysql.cj.jdbc.Driver();
		//DriverManager.registerDriver(driver);
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_student_mangement_system","root","root");
		
		PreparedStatement pst=conn.prepareStatement("Select * from student");
		ResultSet rs=pst.executeQuery();
		
		req.setAttribute("resultSet", rs);
		RequestDispatcher rd=req.getRequestDispatcher("DisplayAllStudent.jsp");
		rd.forward(req, resp);



	}
	catch (Exception e) {
		e.printStackTrace();
	}
	finally {
		if(conn!=null) {
			try {
				conn.close();
			} 
			catch (SQLException e) {
				e.printStackTrace();
			}

		}
	  }
	}
}

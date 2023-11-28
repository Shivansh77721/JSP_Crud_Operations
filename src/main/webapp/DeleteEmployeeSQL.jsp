<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DELETE EMPLOYEE SQL</title>
</head>
<body>

<%
int id=0;
try
{
	id = Integer.parseInt(request.getParameter("t1"));
}
catch(NumberFormatException e)
{
	out.print("Invalid Input");
}
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
}
catch(ClassNotFoundException e)
{
	out.print("Error in Loading Driver");
}

try
{
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/empmanagement?user=root&password=root");
	PreparedStatement ps = con.prepareStatement("delete from employee where id = ?");
	ps.setInt(1,id);
	int x = ps.executeUpdate();
	if(x>=1)
	{
		out.println("Record Deleted Successfully");
	}
	else
	{
		out.print("Record Could Not Be Deleted");
	}
}
catch(SQLException e)
{
	out.print("Error in SQL Statement");
}
%>

<br>
<br>
<center>
<button><a href="HomeEmployee.jsp">Home Page</a></button>
<button><a href="Employeeform.jsp">Add Employee</a></button>
<button><a href="DisplayAllEmployee.jsp">Display All Employee</a></button>
<button><a href="UpdateEmployee.jsp">Update Employee</a></button>
<button><a href="DeleteEmployee.jsp">Delete Employee</a></button>
</center>


</body>
</html>
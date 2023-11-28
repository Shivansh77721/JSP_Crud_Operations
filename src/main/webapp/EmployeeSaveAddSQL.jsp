<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employree Save & Add</title>
</head>
<body>
<%
int id=0,Salary=0;
try
{
	id = Integer.parseInt(request.getParameter("t1"));
}
catch(NumberFormatException e)
{
	out.print("Invalid Input");
}
String name = request.getParameter("t2");
try
{
	Salary = Integer.parseInt(request.getParameter("t3"));
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
	out.print("Error in loading Drivers");
}

try
{
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/empmanagement?user=root&password=root");
	PreparedStatement ps = con.prepareStatement("insert into employee values(?,?,?)");
	ps.setInt(1, id);
	ps.setString(2, name);
	ps.setInt(3, Salary);
	int x = ps.executeUpdate();
	if(x>=1)
	{
		out.println("Record Inserted Successfuly");
	}
	else
	{
		out.println("Record Could Not Be Inserted");
	}
}
catch(SQLException e)
{
	out.print("Error in sql statement");
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<table border="2">
	<caption>Employee Data</caption>
	<tr>
	<td>Sr.No.</td>
	<td>Employee ID</td>
	<td>Employee Name</td>
	<td>Employee Salary</td>
	<td><center>Update</center></td>
	<td><center>Delete</center></td>
	


<%
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
	PreparedStatement ps = con.prepareStatement("select * from employee");
	ResultSet x = ps.executeQuery();
	int i=1;
	while(x.next())
	{
		%>
		<tr>
		<td><%= i %></td>
		<td><%= x.getInt("id") %>
		<td><%= x.getString("name") %></td>
		<td><%= x.getInt("Salary") %></td>
		<td><button><a href="UpdateEmployeeTIDD.jsp">Update Employee</a></button></td>
		<td><button><a href="DeleteEmployeeTIDD.jsp?">Delete Employee</a></button></td>
		</tr>
		<%
		i++;
	}
}
catch(SQLException e)
{
	out.print("Error in SQL Statement");
}

%>
</table>
</center>


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
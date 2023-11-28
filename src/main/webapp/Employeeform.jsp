<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
<form action="EmployeeSaveAddSQL.jsp">
<center><h1 style="colr:blue;">Fill Employee Details</h1>
<hr>
<br><br>
<table>
<br><br><br><br>
<tr>
<td>Employee No.</td>
<td><input type="text" name="t1"><br></td>
</tr>
<tr>
<td>Employee Name</td>
<td><br><input type="text" name="t2"><br></td>
</tr>
<tr>
<td>Employee Salary</td>
<td><br><input typr="text" name="t3"><br></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" name="b1" value="Add Employee">
<input type="reset">
</td>
</tr>
</table>
<br><br>
<hr>
</center>
</form>


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
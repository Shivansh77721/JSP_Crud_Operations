<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DeleteEmployee</title>
</head>
<body>
<form action="DeleteEmployeeSQL.jsp">
<center><h1 style="color: blue;">Delete Employee</h1>
<hr>
<br><br><br><br><br>
<table>
<tr>
<td>Employee ID</td>
<td><input type="text" name="t1"><br><br></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" name = "b1" value="Remove Employee">
<input type="reset">
</td>
</tr>
</table>
<br><br><br><br><br><br><br><br>
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
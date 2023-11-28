<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Update Employee</title>
</head>
<body>

<%
//******************************************************************************************************************************

//int id=0;
//int employeeIdToUpdate = Integer.parseInt(request.getParameter("id"));
//	HttpSession httpSession = request.getSession();
//	String url = "jdbc:mysql://localhost:3306/empmanagement";

//String user = "root";
//String password = "root";
//	int empid = (int) httpSession.getAttribute("id");


// int employeeIdToUpdate = Integer.parseInt(request.getParameter("id"));

//*************************************************************Above Sir*****************************************************
int id = 0;
String idParameter = request.getParameter("id");

if (idParameter != null && !idParameter.isEmpty()) {
    
}	

String url = "jdbc:mysql://localhost:3306/empmanagement";
String user = "root";
String password = "root";

///////////////////////////////////////////////////////////////////////Above Running********************************************	












//*********************************************************************************************************************************
try {
    
    Connection connection = DriverManager.getConnection(url, user, password);
     id = Integer.parseInt(idParameter);
    Statement statement = connection.createStatement();
    String selectQuery = "UPDATE employee SET id = ?, name = ?, Salary = ?" + id;
    selectQuery += "WHERE id = ?";
    System.out.println("==============="+selectQuery);
    ResultSet resultSet = statement.executeQuery(selectQuery);

    if (resultSet.next()) {
        String name = resultSet.getString("name");
        int Salary = resultSet.getInt("Salary");
 
%>
        <form action="UpdateProcess.jsp" method="post">
        <input type="hidden" name="employee_id" value="<%= id %>">
  		<input type="text" name="name" value="<%= name %>"><br>
    	<input type="text" name="Salary" value="<%= Salary %>"><br>
		<input type="submit" value="Update">
        </form>
<%
    } else {
        out.println("<p>Employee not found.</p>");
    }

    statement.close();
    connection.close();

} catch (SQLException e) {
	e.printStackTrace();
    out.println("<p>Error retrieving employee details: " + e.getMessage() + "</p>");
}
%>
</body>
</html>
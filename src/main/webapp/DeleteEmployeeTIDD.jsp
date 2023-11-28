<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Delete Employee</title>
</head>
<body>

<%
if (request.getMethod().equalsIgnoreCase("GET")) {
    String employeeIdToDelete = request.getParameter("id");
    String url = "jdbc:mysql://localhost:3306/empmanagement";
    String user = "root";
    String password = "root";

    try {

        Connection connection = DriverManager.getConnection(url, user, password);


        Statement statement = connection.createStatement();


        String deleteQuery = "DELETE FROM employee WHERE id = " + employeeIdToDelete;


        statement.executeUpdate(deleteQuery);
        statement.close();
        connection.close();

        out.println("<p>Employee with ID " + employeeIdToDelete + " deleted successfully.</p>");

    } catch (SQLException e) {
        out.println("<p>Error deleting employee: " + e.getMessage() + "</p>");
    }
}
%>

</body>
</html>

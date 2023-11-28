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
// Get the employee_id from the query string
// int id = Integer.parseInt(request.getParameter("id"));

///////////////////////////////////////////////////////////////////////////////////////////////////



int id = 0; 
String idParameter = request.getParameter("id");

if (idParameter != null && !idParameter.isEmpty()) {
    try 
    {
        id = Integer.parseInt(idParameter);
    } 
    catch (NumberFormatException e) 
    {
        e.printStackTrace(); 
    }
}


//////////////////////////////////////////////////////////////////////////////////////////////////////
// Database connection parameters
String url = "jdbc:mysql://localhost:3306/empmanagement";
String user = "root";
String password = "root";

try {
    Connection connection = DriverManager.getConnection(url, user, password);
    Statement statement = connection.createStatement();
    
    
//    String selectQuery = "UPDATE employee SET id = ?, name = ?, Salary = ?" + id;
//    selectQuery += "WHERE id = ?";
//    System.out.println("==============="+selectQuery);
 ////////////////////////////////////////////////////////////////////   
    String selectQuery = "UPDATE employee SET id = ?, name = ?, Salary = ?";   
    selectQuery = selectQuery + "WHERE id = ?";
///////////////////////////////////////////////////////////////////////
    // Construct the SELECT query to retrieve employee details
  //  String selectQuery = "SELECT * FROM employees WHERE id = " + id;

    // Execute the SELECT query
//    ResultSet resultSet = statement.executeQuery(selectQuery); 
///////////////////////////////////////////////////////////////////////////////    
//      ResultSet resultSet = statement.executeUpdate(selectQuery);
//      statement.executeUpdate
 //     ResultSet resultSet = statement.executeUpdate(selectQuery);

int ResultSet = 0;

       ResultSet resultSet = statement.executeUpdate(selectQuery);

// Check the number of rows affected
if (ResultSet > 0) {
    // The update was successful
    System.out.println("Rows affected: " + ResultSet);
} else {
    // No rows were affected, handle accordingly
    System.out.println("No rows affected");
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

int rowsAffected = statement.executeUpdate("UPDATE your_table SET column1 = value1 WHERE condition");

//Check the number of rows affected
if (rowsAffected > 0) {
 // The update was successful
 System.out.println("Rows affected: " + rowsAffected);
} else {
 // No rows were affected, handle accordingly
 System.out.println("No rows affected");
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////









///////////////////////////////////////////////////////////////////////////////

    if (resultSet.next()) {
        String name = resultSet.getString("name");
        int salary = resultSet.getInt("Salary");
        // ... (other employee details)

        // Display the update form with pre-filled values
%>
        <form action="UpdateProcess.jsp" method="post">
        <input type="hidden" name="employee_id" value="<%= id %>">
  name: <input type="text" name="first_name" value="<%= name %>"><br>
Salary: <input type="text" name="last_name" value="<%= salary %>"><br>
            <!-- Add other input fields for other employee details -->
        <input type="submit" value="Update">
        </form>
<%
    } else {
        out.println("<p>Employee not found.</p>");
    }

    // Close the database connection
    statement.close();
    connection.close();

} catch (SQLException e) {
    out.println("<p>Error retrieving employee details: " + e.getMessage() + "</p>");
}
%>
</body>
</html>

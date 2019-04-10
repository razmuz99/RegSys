<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Rasmus
  Date: 3/29/2019
  Time: 7:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>See users</title>
</head>
<body>
<table>
    <th>Username</th>
    <th>Password</th>
    <%
        try(Connection c = DriverManager.getConnection("jdbc:mysql://ec2-52-30-211-3.eu-west-1.compute.amazonaws.com/s185101?"
                + "user=s185101&password=ocWobhGa6mSep6MBVqBa1");){
            Statement statement = c.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM webUsers");
            while(rs.next()){
    %>
    <tr>
        <td><%=rs.getString("Username")%></td>
        <td><%=rs.getString("Pwd")%></td>
    </tr>
    <%
            }

        }catch(SQLException e){
            System.out.println(e);
        }

    %>
</table>
</body>
</html>

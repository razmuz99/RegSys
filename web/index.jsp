<%--
  Created by IntelliJ IDEA.
  User: Rasmus
  Date: 3/29/2019
  Time: 12:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Page1</title>
  </head>
  <body>
      <form action="/ROOT_war_exploded/create" method="post">
      <input type="text" name="username" placeholder="Name"/>
      <input type="password" name="password" placeholder="Password"/>
      <input type="submit" value="Create User"/>
  </form>
  <a href="see.jsp" style="color:blue;font-weight: 100;text-align: center;border:solid 2px blue;border-radius: 50px;padding: 10px 80px;">See Users</a>
  </body>
</html>

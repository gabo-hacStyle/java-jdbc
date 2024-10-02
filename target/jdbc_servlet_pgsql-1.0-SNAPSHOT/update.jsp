<%--
  Created by IntelliJ IDEA.
  User: gabo2
  Date: 10/2/2024
  Time: 1:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html>
<head>
    <title>Update user</title>
</head>
<body>
<h2>Update user</h2>
<form action="UpdateDetails" method="post">
    <input type="hidden" name="id" value="<%=request.getParameter("id")%>">
    <table>
        <tr>
            <td>ID:</td>
            <td><%=request.getParameter("id")%></td>
        </tr>
        <tr>
            <td>Nombre:</td>
            <td><input type="text" name="nombre" maxlength="40" size="35" value="<%=request.getParameter("nombre")%>"/></td>
        </tr>
        <tr>
            <td>Apellido:</td>
            <td><input type="text" name="apellido" maxlength="40" size="35" value="<%=request.getParameter("apellido")%>"/></td>
        </tr>
        <tr>
            <td>Email :</td>
            <td><input type="text" name="email" maxlength="10" size="75" value="<%=request.getParameter("email")%>"/></td>
        </tr>
        <tr/>
    </table>
    <br/>
    <input type="submit" value="Update data"/>
</form>
</body>
</html>

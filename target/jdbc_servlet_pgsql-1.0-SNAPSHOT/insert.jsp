<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Complete</h2>

	<form action="InsertDetails" method="post">
		<table>

			<tr>
				<td>Nombre:</td>
				<td><input type="text" name="nombre" maxlength="40" size="35" /></td>
			</tr>
			<tr>
				<td>Apellido :</td>
				<td><input type="text" name="apellido" maxlength="40" size="35" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="email" maxlength="20" size="35" /></td>
			</tr>
			<tr />
		</table>
		<br /> <input type="submit" value="Insertar Datos" />

	</form>
	<br />
	<input type="button" value="Regresar"
		onclick="window.location.href='index.jsp'" />

</body>
</html>
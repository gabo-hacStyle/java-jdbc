<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="SelectDetails" method="get">
		<table>
			<tr>
				<td>Enter ID:</td>
				<td><input type="text" name="id" maxlength="6" size="35" /></td>
			</tr>

		</table>
		<br /> <input type="submit" value="Ver datos" />
	</form>
	<br />
	<input type="button" value="Inicio"
		onclick="window.location.href='index.jsp'" />

</body>
</html>
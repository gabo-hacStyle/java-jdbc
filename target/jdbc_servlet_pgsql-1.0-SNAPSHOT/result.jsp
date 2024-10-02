<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
	function deleteUser() {
		var userId = '<%=request.getParameter("id")%>';
		var xhr = new XMLHttpRequest();
		xhr.open("POST", "delete", true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xhr.onreadystatechange = function() {
			if (xhr.readyState === 4 && xhr.status === 200) {

				window.location.href = 'success.jsp?msg=Eliminado';
			}
		};
		xhr.send("id=" + userId);
	}
	
</script>
<body>

	<h2>Detalles</h2>

		<%
			String id = request.getParameter("id");


		if (id != null && id.equals("0")) {
		%>
		<p>Ese usuario no existe aun</p>
		<%
			} else {
		%>
	<form>
		<input type="hidden" name="stid"
			value="<%=request.getParameter("id")%>">


		<table>
			<tr>
				<td>ID:</td>
				<td><%=request.getParameter("id")%></td>
			</tr>
			<tr>
				<td>Nombre:</td>
				<td><%=request.getParameter("nombre")%></td>
			</tr>
			<tr>
				<td>Apellido:</td>
				<td><%=request.getParameter("apellido")%></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><%=request.getParameter("email")%></td>
			</tr>
			<tr />
		</table>
		<br />
	</form>
	<br />
	<form action="update.jsp" method="POST">
		<input type="hidden" name="id" value="<%=request.getParameter("id")%>">
		<input type="hidden" name="nombre" value="<%=request.getParameter("nombre")%>">
		<input type="hidden" name="apellido" value="<%=request.getParameter("apellido")%>">
		<input type="hidden" name="email" value="<%=request.getParameter("email")%>">
		<input type="submit" value="Actualizar datos">
	</form>

	<input type="button" value="Eliminar usuario" onclick="deleteUser()" />

	<%
		}%>

	<br />
	<input type="button" value="Inicio"
		onclick="window.location.href='index.jsp'" />

</body>
</html>
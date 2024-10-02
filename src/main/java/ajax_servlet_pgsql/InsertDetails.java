package ajax_servlet_pgsql;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertDetails
 */
public class InsertDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InsertDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Class.forName(DbUtil.driver);
		} catch (ClassNotFoundException e) {
			System.out.println("Driver de base de datos no encontrado " + e);
		}
		try {
			Connection conn = DriverManager.getConnection(DbUtil.url, DbUtil.user, DbUtil.password);
			System.out.println("----------- Connection successful ------------");

			PreparedStatement st = conn.prepareStatement("insert into estudiante values( ?, ?, ?)");


			st.setString(1, request.getParameter("nombre"));
			st.setString(2, request.getParameter("apellido"));
			st.setString(3, request.getParameter("email"));

			st.executeUpdate();

			st.close();
			conn.close();

			response.sendRedirect("success.jsp?msg=Insert");
		} catch (Exception e) {
			System.out.println("xxxxxxxxxx Connection not successfull xxxxxxxxxx");
			e.printStackTrace();
		}
	}

}

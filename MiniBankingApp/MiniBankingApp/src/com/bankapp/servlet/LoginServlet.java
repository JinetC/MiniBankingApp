package com.bankapp.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("username");
        String pass = request.getParameter("password");

        try (Connection conn = DBConnection.getConnection()) {
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM AdminUser WHERE username=? AND password=?");
            stmt.setString(1, uname);
            stmt.setString(2, pass);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("user", uname);
                session.setAttribute("admin_id", rs.getInt("employee_id"));
                response.sendRedirect("dashboard.jsp");
            } else {
                response.getWriter().println("Login Failed");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

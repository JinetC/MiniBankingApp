package com.bankapp.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class CustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fname = request.getParameter("first_name");
        String lname = request.getParameter("last_name");
        String nic = request.getParameter("nic");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");

        HttpSession session = request.getSession(false);
        Integer adminId = (Integer) session.getAttribute("admin_id"); // set this in LoginServlet later

        if (adminId == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        try (Connection conn = DBConnection.getConnection()) {
            PreparedStatement stmt = conn.prepareStatement(
                "INSERT INTO Customer (first_name, last_name, nic, dob, address, mobile, email, created_by) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"
            );
            stmt.setString(1, fname);
            stmt.setString(2, lname);
            stmt.setString(3, nic);
            stmt.setString(4, dob);
            stmt.setString(5, address);
            stmt.setString(6, mobile);
            stmt.setString(7, email);
            stmt.setInt(8, adminId);

            int rows = stmt.executeUpdate();
            if (rows > 0) {
                response.sendRedirect("dashboard.jsp?msg=Customer+added+successfully");
            } else {
                response.getWriter().println("Failed to add customer.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}

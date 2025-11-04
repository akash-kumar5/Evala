package com.evala;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String pass = req.getParameter("password");

        if (email == null || pass == null || email.isBlank() || pass.isBlank()) {
            req.setAttribute("error", "Provide email and password");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
            return;
        }

        try (Connection c = DBConnection.getConnection();
             PreparedStatement ps = c.prepareStatement(
                     "SELECT username, email FROM users WHERE email = ? AND password = ?")) {

            ps.setString(1, email);
            ps.setString(2, pass);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String username = rs.getString("username");

                HttpSession session = req.getSession(true);
                session.setAttribute("username", username);
                session.setAttribute("email", email);

                resp.sendRedirect("problems.jsp");
            } else {
                req.setAttribute("error", "Invalid credentials");
                req.getRequestDispatcher("login.jsp").forward(req, resp);
            }

        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.sendRedirect("login.jsp");
    }
}

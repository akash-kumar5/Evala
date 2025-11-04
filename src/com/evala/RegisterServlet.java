package com.evala;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        if (username == null || email == null || password == null ||
            username.isBlank() || email.isBlank() || password.isBlank()) {
            req.setAttribute("error", "All fields are required.");
            req.getRequestDispatcher("signup.jsp").forward(req, resp);
            return;
        }

        try (Connection c = DBConnection.getConnection();
             PreparedStatement ps = c.prepareStatement(
                     "INSERT INTO users (username, email, password) VALUES (?, ?, ?)")) {
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, password); // for demo; hash later
            ps.executeUpdate();
            req.setAttribute("message", "Account created successfully. Please login.");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        } catch (SQLIntegrityConstraintViolationException e) {
            req.setAttribute("error", "Username already exists.");
            req.getRequestDispatcher("signup.jsp").forward(req, resp);
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
}

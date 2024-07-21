package com;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

/**
 * Servlet implementation class Deposit
 */

@WebServlet("/deposit")
public class Deposit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String accountNumber = request.getParameter("accountNo");
        String amountString = request.getParameter("amount");

        try {
            double amount = Double.parseDouble(amountString);

            Class.forName("com.mysql.jdbc.Driver");
            try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root")) {
            	String sql = "UPDATE cust SET balance = balance + ? WHERE accNo = ?";
                try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setDouble(1, amount);
                    preparedStatement.setString(2, accountNumber);
                    preparedStatement.executeUpdate();
                    String alertScript = "<script>alert('Deposit Successful.');window.location.href='main.jsp';</script>";
                    response.getWriter().println(alertScript);
                    response.getWriter().println("successful.");
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error during registration: " + e);
        }
    }
}

package com.bankapp.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public static Connection getConnection() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/bankapp";
        String user = "root";
        String password = "your_mysql_password"; // change this!

        return DriverManager.getConnection(url, user, password);
    }
}

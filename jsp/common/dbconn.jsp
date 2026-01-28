<%@ page import="java.sql.*" %>
<%
    String url = "jdbc:mysql://localhost:3306/_01_ssg?serverTimezone=UTC";
    String user = "root";
    String password = "1234";

    Connection conn = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

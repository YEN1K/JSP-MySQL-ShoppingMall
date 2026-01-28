<%@ page import="java.sql.*" %>
<%@ include file="../common/dbconn.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("member_id");
    String pw = request.getParameter("member_pw");
    String name = request.getParameter("member_name");
    String address = request.getParameter("member_address");

    PreparedStatement pstmt = null;

    try {
        String sql = "INSERT INTO member_tbl " +
                     "(member_id, member_pw, member_name, member_address, member_rank) " +
                     "VALUES (?, ?, ?, ?, ?)";

        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, pw);
        pstmt.setString(3, name);
        pstmt.setString(4, address);
        pstmt.setString(5, "1");

        pstmt.executeUpdate();
%>
        <script>
            alert("회원가입이 완료되었습니다.");
            location.href = "../member/login.jsp";
        </script>
<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>

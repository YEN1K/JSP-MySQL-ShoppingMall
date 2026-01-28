<%@ page import="java.sql.*" %>
<%@ include file="../common/dbconn.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");

    String writer = request.getParameter("board_writer");
    String subject = request.getParameter("board_subject");
    String contents = request.getParameter("board_contents");

    PreparedStatement pstmt = null;

    try {
        String sql = "INSERT INTO board_tbl " +
                     "(board_writer, board_subject, board_contents) " +
                     "VALUES (?, ?, ?)";

        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, writer);
        pstmt.setString(2, subject);
        pstmt.setString(3, contents);

        pstmt.executeUpdate();
%>
        <script>
            alert("게시글이 등록되었습니다.");
            location.href = "boardList.jsp";
        </script>
<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>

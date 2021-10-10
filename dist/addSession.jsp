<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html lang="ko">

<head>
    <%
    request.setCharacterEncoding("UTF-8");
    String selectedOBJ = request.getParameter("selectedOB");
    String OBJid = request.getParameter("OBJid");

    session.setAttribute("selectedOBJ", selectedOBJ);
    session.setAttribute("OBJid", OBJid);

    session.setAttribute("mode", "2"); // mode 1은 객체 추출 모드 2는 객체 추가 모드

    response.sendRedirect("input_video.jsp");
    %>
</head>

<body>

</body>

</html>

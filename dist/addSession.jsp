<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html lang="ko">

<head>
    <%
    request.setCharacterEncoding("UTF-8");
    String plusOBJ = request.getParameter("plusOBJ");
    String plusOBJID = request.getParameter("plusOBJID");

    session.setAttribute("plusOBJ", plusOBJ);
    session.setAttribute("plusOBJID", plusOBJID);

    session.setAttribute("mode", "2"); // mode 1은 객체 추출 모드 2는 객체 추가 모드

    response.sendRedirect("input_video.jsp");
    %>
</head>

<body>

</body>

</html>

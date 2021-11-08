<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html lang="ko">

<head>
    <%
    request.setCharacterEncoding("UTF-8");
    try{
      String selectedOB = request.getParameter("selectedOB");
      String OBJid = request.getParameter("OBJid");
      String AnnotationV = request.getParameter("Annotation");

      session.setAttribute("selectedOBJ", selectedOB);
      session.setAttribute("OBJid", OBJid);
      session.setAttribute("mode", "1"); // mode 1은 객체 추출 모드 2는 객체 추가 모드
      session.setAttribute("anno", AnnotationV);
    }
    catch(NullPointerException e){

    }
    finally{
      response.sendRedirect("input_video.jsp");
    }
    %>
</head>

<body>

</body>

</html>

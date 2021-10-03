package com.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/website/dist/selectSession")
public class selectSession extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String selectedOBJ = request.getParameter("selectedOBJ");
        String OBJid = request.getParameter("OBJid");

        HttpSession session = request.getSession();
        session.setAttribute("selectedOBJ", selectedOBJ);
        session.setAttribute("OBJid", OBJid);

        // view 페이지로 응답해줌
        response.sendRedirect("input_video.html");
    }
}

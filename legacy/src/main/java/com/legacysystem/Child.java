package com.legacysystem;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Child extends HttpServlet {
  private static final long serialVersionUID =1L;

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    RequestDispatcher dispatcher = request.getRequestDispatcher("/childPage.jsp");
    dispatcher.forward(request, response);
  }

}

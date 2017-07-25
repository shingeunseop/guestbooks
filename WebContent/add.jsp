<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestbooksDao" %>
<%@ page import="com.javaex.vo.GuestbooksVo" %>



<%
  request.setCharacterEncoding("UTF-8");
  String name=request.getParameter("ln");
  String password=request.getParameter("ps");
  String content=request.getParameter("co");
  String date=request.getParameter("d");
  
  GuestbooksVo vo=new GuestbooksVo(name,password,content);
  
  GuestbooksDao dao=new GuestbooksDao();
  dao.insert(vo);
  
  response.sendRedirect("list.jsp");
 
  
  
  %>

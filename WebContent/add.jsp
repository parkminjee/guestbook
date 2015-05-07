
<%@ page import="com.sds.icto.guestbook.vo.guestbookVo" %>
<%@ page import="com.sds.icto.guestbook.dao.guestbookDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
%>
<%
request.setCharacterEncoding( "utf-8" );


String name = request.getParameter( "name" );
String pwd = request.getParameter( "pwd" );
String meg = request.getParameter( "meg" );

guestbookVo vo = new guestbookVo();
vo.setId( name );
vo.setPwd(pwd);
vo.setMeg(meg);


guestbookDao dao = new guestbookDao();
dao.insert( vo );

response.sendRedirect("/guestbook");
%>
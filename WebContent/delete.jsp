
<%@ page import="com.sds.icto.guestbook.vo.guestbookVo"%>
<%@ page import="com.sds.icto.guestbook.dao.guestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	String pwd = request.getParameter("pwd");
	int no = Integer.parseInt(request.getParameter("no"));

	guestbookVo vo = new guestbookVo();
	guestbookDao dao = new guestbookDao();

	vo.setPwd(pwd);
	vo.setNo(no);

	if (pwd.equals(vo.getPwd())) {
		dao.delete(no, pwd);
	}

	//삭제
	response.sendRedirect("/guestbook");
%>
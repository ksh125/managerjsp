<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="manager.*"%>
<%	request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="vo" class="manager.MemberVo"/>
<jsp:setProperty name="vo" property="*"/>
<%
	MemberService memberService = MemberService.getInstance();
	
	if(memberService.regist(vo)) {
		response.sendRedirect(request.getContextPath()+"/member/index.jsp");
	} else {
		response.sendRedirect(request.getContextPath()+"/member/registForm.jsp");
	}
	
%>
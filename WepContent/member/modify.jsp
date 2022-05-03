<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "manager.*"%>
<% 
	request.setCharacterEncoding("UTF-8");

	int num = Integer.parseInt(request.getParameter("num"));
	String memberId = request.getParameter("memberId");
	String memberPwOld = request.getParameter("memberPwOld");
	String memberPwNew = request.getParameter("memberPwNew");
	String nickName = request.getParameter("nickName");
	
	MemberService memberService = MemberService.getInstance();
	
	MemberVo vo = new MemberVo(num, memberId, memberPwNew, nickName);
	if(memberService.edit(vo, memberPwOld)) {
		response.sendRedirect(request.getContextPath() + "/member/detail.jsp?num=" + num);
	} else {
		response.sendRedirect(request.getContextPath() + "/member/modifyForm.jsp?num=" + num);
	}
%>
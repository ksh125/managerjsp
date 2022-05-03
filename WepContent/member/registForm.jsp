<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="manager.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록</title>
</head>
<body>
<h3>회원 등록</h3>
<form method="post" action="<%= request.getContextPath() %>/member/regist.jsp">
	<input type="text" name="memberId" value="" placeholder="아이디"><br>
	<input type="password" name="memberPw" value="" placeholder="비밀번호"><br>
	<input type="text" name="nickName" value="" placeholder="닉네임"><br>
	<input type="submit" value="등록">
</form>
</body>
</html>
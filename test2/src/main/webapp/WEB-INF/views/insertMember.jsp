<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="/MainPage">메인 페이지</a>
<h2>회원가입</h2>
<hr>
<form action="insertMember" method="post" enctype="multipart/form-data">
아이디 : <input type="text" name="user_id" required="required"><br>
암호 : <input type="password" name="pwd" required="required"><br>
이름 : <input type="text" name="user_name" required="required"><br>
이메일 : <input type="text" name="email" required="required"><br>
사진 <br>
<input type="file" name="mf"><br>
<br>
<button type="submit">회원 등록</button><br>
<a href="/MainPage">취소 하기</a>
</form>
</body>
</html>
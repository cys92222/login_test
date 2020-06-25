<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script type="text/javascript">
function detail(no){
	/* alert(no); */
	$("#detail_member").empty();
	var data = {member_no:no};
	$.ajax("/searchMember",{data:data,success:function(m){
		var h2 = $("<h2>회원 상세 목록</h2>");
		var img = $("<img>").attr({"src":"/member_pic/"+m.pic_name,"width":"150","height":"150"});
		var tb = $("<table></table>").attr({"border":"1","width":"40%"});
		var tr1 = $("<tr></tr>");
		var th1 = $("<th>회원번호</th>");
		var th2 = $("<th>아이디</th>");
		var th3 = $("<th>회원이름</th>");
		var th4 = $("<th>이메일</th>");
		tr1.append(th1,th2,th3,th4);

		var tr2 = $("<tr></tr>");
		var td1 = $("<td></td>").html(m.member_no);
		var td2 = $("<td></td>").html(m.user_id);
		var td3 = $("<td></td>").html(m.user_name);
		var td4 = $("<td></td>").html(m.email);
		tr2.append(td1,td2,td3,td4);

		tb.append(tr1,tr2);

		$("#detail_member").append(h2,img,tb);
		}});
}
</script>
<body>
<a href="/MainPage">메인 페이지</a>
<h2>모든 회원 목록</h2>
<br>
<table border="1" width="80%">
	<tr>
		<th>회원번호</th><th>아이디</th><th>회원이름</th><th>이메일</th>
	</tr>
	
	<c:forEach items="${allMember }" var="m"> 
	<tr onclick="detail('${m.member_no}')">
		<td>${m.member_no }</td><td>${m.user_id }</td><td>${m.user_name }</td><td>${m.email }</td>
	</tr>
	</c:forEach>
	
</table>
<br>

<section id="detail_member">

</section>
</body>
</html>
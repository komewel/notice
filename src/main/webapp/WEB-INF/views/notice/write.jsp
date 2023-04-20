<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${contextPath}/resources/js/lib/jquery-3.6.4.min.js"></script>
<script>
	function fnList() {
		location.href = '${contextPath}/notice/list.do';
	}
	
	$('#normal').on('check', function(){
		$('#content').attr('placeholder', '새로운 공지입니다');
		$('#title').attr('placeholder', '새로운 공지');
	})
	
	function fnfn() {
		alert('공지사항이 등록되었습니다.');
	}
</script>
</head>
<body>

	<div>
		<h1>공지 작성하기</h1>
		<form method="post" action="${contextPath}/notice/add.do">
			<div>
               <select>
           	    <option id="normal">일반</option>
           	    <option>긴급</option>
               </select>
			</div>
			<div>
				<label for="title">제목</label>
				<input type="text" id="title" name="title">
			</div>
			<div>내용</div>
			<div>
			<textarea id="content" name="content" rows="10" cols="10"></textarea>
			</div>
			<div>
				<button onclick="fnfn()">작성완료</button>
				<input type="button" value="목록" onclick="fnList()">
			</div>
		</form>
	</div>
	
</body>
</html>
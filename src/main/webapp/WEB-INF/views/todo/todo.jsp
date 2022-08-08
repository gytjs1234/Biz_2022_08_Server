<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<h2>TODO LIST</h2>
<body>
	<form:form>
		<br>
날짜:<input name="date"   value="${TODO.date}" readonly="readonly"/>
		<br>
시간:<input name="time"  value="${TODO.time}" readonly="readonly"/>
		<br>
작성자: <input name="t_name" placeholder="작성자" />
		<br>
TODO:<input placeholder="할일적기" name="todo" /> <br>
		<button>추가하기</button>
	</form:form>


</body>
</html>
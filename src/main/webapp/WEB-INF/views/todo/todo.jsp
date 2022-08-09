<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
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
		<input name="seq" type="hidden" value='<c:out value="${TODO.seq}" default ="0"/>'>
		<br>
날짜:<input name="date" value="${TODO.date}" readonly="readonly" />
		<br>
시간:<input name="time" value="${TODO.time}" readonly="readonly" />
		<br>
작성자: <input name="username" value="<sec:authentication property="principal.username" />" readonly="readonly" />
		<br>
TODO:<input placeholder="할일적기" name="todo" value="${TODO.todo}" />
		<br>

		<button>완료</button>
	</form:form>


</body>
</html>
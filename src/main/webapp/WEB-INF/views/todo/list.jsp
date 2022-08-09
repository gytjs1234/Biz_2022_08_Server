<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
		<tr>
			<th>작성자</th>
			<th>TODO</th>
			<th>작성날짜</th>
			<th>작성시간</th>
		</tr>

		<c:forEach items="${TODO_1}" var="TODO">
			<tr style="text-align: center" onclick="location.href = '${rootPath}/todo/update?seq=${TODO.seq}';">
				<td>${TODO.username}</td>
				<td>${TODO.todo}</td>
				<td>${TODO.date}</td>
				<td>${TODO.time}</td>
			</tr>
		</c:forEach>
	</table>

	<table>
		<tr>
			<th>작성자</th>
			<th>TODO</th>
			<th>완료날짜</th>
			<th>완료시간</th>
		</tr>

		<c:forEach items="${TODO_2}" var="COMP">
			<tr style="text-align: center">
				<td>${COMP.username}</td>
				<td>${COMP.todo}</td>
				<td>${COMP.date}</td>
				<td>${COMP.time}</td>
			</tr>
		</c:forEach>
	</table>

	<a href="${rootPath}/todo/todo">추가하기</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${TODO_2}" var="TODO">
		<table>
			<tr>
				<th>작성자</th>
				<th>TODO</th>
				<th>날짜</th>
				<th>시간</th>
				<th>할일</th>
			</tr>
			<tr>
				<td>작성자: ${TODO.t_name}</td>
				<td>${TODO.todo}</td>
				<td>${TODO.date}</td>
				<td>${TODO.time}</td>
			</tr>
		</table>
	</c:forEach>

	<button>수정</button>
</body>
</html>
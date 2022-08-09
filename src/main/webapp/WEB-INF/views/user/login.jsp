<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인하기</h1>
<form:form action="${rootPath}/user/login">
아이디:<input name="username" placeholder="username">
패스워드:<input name="password" placeholder="password" type="password"> 
<button>로그인</button>
</form:form>
</body>
</html>
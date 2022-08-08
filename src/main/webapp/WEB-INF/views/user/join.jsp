<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 페이지</h1>
	<form:form>
	
		아이디:<div>
			<input placeholder="username" name="username" />
		</div>
		비밀번호:<div>
			<input placeholder="password" name="password" />
		</div>
	
		이메일:<div>
			<input placeholder="email" name="email" />
		</div>
		실명:<div>
			<input placeholder="realname" name="realname" />
		</div>
		닉네임:<div>
			<input placeholder="nickname" name="nickname" />
		</div>
		<button>회원가입</button>
	</form:form>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="student" items="${student}">
		<p>
			<c:if test="${student.year eq'2017' and student.semester eq '1'}">
				<c:out value="${student}">
				</c:out>
			</c:if>
			
		</p>
	</c:forEach>
</body>
</html>
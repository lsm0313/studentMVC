<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/table.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:set var="cultureMandatory" value="0" />
	<c:set var="human" value="0" />
	<c:set var="liberalArts" value="0" />
	<c:set var="self" value="0" />
	<c:set var="basic" value="0" />
	<c:set var="select" value="0" />
	<c:set var="appoint" value="0" />
	<c:set var="todae" value="0" />
	<c:forEach var="student" items="${student}">
		<c:if test="${student.divide eq'교필'}">
			<c:set var="cultureMandatory"
				value="${cultureMandatory + student.credit}" />
		</c:if>
		<c:if test="${student.divide eq'인재'}">
			<c:set var="human" value="${human + student.credit}" />
		</c:if>
		<c:if test="${student.divide eq'일선'}">
			<c:set var="liberalArts" value="${liberalArts + student.credit}" />
		</c:if>
		<c:if test="${student.divide eq'자율'}">
			<c:set var="self" value="${self + student.credit}" />
		</c:if>
		<c:if test="${student.divide eq'전기'}">
			<c:set var="basic" value="${basic + student.credit}" />
		</c:if>
		<c:if test="${student.divide eq'전선'}">
			<c:set var="select" value="${select + student.credit}" />
		</c:if>
		<c:if test="${student.divide eq'전지'}">
			<c:set var="appoint" value="${appoint + student.credit}" />
		</c:if>
		<c:if test="${student.divide eq'토대'}">
			<c:set var="todae" value="${todae + student.credit}" />
		</c:if>

	</c:forEach>
	<table>
		<tr>
			<td>교필</td>
			<td>인재</td>
			<td>일선</td>
			<td>자율</td>
			<td>전기</td>
			<td>전선</td>
			<td>전지</td>
			<td>토대</td>
			<td>총학점</td>
		</tr>
		<tr>
			<td>${cultureMandatory}</td>
			<td>${human}</td>
			<td>${liberalArts}</td>
			<td>${self}</td>
			<td>${basic}</td>
			<td>${select}</td>
			<td>${appoint}</td>
			<td>${todae}</td>
			<td>${cultureMandatory + human + liberalArts + self + basic + select + appoint + todae}</td>
		</tr>
	</table>
</body>
</html>
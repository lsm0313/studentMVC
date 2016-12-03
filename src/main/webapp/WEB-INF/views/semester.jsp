<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/table.css">
<title>Insert title here</title>
</head>
<body>
	<c:set var="sum20141" value="0" />
	<c:set var="sum20142" value="0" />
	<c:set var="sum20151" value="0" />
	<c:set var="sum20152" value="0" />
	<c:set var="sum20161" value="0" />
	<c:set var="sum20162" value="0" />
	<c:forEach var="student" items="${student}">
		<c:if test="${student.year eq'2014' and student.semester eq'1'}">
			<c:set var="sum20141" value="${sum20141 + student.credit}" />
		</c:if>
		<c:if test="${student.year eq'2014' and student.semester eq'2'}">
			<c:set var="sum20142" value="${sum20142 + student.credit}" />
		</c:if>
		<c:if test="${student.year eq'2015' and student.semester eq'1'}">
			<c:set var="sum20151" value="${sum20151 + student.credit}" />
		</c:if>
		<c:if test="${student.year eq'2015' and student.semester eq'2'}">
			<c:set var="sum20152" value="${sum20152 + student.credit}" />
		</c:if>
		<c:if test="${student.year eq'2016' and student.semester eq'1'}">
			<c:set var="sum20161" value="${sum20161 + student.credit}" />
		</c:if>
		<c:if test="${student.year eq'2016' and student.semester eq'2'}">
			<c:set var="sum20162" value="${sum20162 + student.credit}" />
		</c:if>

	</c:forEach>
	<table>
		<tr>
			<td>년도</td>
			<td>학기</td>
			<td>이수 학점</td>
			<td>상세보기</td>
		</tr>
		<tr>
			<td>2014</td>
			<td>1</td>
			<td>${sum20141}</td>
			<td><a href="${pageContext.request.contextPath}/objcet?id=20141">링크</a></td>
		</tr>
		<tr>
			<td>2014</td>
			<td>2</td>
			<td>${sum20142}</td>
			<td><a href="${pageContext.request.contextPath}/objcet?id=20142">링크</a></td>
		</tr>
		<tr>
			<td>2015</td>
			<td>1</td>
			<td>${sum20151}</td>
			<td><a href="${pageContext.request.contextPath}/objcet?id=20151">링크</a></td>
		</tr>
		<tr>
			<td>2015</td>
			<td>2</td>
			<td>${sum20152}</td>
			<td><a href="${pageContext.request.contextPath}/objcet?id=20152">링크</a></td>
		</tr>
		<tr>
			<td>2016</td>
			<td>1</td>
			<td>${sum20161}</td>
			<td><a href="${pageContext.request.contextPath}/objcet?id=20161">링크</a></td>
		</tr>
		<tr>
			<td>2016</td>
			<td>2</td>
			<td>${sum20162}</td>
			<td><a href="${pageContext.request.contextPath}/objcet?id=20162">링크</a></td>
		</tr>
	</table>
</body>
</html>
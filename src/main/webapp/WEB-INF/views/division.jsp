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
		<c:if test="${student.divide eq'����'}">
			<c:set var="cultureMandatory"
				value="${cultureMandatory + student.credit}" />
		</c:if>
		<c:if test="${student.divide eq'����'}">
			<c:set var="human" value="${human + student.credit}" />
		</c:if>
		<c:if test="${student.divide eq'�ϼ�'}">
			<c:set var="liberalArts" value="${liberalArts + student.credit}" />
		</c:if>
		<c:if test="${student.divide eq'����'}">
			<c:set var="self" value="${self + student.credit}" />
		</c:if>
		<c:if test="${student.divide eq'����'}">
			<c:set var="basic" value="${basic + student.credit}" />
		</c:if>
		<c:if test="${student.divide eq'����'}">
			<c:set var="select" value="${select + student.credit}" />
		</c:if>
		<c:if test="${student.divide eq'����'}">
			<c:set var="appoint" value="${appoint + student.credit}" />
		</c:if>
		<c:if test="${student.divide eq'���'}">
			<c:set var="todae" value="${todae + student.credit}" />
		</c:if>

	</c:forEach>
	<table>
		<tr>
			<td>����</td>
			<td>����</td>
			<td>�ϼ�</td>
			<td>����</td>
			<td>����</td>
			<td>����</td>
			<td>����</td>
			<td>���</td>
			<td>������</td>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="${pageContext.request.contextPath}/docreate">
		<table>
			<tr>
				<td>과목코드</td>
				<td><input name="curriculum" type="text" /></td>
			</tr>
			<tr>
				<td>과목명</td>
				<td><input name="subject" type="text" /></td>
			</tr>
			<tr>
				<td>과목구분</td>
				<td><input name="divide" type="text" /></td>
			</tr>
			<tr>
				<td>학점</td>
				<td><input name="credit" type="text" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input value="수강신청" type="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>
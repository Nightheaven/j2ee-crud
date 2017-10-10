<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table align="center" border="1" cellspacing="0">
	<tr>
		<td>id</td>
		<td>name</td>
		<td>hp</td>
		<td>damage</td>
		<td>delete</td>
		<td>edit</td>
	</tr>
	<c:forEach items="${heros }" var="hero" varStatus="st">
		<tr>
			<td>${hero.id }</td>
			<td>${hero.name }</td>
			<td>${hero.hp }</td>
			<td>${hero.damage }</td>
			<td><a href="deleteHero?id=${hero.id }">delete</a></td>
			<td><a href="editHero?id=${hero.id }">edit</a></td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="6" align="center">
			<a href="?start=0">[首 页]</a>
			<a href="?start =${pre }">[上一页]</a>
			<a href="?start=${next }">[下一页]</a>
			<a href="?start=${last }">[末 页]</a>
		</td>
	</tr>
</table>
</body>
</html>
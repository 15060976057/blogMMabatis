<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.blog.domain.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
	margin: 0 auto;
	text-align: center;
	background-repeat: no-repeat;
	background-size: 100% 100%;
	font-weight: 600;
}

* {
	margin: 0 auto;
}

input {
	margin: 8px;
}

textarea {
	margin: 0 auto;
}

.test1:empty::before {
	content: attr(placeholder); /*获取属性的值 attr（value）,可以获得属性值 */
	color: #999;
}

.utton {
	margin-top: 20px;
	width: 150px;
	height: 30px;
	font-weight: 600;
}
</style>
<script>
	
</script>
<body>
	标题：
	<%
if(request.getSession().getAttribute("user")!=null){
User user=(User)request.getSession().getAttribute("user");
} %>

	<form action="Article.do"  method="post">
	<input type="hidden" name="method" value="save">
	<input type="text" size="50" maxlength="50" name="AHead"
		style="height: 30px;" />
	<br>
	<input type="radio" value="1" name="aCategory" />CET-4
	<input type="radio" value="2" name="aCategory" />CET-6
	<input type="radio" value="3" name="aCategory" />广播
	<input type="radio" value="4" name="aCategory" />趣闻
	<input type="radio" value="5" name="aCategory" />励志
	<input type="radio" value="6" name="aCategory" />雅思
	<input type="radio" value="7" name="aCategory" />托福
	</br>
	<textarea name="aContent" cols="150" rows="50" align="center"
		placeholder="请输入内容..."></textarea>
	<input type="submit" value="发布" name="submit" class="utton" />
	</form>
</body>
</html>

<%@page import="com.blog.domain.Comment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.blog.domain.Article" %>
    <%@ page import ="net.sf.json.JSONArray"%>
    <%@ page import ="net.sf.json.JSONObject"%>
    <%@ page import="java.util.List" %>
    <%@ page import ="net.sf.json.JSON" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.button1{
    width: 	60px;
    height: 120px;
}
.class0{
    width: 1400px;
    height: 30px;   
}
a{
float:right;
margin-right:30px;
text-decoration: none;}
 .class1{ border:1px solid #a0b3d6;/*设置边框1px，实线，边框线色为#a0b3d6 */
    width: 	250px;
    height: 1000px;
    float:right;
    font-size: 14px;
    margin-right:30px;
    margin-top:30px;
    color: #333;
     }
  .class2{
    border:1px solid #a0b3d6;
    width: 	1050px;
    height: 600px;
    float:left;
    font-size: 14px; 
    margin-left:90px;
    margin-top:30px;
    color: #333; }
    .class3{
    border:1px solid #a0b3d6;
    width: 	1050px;
    height: 200px;
    float:left;
    font-size: 14px;
    margin-left:90px; 
    margin-top:10px; 
    color: #333; }
    .class4{
    border:1px solid #a0b3d6;
    width: 	1050px;
    height: 200px;
    float:left;
    font-size: 14px;
    margin-left:90px; 
    margin-top:10px; 
    color: #333; }
    </style>
   <div class="class0">
    <a href="" >返回</a>
    <a href="">个人中心</a></div>
    
    <% 
    Article articles=(Article)session.getAttribute("articleall");
    
    		%>
    		
    		
<div class="class1">
<tr>
    		<td><%=articles.getAHead() %></td>
    	
    		</tr>
</div>
<div class="class2"> <tr>
    		<td><%=articles.getAContent() %></td>
    	
    		</tr></div>

      <div class="class3"><form action="Comment.do" method="post">
        <input type="hidden" name="method" value="display">
      
        <li><input class="no_border" type="submit" value="显示评论"/></li>
        </form>
         <%  if(session.getAttribute("comment")!=null){
         Comment comment=(Comment)session.getAttribute("comment");
   		
    	%>
    	<%=comment.getCContent() %>
    <% 
    }
    		%>
</div>
<div class="class4">
<form action="Comment.do"  method="post">
	<input type="hidden" name="method" value="save">
<textarea name="CContent" cols="150" rows="10" align="center"></textarea>
<input type="submit"  value="发布"  class="button1"/>
</form>
</div>
</html>
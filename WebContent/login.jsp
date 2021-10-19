<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>用户登陆</title>
  </head>
  <body>
  <%
    Object msg=session.getAttribute("msg");
    if(msg!=null && msg.equals("登陆成功")){
        response.sendRedirect("login.jsp");
    }
  %>
  <img src="images/aaa.jpg"/>

    <form action="User.do" method="post">
    <input type="hidden" name="method" value="login">
      <p><input type="text" name="userName"></p>
      <p><input type="password" name="password"></p>
      <p><input type="submit" value="登录"></p>
    </form>
      <%
    String ms=(String)request.getAttribute("msg");
  if(ms!=null){
    %>
    <%=ms %>
    <%} %>
      <%
    session.removeAttribute("msg");
    %>
  </body>
</html>






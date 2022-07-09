<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <script type="text/javascript">

        // 로그아웃 담당 JSP로 이동
        function logoutPro(){
            location.href="LogoutPro.jsp";
        }
        function go() {
            location.href="new.jsp";
        }   
    </script>
</head>
<body>
	 <b><font size="5" color="skyblue">메인화면입니다.</font></b><br><br>
    <%
        if(session.getAttribute("sessionID") == null) // 로그인이 안되었을 때
        { 
            // 로그인 화면으로 이동
            response.sendRedirect("LoginForm.jsp");
        }
        else // 로그인 했을 경우
        {
    %>
 
    <h2>
        <font color="red"><%=session.getAttribute("sessionID") %></font>
        님 로그인되었습니다.
    </h2>

    <br><br>
    <input type="button" value="로그아웃" onclick="logoutPro()" />
    <input type="button" value="페이지 입장" onclick="go()" />
	
    <%} %>
</body>
</html>
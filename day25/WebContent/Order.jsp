<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberBean" %>  
<%-- DAO import --%>   
<%@ page import="dao.MemberDAO" %> 
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
	 <script type="text/javascript">
	  function go() {
          location.href="new.jsp";
      }
	  function kik() {
          location.href="Last.jsp";
      }  
	 </script>
</head>
<body>
	 <jsp:useBean id="memberBean" class="dao.MemberBean" />
	<%
        MemberDAO dao = MemberDAO.getInstance();
        dao.pluscount(memberBean);
    %>
	 <input type="button" value="돌아가기" onclick="go()" />
	 <input type="button" value="초과했을때" onclick="kik()" />
	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 자바빈 클래스 import --%>      
<%@ page import="dao.MemberBean" %>  
<%-- DAO import --%>   
<%@ page import="dao.MemberDAO" %> 
 
<html>
<head>
    <title>회원가입 처리 JSP</title>
    
</head>
<body>
    <%-- JoinForm.jsp에서 입력한 정보를 넘겨 받아 처리한다. --%>
    <% 
        // 한글 깨짐을 방지하기 위한 인코딩 처리
        request.setCharacterEncoding("euc-kr"); 
    %>
    
    <%-- 자바빈 관련 액션태그 사용 --%>
    <jsp:useBean id="memberBean" class="dao.MemberBean" />
    <jsp:setProperty property="*" name="memberBean"/>    
 
	<%
        MemberDAO dao = MemberDAO.getInstance();
        dao.insertMember(memberBean);
    %>
	
    
    <div id="wrap">
        <br><br>
        <b><font size="7" color="gray">회원가입 정보를 확인하세요.</font></b>
        <br><br>
        <font color="blue"><%=memberBean.getName() %></font>님 가입을 축하드립니다.
        <br><br>
        
        <%-- 자바빈에서 입력된 값을 추출한다. --%>
        <table>
            <tr>
                <td id="title">아이디</td>
                <td><%=memberBean.getId() %></td>
            </tr>
                        
            <tr>
                <td id="title">비밀번호</td>
                <td><%=memberBean.getPassword() %></td>
            </tr>
                    
            <tr>
                <td id="title">이름</td>
                <td><%=memberBean.getName() %></td>
            </tr>
                    
            <tr>
                <td id="title">성별</td>
                <td><%=memberBean.getGender()%></td>
            </tr>
                    
            <tr>
                <td id="title">생일</td>
                <td>
                    <%=memberBean.getBirthyy() %>년 
                    <%=memberBean.getBirthmm() %>월 
                    <%=memberBean.getBirthdd() %>일
                </td>
            </tr>
                    
            <tr>
                <td id="title">이메일</td>
                <td>
                    <%=memberBean.getMail1() %>@<%=memberBean.getMail2() %>
                </td>
            </tr>
                    
             <tr>
                <td id="title">휴대전화</td>
                <td><%=memberBean.getPhone() %></td>
            </tr>
            
            <tr>
                <td id="title">주소</td>
                <td><%=memberBean.getAddress() %></td>
            </tr>
          
            <tr>
                <td id="title">횟수</td>
                <td><%=memberBean.getCount1() %></td>
            </tr>
           
           <tr>
                <td id="title">횟수</td>
                <td><%=memberBean.getCount2() %></td>
            </tr>
            
            <tr>
                <td id="title">횟수</td>
                <td><%=memberBean.getTime2() %></td>
            </tr>
            
        </table>
        
        <br>
        <input type="button" value="확인">
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.util.List" %>  
   
<%@ page import = "com.javaex.dao.PhoneDao" %> 
<%@ page import = "com.javaex.vo.PersonVo" %>
    
<%
	request.setCharacterEncoding("UTF-8");
	
   String name = request.getParameter("name");
   String hp = request.getParameter("hp");
   String company = request.getParameter("company");
   System.out.println(name + ", " + hp + ", " + company);
   
   //vo로 묶기
   PersonVo personVo = new PersonVo(name, hp, company);
   
   //저장하기
   PhoneDao phoneDao = new PhoneDao();
   phoneDao.personInsert(personVo);
   
   //System.out.println(name);
   //System.out.println(hp);
   //System.out.println(company);
   
   
   //리스트 가져오기 --> 리다이렉트로 할거임
   //List<PersonVo> personList = phoneDao.getPersonList();
   //System.out.println(personList.toString());
   
   
   response.sendRedirect("./list.jsp"); //저장 돌고 재요청 들어가서 다시 시작 --> 두바퀴 도는거
   
   
%>


<%-- 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 리스트-insert</h1>
	
	<p>입력한 정보 내역입니다.</p>
	
	
	<%
	for(int i=0; i<personList.size(); i++) {
		
	%>
	
	<table border="">
		<tr>
			<td>이름</td>
			<td><%=personList.get(i).getName() %></td>
		</tr>
		<tr>
			<td>핸드폰</td>
			<td><%=personList.get(i).getHp() %></td>
		</tr>
		<tr>
			<td>회사</td>
			<td><%=personList.get(i).getCompany() %></td>
		</tr>
	</table>
	<br>
	<%
	}
	%>
</body>
</html>


--%>
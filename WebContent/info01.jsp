<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id="poqwer233", pwd="1234";
		Connection con = DriverManager.getConnection(url,id,pwd);
		String sql = "select * from student where classnumber='"+request.getParameter("id")+"'";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
%>

<h1>인적 사항</h1>
<%if(rs.next()){%>
<h3>학번 : <%=rs.getString("CLASSNUMBER") %></h3>
<h3>이름 : <%=rs.getString("NAME") %></h3>
<h3>국, 영, 수 : <%=rs.getString("KOR") %>, <%=rs.getString("ENG") %>, <%=rs.getString("MATH") %></h3>
<%}%>
<input type="button" value="뒤로" onclick="location.href='quiz02.jsp';">
</body>
</html>
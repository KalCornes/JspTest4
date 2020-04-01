<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>ex01.jsp<br>
	<%
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id="poqwer233", pwd="1234";
		Connection con = DriverManager.getConnection(url,id,pwd);
		String sql = "select * from newst";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		out.print("id  이름  나이<hr>");
		while(rs.next()){%>
			<%=rs.getString("id") %>
			<%=rs.getString("name") %>
			<%=rs.getInt("age") %>
			<hr>
		<%}%>
</body>
</html>
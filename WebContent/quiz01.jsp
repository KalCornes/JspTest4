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
		String sql = "select * from student";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
%>

<table border="1">
	<tr>
		<td>학번</td><td>이름</td><td>국어</td><td>영어</td><td>수학</td>
	</tr>
	<%while(rs.next()){%>
	<tr>
		<td><%=rs.getString("CLASSNUMBER") %></td>
		<td><%=rs.getString("NAME") %></td>
		<td><%=rs.getString("KOR") %></td>
		<td><%=rs.getString("ENG") %></td>
		<td><%=rs.getString("MATH") %></td>
	</tr>
	<%}%>

</table>
</body>
</html>
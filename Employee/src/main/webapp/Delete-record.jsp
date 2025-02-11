<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<body onload="MakeAction('delete')">
	<jsp:include page="navbar.jsp"></jsp:include>
	<%
	   String eid=request.getParameter("eid");
	   PreparedStatement ps=(PreparedStatement)application.getAttribute("delete");
	   ps.setString(1, eid);
	   ps.executeUpdate();
	%>
	<div style='text-align: center; margin-top: 50px;'>
		<h1 style="color:red; font-family:cursive;">Employee record has been deleted sucessfully.</h1>	
	</div>
</body>
</head>
</html>
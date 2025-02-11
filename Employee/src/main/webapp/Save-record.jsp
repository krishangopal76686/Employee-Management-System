<%@page import="java.sql.PreparedStatement"%>
<html>
<body onload="MakeAction('insert')">
<jsp:include page="navbar.jsp"></jsp:include>
    <%
      PreparedStatement ps=(PreparedStatement)application.getAttribute("insert");
      ps.setString(1, request.getParameter("eid"));
      ps.setString(2, request.getParameter("firstname"));
      ps.setString(3, request.getParameter("lastname"));
      ps.setString(4, request.getParameter("phone"));
      ps.setString(5, request.getParameter("email"));
      ps.setString(6, request.getParameter("department"));
      ps.setString(7, request.getParameter("salary"));
      ps.executeUpdate();
    %>
    <div style="text-align: center; margin-top:50px; font-family:cursive;">
    <h1 style='color='green'>Employee Record has been Inserted sucessfully.</h1>
    </div>
</body>
</html>
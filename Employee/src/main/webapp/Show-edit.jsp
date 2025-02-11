<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<body onload="MakeAction('edit')">
	
	<%
	    String eid=request.getParameter("eid");
		PreparedStatement ps=(PreparedStatement)application.getAttribute("search");
		ps.setString(1,eid);
	    ResultSet rst=ps.executeQuery();
	    if(rst.next())
	    {
		%>

   <jsp:include page="navbar.jsp"></jsp:include>
   <form action="Update-record.jsp" method="post">
   		<div>
   			<div style='border:2px solid #f9f9f9; height: 350px; width: 600px; margin: auto; padding: 30px; background-color: #f7f7f7; border-radius: 10px;'>
   			<table style='margin: auto;'>
   				<tr>
   				<td class='p-1'><label style='font-size: 18px;'>Enter Employee id</label><span> <font color="red">*</font></span></td>
   				</tr>
   				<tr>
   				<td class='p-1'><input style='width: 500px' class="form-control" value="<%=eid%>" type='text' name='eid'></td>
   				</tr>
   				<tr>
   				<td class='p-1'><label style='font-size:18px;'>Enter First Name</label><span><font color="red"> *</font></span> <label style='margin-left: 168px; font-size: 18px;'>Enter Last Name</label><span><font color="red"> *</font></span></td>
   				</tr>
   				<tr>
   				<td class='p-1'><input class="form-control first" type='text' value="<%=rst.getString(2) %>" name='firstname'></td>
   				<td class='p-1'><input style='margin-left: -225px;' class="form-control fisrt" value="<%=rst.getString(3) %>" type='text' name='lastname'></td>
   				</tr>
   				<tr>
   				<td class='p-1'><label style='font-size:18px;'>Enter Phone-no</label><span><font color="red"> *</font></span> <label style='margin-left: 175px; font-size: 18px;'>Enter Email-id</label><span><font color="red"> *</font></span></td>
   				</tr>
   				<tr>
   				<td class='p-1'><input class="form-control first" type='number' value="<%=rst.getString(4) %>" name='phone'></td>
   				<td class='p-1'><input style='margin-left: -225px;' class="form-control fisrt" type='email' value="<%=rst.getString(5) %>" name='email'></td>
   				</tr>
   				<tr>
   				<td class='p-1'><label style='font-size:18px;'>Enter Department</label><span><font color="red"> *</font></span> <label style='margin-left: 160px; font-size: 18px;'>Enter Salary</label><span><font color="red"> *</font></span></td>
   				</tr>
   				<tr>
   				<td class='p-1'><input class="form-control first" type='text' value="<%=rst.getString(6) %>" name='department'></td>
   				<td class='p-1'><input style='margin-left: -225px;' class="form-control fisrt" value="<%=rst.getString(7) %>" type='text' name='salary'></td>
   				</tr>
   				<tr>
   				<td class='p-1'><button class="btn btn-primary">Update Record</button>
   				<input onclick="history.back()" class="btn btn-secondary" type='button' value='Cancel'>
   				</td>
   				</tr>
   			</table>
   			</div>
   		</div>
   </form>
   <%
   }
	    else
	    {
	    	
	    	%>
	    	<jsp:include page="Employee-edit.jsp"></jsp:include>
	    		<div style="text-align: center">
	    		<p style='color:red;font-family: cursive;'>Employee Id <%=eid %> Does Not Exist</p>
	    		</div>
	    	<%
	    }
	 %>
</body>
</html>
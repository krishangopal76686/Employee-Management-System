<%@page import="java.sql.PreparedStatement"%>
<html>
<body onload="MakeAction('insert')">

<jsp:include page="navbar.jsp"></jsp:include>
   <form action="Save-record.jsp" method="post">
   		<div>
   			<div style='border:2px solid #f9f9f9; height: 350px; width: 600px; margin: auto; padding: 30px; background-color: #f7f7f7; border-radius: 10px;'>
   			<table style='margin: auto;'>
   				<tr>
   				<td class='p-1'><label style='font-size: 18px;'>Enter Employee id</label><span> <font color="red">*</font></span></td>
   				</tr>
   				<tr>
   				<td class='p-1'><input style='width: 500px' class="form-control" type='text' name='eid'></td>
   				</tr>
   				<tr>
   				<td class='p-1'><label style='font-size:18px;'>Enter First Name</label><span><font color="red"> *</font></span> <label style='margin-left: 168px; font-size: 18px;'>Enter Last Name</label><span><font color="red"> *</font></span></td>
   				</tr>
   				<tr>
   				<td class='p-1'><input class="form-control first" type='text' name='firstname'></td>
   				<td class='p-1'><input style='margin-left: -225px;' class="form-control fisrt" type='text' name='lastname'></td>
   				</tr>
   				<tr>
   				<td class='p-1'><label style='font-size:18px;'>Enter Phone-no</label><span><font color="red"> *</font></span> <label style='margin-left: 175px; font-size: 18px;'>Enter Email-id</label><span><font color="red"> *</font></span></td>
   				</tr>
   				<tr>
   				<td class='p-1'><input class="form-control first" type='number' name='phone'></td>
   				<td class='p-1'><input style='margin-left: -225px;' class="form-control fisrt" type='email' name='email'></td>
   				</tr>
   				<tr>
   				<td class='p-1'><label style='font-size:18px;'>Enter Department</label><span><font color="red"> *</font></span> <label style='margin-left: 160px; font-size: 18px;'>Enter Salary</label><span><font color="red"> *</font></span></td>
   				</tr>
   				<tr>
   				<td class='p-1'><input class="form-control first" type='text' name='department'></td>
   				<td class='p-1'><input style='margin-left: -225px;' class="form-control fisrt" type='text' name='salary'></td>
   				</tr>
   				<tr>
   				<td class='p-1'><button class="btn btn-primary">Submit</button>
   				<input onclick="history.back()" class="btn btn-secondary" type='button' value='Cancel'>
   				</td>
   				</tr>
   			</table>
   			</div>
   		</div>
   </form>
</body>
</html>
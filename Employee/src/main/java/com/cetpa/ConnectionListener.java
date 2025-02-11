package com.cetpa;

import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebListener;
@WebListener
public class ConnectionListener implements ServletContextListener
{
	public void contextInitialized(ServletContextEvent evt)
	{
		System.out.println("Listener invoked..");
		ServletContext application=evt.getServletContext();
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/wjdbc12?createDatabaseIfNotExist=true","root","Mysql");
            Statement st=cn.createStatement();
            application.setAttribute("st", st);
            st.execute("create table If Not Exists employeeinfo(eid int primary key,firstname varchar(20),lastname varchar(30),phone varchar(20),email varchar(30),department varchar(30),salary int)");
            
            PreparedStatement psInsert=cn.prepareStatement("insert into employeeinfo values(?,?,?,?,?,?,?)");
            application.setAttribute("insert", psInsert);
            PreparedStatement psSearch=cn.prepareStatement("select * from employeeinfo where eid=?");
            application.setAttribute("search", psSearch);
			PreparedStatement psUpdate=cn.prepareStatement("update employeeinfo set firstname=?,lastname=?,phone=?,email=?,department=?,salary=? where eid=?");
			application.setAttribute("update", psUpdate);
			
			PreparedStatement psDelete=cn.prepareStatement("delete from employeeinfo where eid=?");
			application.setAttribute("delete", psDelete);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}
}

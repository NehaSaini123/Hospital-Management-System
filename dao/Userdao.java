package com.dao;

import java.sql.Connection;
import com.entity.User;
import java.sql.PreparedStatement;

import com.entity.User;

public class Userdao {
	
	private Connection conn;
	
	public Userdao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean register(User u) {
		
		boolean f=false;
		
		try {
			String sql="insert into user_detail(full_name,email,password) values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, u.getFullName());
			ps.setString(2, u.getEmail());
            ps.setString(3, u.getPassword());
            
           int i= ps.executeUpdate();
           if(i==1) 
           {
        	  f=true; 
        	   
           }
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		return f;
	}
	

}

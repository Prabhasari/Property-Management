package com.user;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class userDButil {
	   private static boolean isSuccess;
	   private static Connection con = null;
	   private static Statement stmt = null;
	   private static ResultSet rs = null;
	   
       public static List<user> validate(String userName, String password){
    	    
    	    ArrayList<user> use = new ArrayList<>();
    	    
    	    
    	    try {
    	    	
    	        con = DBConnect.getConnection();
    	        stmt = con.createStatement();
    	    	String sql = "select * from user where UserName='"+userName+"' and Password='"+password+"'";
    	    	
    	        rs = stmt.executeQuery(sql);
    	    	
    	    	if(rs.next()) {
    	    		int Id = rs.getInt(1);
    	    		String FirstName = rs.getString(2);
    	    		String LastName = rs.getString(3);
    	    		String email = rs.getString(4);
    	    		String Address = rs.getString(5);
    	    		String MobileNo = rs.getString(6);
    	    		String Birthday = rs.getString(7);
    	    		String Gender = rs.getString(8);
    	    		String UserU = rs.getString(9);
    	    		String passU = rs.getString(10);
    	    		
    	    		user u = new user(Id,FirstName,LastName,email,Address,MobileNo,Birthday,Gender,UserU,passU);
    	    		
    	    		use.add(u);
    	    		
    	    	}
    	    	
    	    }
    	    catch(Exception e) {
    	    	e.printStackTrace();
    	    }
    	    
    	    return use;
       }
       
       public static boolean insertUser(String FirstName,String LastName,String email,String Address,String MobileNo,String Birthday,String Gender,String username,String password) {
    	   
    	   boolean isSuccess = false;
    	   
   	       
   	       
   	       try {
   	    	   con = DBConnect.getConnection();
   	    	   stmt = con.createStatement();
	    	   String sql = "insert into user values (0,'"+FirstName+"','"+LastName+"','"+email+"','"+Address+"','"+MobileNo+"','"+Birthday+"','"+Gender+"','"+username+"','"+password+"')";
	    	   int rs = stmt.executeUpdate(sql);
	    	   
	    	   if(rs > 0) {
	    		   isSuccess = true;
	    	   }else {
	    		   isSuccess = false;
	    	   }
   	    	   
   	       }
    	   catch(Exception e) {
    		   
    		   e.printStackTrace();
    	   }
    	   return isSuccess;
       }
       
       public static boolean updateuser(String id, String fname, String lname, String email, String address, String mobileno, String birthday, String gender, String username, String password) {
    	   
    	   try {
    		   
    		   con = DBConnect.getConnection();
   	    	   stmt = con.createStatement();
   	    	String sql = "update user set FirstName='"+fname+"' ,LastName='"+lname+"' ,Email='"+email+"' ,Address='"+address+"' ,MobileNo='"+mobileno+"' ,Birthday='"+birthday+"' ,Gender='"+gender+"' ,UserName='"+username+"' ,Password='"+password+"' where Id='"+id+"'";
   	    	   
   	    	   int rs = stmt.executeUpdate(sql);
   	    	   
   	    	if(rs > 0) {
	    		   isSuccess = true;
	    	   }else {
	    		   isSuccess = false;
	    	   }
	    	   
    		   
    	   }
    	   catch(Exception e) {
    		   e.printStackTrace();
    	   }
    	   
    	   return isSuccess;
       }
       
       public static List<user> getuserDetails(String id) {
       	
       	int convertedID = Integer.parseInt(id);
       	
       	ArrayList<user> use = new ArrayList<>();
       	
       	try {
       		
       		con = DBConnect.getConnection();
       		stmt = con.createStatement();
       		String sql = "select * from user where Id='"+convertedID+"'";
       		rs = stmt.executeQuery(sql);
       		
       		while(rs.next()) {
       			int Id = rs.getInt(1);
       			String FirstName = rs.getString(2);
       			String LastName = rs.getString(3);
       			String Email = rs.getString(4);
       			String Address = rs.getString(5);
       			String MobileNo = rs.getString(6);
       			String Birthday = rs.getString(7);
       			String Gender = rs.getString(8);
       			String UserName = rs.getString(9);
       			String Password = rs.getString(10);
       			
       			user c = new user(Id,FirstName,LastName,Email,Address,MobileNo,Birthday,Gender,UserName,Password);
       			use.add(c);
       		}
       		
       	}
       	catch(Exception e) {
       		e.printStackTrace();
       	}	
       	return use;	
       }
       
       public static boolean deleteuser(String id) {
       	
       	int convId = Integer.parseInt(id);
       	
       	try {
       		
       		con = DBConnect.getConnection();
       		stmt = con.createStatement();
       		String sql = "delete from user where Id='"+convId+"'";
       		int r = stmt.executeUpdate(sql);
       		
       		if (r > 0) {
       			isSuccess = true;
       		}
       		else {
       			isSuccess = false;
       		}
       		
       	}
       	catch (Exception e) {
       		e.printStackTrace();
       	}
       	
       	return isSuccess;
       }
       
       
}

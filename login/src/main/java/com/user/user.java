package com.user;

import java.sql.Date;

public class user {
     private int Id;
     private String FirstName;
     private String LastName;
     private String Email;
     private String Address;
     private String MobileNo;
     private String Birthday;
     private String Gender;
     private String UserName;
     private String Password;
     
     
	public user(int id, String firstName, String lastName, String email, String address, String mobileNo,
			String birthday, String gender, String userName, String password) {
		
		this.Id = id;
		this.FirstName = firstName;
		this.LastName = lastName;
		this.Email = email;
		this.Address = address;
		this.MobileNo = mobileNo;
		this.Birthday = birthday;
		this.Gender = gender;
		this.UserName = userName;
		this.Password = password;
	}


	public int getId() {
		return Id;
	}


	public String getFirstName() {
		return FirstName;
	}


	public String getLastName() {
		return LastName;
	}


	public String getEmail() {
		return Email;
	}


	public String getAddress() {
		return Address;
	}


	public String getMobileNo() {
		return MobileNo;
	}


	public String getBirthday() {
		return Birthday;
	}


	public String getGender() {
		return Gender;
	}


	public String getUserName() {
		return UserName;
	}


	public String getPassword() {
		return Password;
	}



     
}

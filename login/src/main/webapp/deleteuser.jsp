<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="deleteuser.css">
</head>
<body>

      <%
         String id = request.getParameter("id");
         String FirstName = request.getParameter("First Name");
         String LastName = request.getParameter("Last Name");
         String email = request.getParameter("email");
         String Address = request.getParameter("Address");
         String MobileNo = request.getParameter("MobileNo");
         String Birthday = request.getParameter("Birthday");
         String Gender = request.getParameter("Gender");
         String username = request.getParameter("username");
         String password = request.getParameter("password");
        		 
     %>
     
     
     <h1>User Account Delete</h1>
     
     <form action="delete" method="post">
         User ID <input type="text" name="userid" value="<%= id%>" readonly><br>
         First Name <input type="text" name="fname" value="<%= FirstName%>"readonly><br>
         Last Name <input type="text" name="lname" value="<%= LastName%>"readonly><br>
         Email <input type="text" name="email" value="<%= email%>"readonly><br>
         Address<input type="text" name="address" value="<%= Address%>"readonly><br>
         Mobile Number<input type="text" name="mobileno" value="<%= MobileNo%>"readonly><br>
         Birthday<input type="text" name="birthday" value="<%= Birthday%>"readonly><br>
         Gender<input type="text" name="gender" value="<%= Gender%>"readonly><br>
         UserName<input type="text" name="username" value="<%= username%>"readonly><br>
        
         
         <input type="submit" name="submit" value="Delete My Account"><br>
     
     
     </form>

</body>
</html>
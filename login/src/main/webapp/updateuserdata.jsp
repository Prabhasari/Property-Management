<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="updateuserdata.css">
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
     

     <form action="update" method="post">
         User ID <input type="text" name="userid" value="<%= id%>" readonly><br>
         First Name <input type="text" name="fname" value="<%= FirstName%>"><br>
         Last Name <input type="text" name="lname" value="<%= LastName%>"><br>
         Email <input type="text" name="email" value="<%= email%>"><br>
         Address<input type="text" name="address" value="<%= Address%>"><br>
         Mobile Number<input type="text" name="mobileno" value="<%= MobileNo%>"><br>
         Birthday<input type="text" name="birthday" value="<%= Birthday%>"><br>
         Gender<input type="text" name="gender" value="<%= Gender%>"><br>
         UserName<input type="text" name="username" value="<%= username%>"><br>
         Password<input type="password" name="password" value="<%= password%>"><br>
         
         <input type="submit" name="submit" value="Update My Data"><br>
     
     
     </form>
</body>
</html>
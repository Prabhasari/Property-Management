<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Account</title>
<link rel="stylesheet" type="text/css" href="useraccount.css">
</head>
<body>

     <table>
     <c:forEach var="user" items="${userDetails}">
     
     <c:set var="id" value="${user.id}"/>
     <c:set var="FirstName" value="${user.firstName }"/>
     <c:set var="LastName" value="${user.lastName }"/>
     <c:set var="email" value="${user.email }"/>
     <c:set var="Address" value="${user.address }"/>
     <c:set var="MobileNumber" value="${user.mobileNo }"/>
     <c:set var="Birthday" value="${user.birthday }"/>
     <c:set var="Gender" value="${user.gender }"/>
     <c:set var="UserName" value="${user.userName }"/>
     <c:set var="password" value="${user.password }"/>
     
     
     <tr>
     <td>User ID</td>
     <td>${user.id}</td>
     </tr>
     
     <tr>
     <td>First Name</td>
     <td>${user.firstName }</td>
     </tr>
     
     <tr>
     <td>Last Name </td>
     <td>${user.lastName }</td>
     </tr>
     
     <tr>
     <td>Email</td>
     <td>${user.email }</td>
     </tr>
     
     <tr>
     <td>Address</td>
     <td>${user.address }</td>
     </tr>
     
     <tr>
     <td>Mobile Number</td>
     <td>${user.mobileNo }</td>
     </tr>
     
     <tr>
     <td>Birthday</td>
     <td>${user.birthday }</td>
     </tr>
     
     <tr>
     <td>Gender</td>
     <td>${user.gender }</td>
     </tr>
     
     <tr>
     <td>UserName</td>
     <td>${user.userName }</td>
     </tr>
     
     <tr>
     <td>password</td>
     <td>${user.password  }</td>
     </tr>
     
     </c:forEach>
     </table>
     
     <c:url value="updateuserdata.jsp" var="userupdate">
           <c:param name="id" value="${id}"/>
           <c:param name="First Name" value="${FirstName}"/>
           <c:param name="Last Name" value="${LastName}"/>
           <c:param name="email" value="${email}"/>
           <c:param name="Address" value="${Address}"/>
           <c:param name="MobileNo" value="${MobileNumber}"/>
           <c:param name="Birthday" value="${Birthday}"/>
           <c:param name="Gender" value="${Gender}"/>
           <c:param name="username" value="${UserName}"/>
           <c:param name="password" value="${password}"/>
           
      </c:url>
     
     
     <a href="${userupdate}">
     <input type="button" name="update" value="update My Data">
     </a>
     
     <br>
     <br>
     
     <c:url value="deleteuser.jsp" var="userdelete">
		<c:param name="id" value="${id}"/>
           <c:param name="First Name" value="${FirstName}"/>
           <c:param name="Last Name" value="${LastName}"/>
           <c:param name="email" value="${email}"/>
           <c:param name="Address" value="${Address}"/>
           <c:param name="MobileNo" value="${MobileNumber}"/>
           <c:param name="Birthday" value="${Birthday}"/>
           <c:param name="Gender" value="${Gender}"/>
           <c:param name="username" value="${UserName}"/>
           
	</c:url>
	<a href="${userdelete}">
     
     <input type="button" name="delete" value="Delete My Account">
     </a>
     
     <a href="#">
     
     <input type="button" name="payment" value="Payment">
     </a>
     

</body>
</html>
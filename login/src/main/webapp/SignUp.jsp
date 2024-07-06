<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<link rel="stylesheet" type="text/css" href="SignUp.css">
</head>
<div class="header">
        <nav>
         <img src="media/LAND MARK.png" class="logo">
         <ul class="nav-links">
         <li><a href="index.html">Home</a></li>
         <li><a href="#">Search Property</a></li>
         <li><a href="#">Rent Property</a></li>
         <li><a href="Inqueries.html">Inquiries</a></li>
            <li class="btn" ><a href="login.php"> Login </a></li>
	 <li class="btn2"><a href="Register.html"> Register </a></li>
        
         </ul>
        
    
          <a href=" " target="_blank">
         <img src="media/user.png" class="user-pic"></a>
    </nav>    
    </div>
  
  
   
<br>

<body>
     <div class="Scontainer">
      <div class="SignUpcontainer">
        
      <div class= "box">
      <form action ="insert" method ="post" class ="form">
      <h2> Registration</h2>
      <div class="inputBox">
       <input type="text" name="fid" required="required">
       <span>First name</span> 
       <i></i>
       </div>
       <div class="inputBox">
       <input type="text" name="lid" required="required">
       <span>Last name</span> 
       <i></i>
       </div>
       <div class="inputBox">
       <input type="text" name="email" required="required">
       <span>E-Mail</span> 
       <i></i>
       </div>
       <div class="inputBox">
       <input type="text" name="address" required="required">
       <span>Address</span> 
       <i></i>
       </div>
       <div class="inputBox">
       <input type="text" name="number" required="required">
       <span>Mobile Number</span> 
       <i></i>
       </div>
       <div class="inputBox">
       <input type="text" name="birth" required="required">
       <span>Date of Birth</span> 
       <i></i>
       </div>
       <div class="inputBox">
       <input type="text" name="gender" required="required">
       <span>Gender</span> 
       <i></i>
       </div>
       <div class="inputBox">
       <input type="text" name="username" required="required">
       <span>UserName</span> 
       <i></i>
       </div>
       <div class="inputBox">
       <input type="password" name="pass" required="required"> 
       <span>Password</span> 
       <i></i>
       </div>
       <div class="inputBox">
       <input type="password" name="cpass" required="required"> 
       <span>Confirm Password</span> 
       <i></i>
       </div>
       
       <input type="submit" name="submit" value="Register">
       
       </form>
       </div>
       </div>
       </div>
      
</body>

<br>
       <footer class="footer">
                <div class="container">
                    <div class="row">
                        <div class="footer-col">
                            <h4>Quick Links</h4>
                            <ul>
                                <li><a href="#">Search Property</a></li>
                                <li><a href="#">Rent Property</a></li><br>
                                <li><a>�Copyrigt LandMark.com 2023</a></li>
                             <li><a>All Right Reserved</a></li>
                            </ul>
                        </div>
                        <div class="footer-col">
                            <h4>Company</h4>
                            <ul>
                                <li><a href="about_us.html">About Us</a></li>
  	 				            <li><a href="Privacy_Policy.html">privacy policy</a></li>
  	 				            <li><a href="terms_&_conditions.html">Terms & Conditions</a></li>
                                
                            </ul>
                        </div>
                        <div class="footer-col">
                            <h4>Contact Us</h4>
                            <ul>
                            <li><a href="#">121,Kandy Road,Malabe.</li>
                                <li><a href="#"> landmark@gmail.com</li>
                                <li><a href="#"> 077 2425678</li>
                                <li><a href="#"> 011 2425987</a></li>
                            </ul>
                        </div>
                        <div class="footer-col">
                            <h4>follow us</h4>
                            <div class="social-links">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                                <a href="#"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
           </footer> 
           


    
      
</html>
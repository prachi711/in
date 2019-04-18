<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%            
        response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
        response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
        response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
        response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
<link rel="stylesheet" href="resources/css/UserRegistration.css">
<style>
body {
  background-image: url("resources/images/urbkg7.jpg");
  background-position: 50% 50%;
  background-repeat: repeat;
}
</style>
<script>
        function validateRegistrationForm(){
            var firstName = document.forms["registrationForm"]["firstName"].value;
            var lastName = document.forms["registrationForm"]["lastName"].value;
            var contactNumber = document.forms["registrationForm"]["contactNumber"].value;
            var password = document.forms["registrationForm"]["password"].value;
          
            var s="rajan";
            if(!/^[a-zA-Z]*$/g.test(firstName))
            {
                alert('First Name should be alphabet only');
                return false;
            }
            if(!/^[a-zA-Z]*$/g.test(lastName))
            {
                alert('Last Name should be alphabet only');
                return false;
            }
            if(contactNumber.length!=10){
                alert('Invalid Contact Number');
                return false;
            }
            
            if(password.length<6){
                alert('Password length should be 6 or above');
                return false;
            }
            
            if(document.forms["registrationForm"]["password"].value.localeCompare(document.forms["registrationForm"]["confirmPassword"].value)){
                alert("Password and Confirm Password Should Match");
                return false;
            }
        }
    </script>
</head>
<body>
<ul>
                   
                <!--<li><a href="about.asp"><font color="white">About</font></a></li>
                <!--<li><a href="about.asp"><font color="white">Job Openings</font></a></li>-->
                
                <li class="logout"><a href="logout.html"><font color="white">LOGOUT</font></a></li>
                
              </ul>

         <div class="container">
             <form value="UserRegistration.html" method="post" id="registrationForm" onsubmit="return validateRegistrationForm()">
                 <p class="paragraph">
                    <b>USER REGISTRATION</b>
                 </p>
                 <input type="text" name="firstName" placeholder="First Name" class="name" required>
                 <input type="text" name="lastName" placeholder="Last Name" class="name" required><br>
                 <input type="number" name="age" placeholder="Age" class="userDetails" min="18" max="100" required><br>
                <select class="gender" name="gender"  required>
                    <!--  <option value="GENDER">GENDER</option>-->
                    <option value="MALE">MALE</option>
                    <option value="FEMALE">FEMALE</option>
                </select><br>
                 
                 <input type="number" name="contactNumber" placeholder="Contact Number" class="userDetails" required><br>
                 <input type="email" name="emailId" placeholder="Email Id" class="userDetails" required><br>
                 <input type="password" name="password" placeholder="Password" class="userDetails" required><br>
                 <select class="userType" name="userType" onChange="checkOption(this)" required>
                   <!--  <option>User Type</option> -->
                    
                    <option value="HIRER">HIRER</option>
                    <option value="CANDIDATE">CANDIDATE</option>
                </select><br>
                 <input type="text" name="qualification" placeholder="Qualification" class="userDetails" required><br>
                 <input type="text" id="companyName" name="companyName" placeholder="Company Name" class="userDetails" required><br>

                <div class="center"> 
                    <button type="submit"><a href="Login.html"><font color="white">REGISTER</font></a></button>
                </div>
            </form>

         </div>    
	 <script type="text/javascript">
        function checkOption(obj) {
            var input = document.getElementById("companyName");
            input.disabled = obj.value == "CANDIDATE";
        }
    </script>
</body>
</html>
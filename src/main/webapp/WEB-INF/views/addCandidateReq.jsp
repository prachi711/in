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
<title>Candidate Requirement</title>
<link rel="stylesheet" href="resources/css/addCandidateRequirement.css">

 <style>
body {
  background-image: url("resources/images/urbkg7.jpg");
  
  background-repeat: repeat;
  background-size: cover;
  background-position: center;
}
</style>
</head>
<body>
   <ul>
                    <li><a href="HrHome.html"><font color="white">HOME</font></a></li>
                   
                      <li ><a class="logout" href="logout.html"><font color="white">LOGOUT</font></a></li>
                   
                    
                   
                    
                  </ul>
        <div class="container">
            <form action="addCandidateReq.html" method="POST" >
                <p class="paragraph">
                        
                   <b>ADD CANDIDATE REQUIREMENT</b>
                </p>
                <input type="number" name="employeeId" placeholder="Employee Id" class="requirement" required><br>
                <input type="text" name="domain" placeholder="Domain" class="requirement" required><br>
                <input type="number" name="requiredVacancies" placeholder="Required Vacancies" class="requirement" required><br>
               <select class="qualification" required>
                   <option>QUALIFICATION</option>
                   <option>BE/BTECH</option>
                   <option>MCA</option>
                   <option>OTHERS</option>
               </select><br>
                
                <input type="date" name="closingDate" placeholder="Closing Date" class=" requirement" required><br>
                <input type="number" name="priority" placeholder="Priority" class="requirement" required><br>
                <input type="number" name="minimumExperience" placeholder="Minimum Experience" class="requirement" required><br>
                
               <div class="center"> 
                   <button type="submit">REGISTER</button>
               </div>

        </div>    


</body>
</html>
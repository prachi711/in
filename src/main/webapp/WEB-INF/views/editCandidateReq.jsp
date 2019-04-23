<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
<title>Edit Candidate</title>
<link rel="stylesheet" href="resources/css/editCandidateRequirement.css">
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
                   
                    <!--<li><a href="about.asp"><font color="white"></font></a></li>
                    <li><a href="about.asp"><font color="white">Job Openings</font></a></li>-->
                    
                     <li><a href="HrHome.html"><font color="white">HOME</font></a></li>
                    <li class="logout"><a href="logout.html"><font color="white">LOGOUT</font></a></li>
                    
                  </ul>
<div class="container">

<form class="well form-horizontal" action="editCandidateReq.html" method="post"  id="contact_form">


<!-- Form Name -->
<legend><center><h2><b> Edit Candidate Requirement </b></h2></center></legend><br>

 <table border="1" class="table table-bordered">
                                            <tr>
                                                <td>
                                                    <center><span style="color: gray">EmployeeId</span>
                                                </td>
                                                <td>
                                                        <center> <span style="color: gray">RequirementId</span>
                                                    </td>
                                                    <td>
                                                            <center><span style="color: gray">Domain</span>
                                                        </td>
                                                        <td>
                                                                <center><span style="color: gray">RequiredVacancies</span>
                                                            </td>
                                                             <td>
                                                                <center><span style="color: gray">ClosingDate</span>
                                                            </td>
                                                             <td>
                                                                <center><span style="color: gray">Priority</span>
                                                            </td>
                                                             <td>
                                                                <center><span style="color: gray">MinExperience</span>
                                                            </td>
                                                             <td>
                                                                <center><span style="color: gray">Qualification</span>
                                                            </td>
                                                           
                                                            <td>
                                                                    
                                                                </td>
                                            </tr>
						<c:forEach  var="CandidateRequirement"  items= "${CandidateRequirement}">
                        <tr>
                          <td>
                           ${CandidateRequirement.employeeId}
                          </td>
                          <td>
                            ${CandidateRequirement.requirementId}
                          </td>
                          <td>
                            ${CandidateRequirement.domain}
                          </td>
                          <td>
                             ${CandidateRequirement.requiredVacancies}
                          </td>
                          <td>
                             ${CandidateRequirement.closingDate}
                          </td>
                          <td>
                             ${CandidateRequirement.priority}
                          </td>
                          <td>
                             ${CandidateRequirement.minExperience}
                          </td>
                          <td>
                             ${CandidateRequirement.qualification}
                          </td>
                          <td>
                            <center>
                              <a href="editCandidateRequirements?reqId=${CandidateRequirement.requirementId}" class="btn btn-secondary form-rounded"  width="50px">Edit 
                              </a>
						   </center>
                          </td>
                        </tr>
                       </c:forEach>                                

                                        </table>

</div>

</form>
</div>

</body>
</html>
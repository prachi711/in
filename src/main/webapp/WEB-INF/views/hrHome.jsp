<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
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

 <style type="text/css">

            
body{
      background-image:url(resources/images/canbkg.jpg); 
      background-repeat: no-repeat;
	background-size:cover;
              
	background-color: #f5f5f5;

                margin: 0;

	 padding: 0;
             
	font-family:'Times New Roman', Times, serif ;
           
 }

   
.page {
           
     margin: 40px;

  }

         
   h1{
           
     margin: 40px 0 60px 0;
        
    }
	.glyphicon.glyphicon-stats{
	font-size:30px;
	}

      
  .dark-area {
    
            background-color: #666;
             
   padding: 40px;
                
margin: 0 -40px 20px -40px;
                
clear: both;
           
 }

       
     .clearfix:before,.clearfix:after {
content: " "; display: table;}
          

  .clearfix:after {clear: both;}
      

      .clearfix {*zoom: 1;}

     
   

.affix {
      top:0;
      width: 100%;
      z-index: 9999 !important;
  }
  .navbar {
      margin-bottom: 0px;
  }

  .affix ~ .container-fluid {
     position: relative;
     top: 50px;
  }
	 
.top-menu ul li:nth-child(3) {
    margin-right: 0 !important;
}
	 
</style>

     

<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Emplox Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />  
 
<!--Font and distance from top of content of hirer profile-->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
    

<title>Hirer</title>

<link href="resources/css/styleH.css" rel="stylesheet" type="text/css" media="all" />


<!-- <link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" /> -->

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery-1.11.1.min.js"></script>
<!--<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />        -->
<!--scrolling-->
<script type="text/javascript" src="resources/js/move-top.js"></script>
<script type="text/javascript" src="resources/js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!--scrolling-->
</head>
<body>	
<!--top-header-->



<div id="home" class="top-header" style="width:510px; height: 100%; position:fixed; z-index:999; background-color: rgba(0,0,0,0.3);
  color: white;margin:0px; padding:0px;">
	 
		

		 <div class="top-menu" style="float:left; margin-left: 0px; padding: 0%" >
			 
			 <span class="menu"  ></span>
			 <ul style="float:left;">
					<li style="float:left;"><a href="index.html">HOME</a></li>
				<!--<li><a class="scroll" href="#head1" >HOME</a></li>-->
				<!--<li><a class="scroll" href="#" >PROFILE</a></li>-->
				
				
				<li style="float:left;"><a class="" href="addCandidateReq.html" >ADD CANDIDATE REQUIREMENT</a></li>
				<!--<li><a class="scroll" href="#about">About</a></li>-->
                <li style="float:left;"><a class="" href="editCandidateReq.html" >EDIT CANDIDATE REQUIREMENT</a></li>
                <li style="float:left;"><a class="" href="interviewSchedule.html" >INTERVIEW SCHEDULE</a></li>
                <li style="float:left;"><a class="" href="interviewObservation.html" >INTERVIEW OBSERVATION</a></li>
				<li style="float:left;"><a class="" href="logout.html" >LOGOUT</a></li>
			<!--	<li><a class="scroll" href="#contact" >CONTACT</a></li>-->
			 </ul>
		     <!-- script-for-menu -->
				<!-- <script>					
							$("span.menu").click(function(){
								$(".top-menu ul").slideToggle("slow" , function(){
								});
							});
				 </script>
		     <!-- script-for-menu -->
		  </div>
	 </div>
</div>	
<!--header-->


<div class="header" id="head1" >
		<div class="container-fluid" >
			<div class="banner-info" 
			 style="width:100%;padding-top:100px;padding-bottom:10px;padding-left:700px;">
			
				 <h1 style="color:rgba(255,255,255,1);font-family:'Times New Roman', Times, serif ;"><b><u>HIRER PROFILE</u></b></h1>
				<h3 style="color:rgba(255,255,255,1);font-family:'Times New Roman', Times, serif ;padding-top:10px;">
				
					NAME:${can.firstName}<br>
				QUALIFICATION: ${can.qualification}<br>
				AGE: ${can.age}<br>
				GENDER: ${can.gender}<br>
				CONTACT NUMBER: ${can.contactNumber}<br>
				EMAIL ID: ${can.emailId}<br>
				COMPANY NAME: ${can.companyName}<br>
				</h3>


				 
							
				
				
				<div class="clearfix"> </div>
			</div>
	 </div>
</div>

</body>
</html>		
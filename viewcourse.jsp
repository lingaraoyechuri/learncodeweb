<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<header>
<%@ include file="Head.jsp"%>
</header>
<article>
  <jsp:scriptlet>
   String user = (String)session.getAttribute("user");
   String message = "welcome"+user+"!";
  </jsp:scriptlet>
  <b><jsp:expression>message</jsp:expression></b>
  <jsp:useBean id="course" class="com.learn.model.course" scope="request"/>
  <div class="panel panel-primary">
    <p class = "panel panel-heading">course details</p>
    <div class="panel-body">
      <div class="media">
         <div class ="media-left">
           <a href="#"><img src='<jsp:getProperty name="course" property="imageUrl"/>'
           width="300" height="300"/></a>
         </div>
         <div class ="media-body">
           <h4 class="media-heading">
           <jsp:getProperty property="courseName" name="course"/> </h4>
           <p>
               <strong>Trainer Name :</strong>
               <jsp:getProperty property="facultyName" name="course"/>
           </p>        
           <p>
               <strong>course decription :</strong> <br/>
               <jsp:getProperty property="description" name="course"/>
           </p>
           <p>
               <strong>course Fee :</strong> <br/>
               <jsp:getProperty property="description" name="course"/>
           </p>
         
         </div>
      </div>
      <p class = "text-center">
      <a href="courses.jsp" class = "btn btn-lg btn-success"> view all courses</a>
      </p>
    </div>
  </div>
</article>
<footer>
 <%@ include file="foot.jsp" %>
</footer>
</div>

</body>
</html>
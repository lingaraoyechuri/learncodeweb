<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error page-learn today</title>
</head>
<body>
<header>
<%@ include file= "Head.jsp" %>
</header>
<article>
 <div class="alert alert-danger">
   <% 
     String imageurl =config.getInitParameter("imageUrl");
     String errorMessage = config.getInitParameter("errorMessage");
     
     out.println("<Center><img src='"+imageurl+"'alt='"+errorMessage+"'/>");
     out.println("<h1>oops....!<br>" + errorMessage+ "</h1></center>");   
   %>
 </div>
  
</article>
<footer>
<%@ include file="foot.jsp" %>
</footer>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="java.sql.*, java.util.*,com.learn.model.course" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
 <body>
  <jsp:scriptlet>
  String userName= (String)session.getAttribute("user");
  if(userName== null)
	  response.sendRedirect("login.jsp?requestUrl=findcourse");
  </jsp:scriptlet>
  
   <jsp:useBean id="course" class="com.learn.model.course" scope="request"></jsp:useBean>
   
   <jsp:scriptlet> 
   
   String courseName =null;
   String facultyName=null;
   String courseDuration=null;
   int coursefe=0;
   
   courseName=request.getParameter("courseName");
   
   Connection con = (Connection) application.getAttribute("Connection");
   String sql = "select * from course where courseTitle='" + courseName + "';";

   Statement stmt= con.createStatement();
   ResultSet rs = stmt.executeQuery(sql);
   
   if(rs.next()){	
   </jsp:scriptlet>	 
     
   <jsp:setProperty name="course" property="courseName" value="<%=courseName %>"/>
   <jsp:setProperty name="course" property="facultyName" value="<%=rs.getString(3) %>"/>
   <jsp:setProperty name="course" property="imageUrl" value="<%=rs.getString(4) %>"/>
   <jsp:setProperty name="course" property="fees" value="<%=rs.getInt(5) %>"/>
   <jsp:setProperty name="course" property="description" value="<%=rs.getString(6) %>"/>    
    
 
     
   <jsp:scriptlet>
   }
   </jsp:scriptlet>  
   <jsp:forward page="viewcourse.jsp"></jsp:forward> 
   
</body>
</html>
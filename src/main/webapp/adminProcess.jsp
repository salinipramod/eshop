<%@page import="bean.AdminDao"%>  
<jsp:useBean id="obj" class="bean.AdminBean"/> 
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=AdminDao.validate(obj);  
if(status){  
out.println("Your successfully logged in");  
session.setAttribute("session","TRUE"); 
%>  
<jsp:include page="home.jsp"></jsp:include>  
<% 
}  
else  
{  
out.print("Sorry, email or password error");  
%>  
<jsp:include page="home.jsp"></jsp:include>  
<%  
}  
%>  

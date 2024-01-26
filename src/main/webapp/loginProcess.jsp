<%@page import="bean.LoginDao"%>  
<jsp:useBean id="Bean" class="bean.LoginBean"/> 
<jsp:setProperty property="*" name="Bean"/>  
  
<%  
String status=LoginDao.validate(Bean);  
if(status!= null){  
out.println("Your successfully logged in");  
session.setAttribute("session","TRUE"); 
session.setAttribute("username", status);

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

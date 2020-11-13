<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<HTML>
	<BODY>
	 
    <H1> Hi! First JSP Page </H1>

	             
   <% out.println("Welcome to JSP world"); %>
	
		</br> 1+2+3= <%= 1+2+3%> </br>
			today is <%= new java.util.Date() %>
	</BODY>
</HTML>


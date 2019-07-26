<%-- 
    Document   : ErrorPage
    Created on : 26 Feb, 2019, 11:38:18 AM
    Author     : PRIYANK DHRUV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <%
        
            out.print("Error Occured due to Invalid Data !!" + "<br/>");
            out.print("<br/>");
            
        %>
        <form name = "JJ" method = "post" action = "Login.jsp">
            <input type = "submit" name = "Try Again"/> 
        </form>
    </body>
</html>

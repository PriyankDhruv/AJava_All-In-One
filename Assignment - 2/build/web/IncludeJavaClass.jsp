<%-- 
    Document   : IncludeJavaClass
    Created on : 12 Mar, 2019, 11:11:04 AM
    Author     : PRIYANK DHRUV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import = "java.io.*"%>
        <%@page import = "java.net.*"%>
        <%@page import = "javax.servlet.*"%>
        <%@page import = "javax.servlet.http.*"%>
     
        <%!  
        public class HelloWorld{
            int x = 0;
            int Increament(){
            
                x = x + 1;
                return x;
            }     
        }
        %>
        
        
        <%
             HelloWorld h = new HelloWorld();
            int y = h.Increament();
            out.print(y);
            
        %>
    </body>
</html>

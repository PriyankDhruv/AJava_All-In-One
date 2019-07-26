<%-- 
    Document   : Login
    Created on : 26 Feb, 2019, 11:21:25 AM
    Author     : PRIYANK DHRUV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User_Login</title>
    </head>
    <body>
        <form name = "JJ" method = "post" action = "Login.jsp">
            <br/>
            <div>
                <input type = "text" name = "username" placeholder = "Username"/>
            </div>
            <br/>
            <div>
                <input type = "password" name = "password" placeholder = "Password"/>
            </div>
            <br/>
            <div>
                <input type = "submit" name = "submit"/>
            </div>
        </form>
        <% 
        
            if(request.getParameter("username") != null){
            
                if(!(request.getParameter("username").equals("SnakeEye") && 
                        request.getParameter("password").equals("M@havir@1998"))){
                    
                            response.sendRedirect("ErrorPage.jsp");
                            
                }
                
            }

         %>
    </body>
</html>

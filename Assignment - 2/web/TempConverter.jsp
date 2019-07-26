<%-- 
    Document   : TempConverter
    Created on : 26 Feb, 2019, 10:20:34 AM
    Author     : PRIYANK DHRUV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Temp_Converter</title>
    </head>
    <body>
        <form name = "JJ" method = "post" action = "TempConverter.jsp">
            <br/>
                <div>
                    F: <input type = "number" name = "f"/>
                </div>
                <br/>
                <div>
                    <input type = "submit" name = "submit"/>
                </div>
            
            <br/>    
        </form>
        <% 
            if(request.getParameter("f") != null){
            
                double f = Double.parseDouble(request.getParameter("f"));
                double c = ((f - 32)* 5)/9;
                String s = "F = " + f + " C = " + c + "<br/>";
                
                if(pageContext.getAttribute("histroy", PageContext.APPLICATION_SCOPE) == null){
                
                    pageContext.setAttribute("histroy", s, PageContext.APPLICATION_SCOPE);
                    
                }else{
                    
                    String Histroy = pageContext.getAttribute("histroy", PageContext.APPLICATION_SCOPE).toString(); 
                    pageContext.setAttribute("histroy", s + Histroy, PageContext.APPLICATION_SCOPE);
                    
                }
                
                out.print("<br/>" + pageContext.getAttribute("histroy", PageContext.APPLICATION_SCOPE));
                
            }
  
          %>
    </body>
</html>

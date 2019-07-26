<%-- 
    Document   : DynamicHtml
    Created on : 26 Feb, 2019, 6:41:47 PM
    Author     : PRIYANK DHRUV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dynamic_Html_Generator</title>
    </head>
    <body>
        <form name = "JJ" method = "post" action = "DynamicHtml.jsp">
            <br/>
            <div>
                <input type = "number" name = "n" placeholder = "Enter any value"/>
            </div>
            <br/>
            <%
            
                if(request.getParameter("n") != null){
                
                    for(int i=0; i<Integer.parseInt(request.getParameter("n")); i++){
                    
            %>
            <div>
                <input type = "text" name = "name"/>
            </div>
            <%
                
                    }                    
            %>
            <br/>
            <div>
                <input type = "submit" value = "Next"  onclick = "document.forms[0].action = 'DynamicHtml.jsp'"/>
            </div>
            <%
                    
                }
            %>
        </form>
    </body>
</html>

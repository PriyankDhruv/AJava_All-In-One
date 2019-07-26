<%-- 
    Document   : calcy
    Created on : 14 Feb, 2019, 1:39:08 PM
    Author     : PRIYANK DHRUV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calcy</title>
    </head>
    <body>
        <form action="calcy.jsp" method="post">
            Enter number<input type="number" name="n1"><br/>
            Enter number<input type="number" name="n2"><br/>
            <input type = "submit" name = "op" value = "+"/><br/>
            <input type = "submit" name = "op" value = "-"/><br/>
            <input type = "submit" name = "op" value = "*"/><br/>
            <input type = "submit" name = "op" value = "/"/><br/>
        </form>
    </body>
</html>
<%
    if(request.getParameter("op")!=null)
      {
        double n1=Double.parseDouble(request.getParameter("n1"));
        double n2=Double.parseDouble(request.getParameter("n2"));
        String op=request.getParameter("op");
        char operation=op.charAt(0);
        switch(operation)
         {
            case '+':   out.println(n1+n2);
                        break;
            case '-':   if(n1 > n2){
                             out.println(n1-n2);
                             break;
                        }else{
                             out.println(n2-n1);
                             break;
                        }
            case '*':   out.println(n1*n2);
                        break;
                        
            case '/':   out.println(n1/n2);
                        break;
         }

     }
    %>
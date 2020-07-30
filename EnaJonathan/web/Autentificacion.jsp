

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="CSS/Estilos.css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rubro </title>
    </head>
    <body class="fondo"> 
        <form action="iniciar" method="post">
       <center>
        <table cellspacing="4" cellpadding="2" border="0">
            <tr>
                <td class="p">Usuario:</td>
                <td>
                <input type="text" name="cuenta" >  
                </td>
            </tr>

            <tr>
                <td class="p">Password: </td>
                <td>
                <input type="password" name="password" >
                </td>
                
            </tr>

            <tr>
                <td><br></td>
                <td align="center">
                    <input type="checkbox" name="recordar" value="Recordar">Recordar<br>
                </td>
                
            </tr> 
            
            <tr>
                <td><br></td>
                <td align="center">
                    <input  class="btn" type="submit" value="Ingresar"></form>
                </td>
                
            </tr> 
    </center>
    </body>
</html>

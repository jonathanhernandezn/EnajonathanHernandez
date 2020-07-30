

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="CSS/Estilos.css"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rubro </title>
    </head>
    <body class="fondo">
        
        <h2 class="p"> INGRESAR REQUERIMIENTO</h2>
        <form action="new" method="post"> 
        <table cellspacing="5" cellpadding="2" border="0">
            <tr>
                <td class="p">Gerencia:</td>
                <td>
                <select class="select-css" name="gerencia">
                    <option selected>Abastecimiento</option>
                    <option>TI</option>
                    </select> <br>  
                </td>
            </tr>

            <tr>
                <td class="p">Depto.:</td>
                <td>
                <select class="select-css" name="Depto">
                    <option selected>Abastecimiento</option>
                    <option>TI</option>
                </select> <br>  
                </td>
            </tr>

            <tr>
                <td class="p">Asignar a:</td>
                <td>
                <select class="select-css" name="Asig">
                    <option selected>Tecnico</option>
                    <option>Ingeniero</option>
                </select> <br>  
                </td>
            </tr> 
            
            <tr>
                <td class="p">Encargado:</td>
                <td>
                <select class="select-css" name="Encarg">
                    <option selected>Pedrito</option>
                    <option>Pedritaa</option>
                </select> <br>  
                </td>
            </tr> 
        
            <tr>
                <td class="p">Requerimiento:</td>
                <td>
                    <textarea class="estilotextarea" name="area1" rows="4" cols="40" onClick='this.value=""'>Ingrese descripción del requerimiento</textarea>  
                </td>
            </tr>   
        </table>
        
        
        <table cellspacing="1" cellpadding="2" border="0">
            <tr>
                <td> <input class="btn" type="submit" value="Guardar"> </td></form>  
             
            <form action="Menuprincipal.jsp" method="post">
                <td> <input class="btn" type="submit" value="Volver al menú"></form> </td>
            </tr>       
        </table>
     
    </body>
</html>

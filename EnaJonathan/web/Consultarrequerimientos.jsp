
<%@page import="ena.hernandez.proyecto.objetos.Requerimiento"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<link rel="stylesheet" type="text/css" href="CSS/Estilos.css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rubro </title>
    </head>
    <body class="fondo">
        <h2 class="p">Consultar Requerimientos</h2>
        <form action="mostrar" method="post">
        <table cellspacing="3" cellpadding="3" border="0">
            <tr>
                <td class="p">Gerencia:</td>
                <td>
                <select class="select-css" name="geren">
                    <option selected>Abastecimiento</option>
                    <option>TI</option>
                </select> <br>  
                </td>
                <td></td>
            </tr>
            
            <tr>
                <td class="p">Depto:</td>
                <td>
                <select class="select-css" name="depto">
                    <option selected>Abastecimiento</option>
                    <option>TI</option> 
                </select> <br>  
                </td>
                <td></td>
            </tr>
            
            <tr>
                <td class="p">Asignado a:</td>
                <td>
                <select class="select-css" name="Asig">
                    <option selected>Tecnico</option>
                    <option>Ingeniero</option>
                    
                </select> <br>  
                </td>
                <td><input class="btn"  type="submit" value="Buscar"></td>
            </tr>
        </table>
            
            
        <table border="1">
            <tr> 
            <th class="p">Gerencia</th>
            <th class="p">Depto.</th>
            <th class="p">Asignado a</th>
            <th class="p">Requerimiento</th>
            </tr>
             
             <%
                List<Requerimiento> listaRequerimiento = (List<Requerimiento>) request.getAttribute("resultados");
                
                if (listaRequerimiento!=null){
                for (Requerimiento requerimiento : listaRequerimiento) {
             %>
                <tr class="datos">
                <td class="p"><%=requerimiento.getGerencia()%></td>
                <td class="p"><%=requerimiento.getDepto()%></td>
                <td class="p"><%=requerimiento.getAsignar()%></td>
                <td class="p"><%=requerimiento.getRequerimiento()%></td>
                </tr>
                <%}     
                }                 
            %>
            
            </table>
            </form>
            <br>
             <form action="Menuprincipal.jsp" method="post">
                <input class="btn"  type="submit" value="Volver al menú"></form>
        
    </body>
</html>

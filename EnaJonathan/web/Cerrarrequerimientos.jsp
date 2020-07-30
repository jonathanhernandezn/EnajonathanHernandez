
<%@page import="ena.hernandez.proyecto.objetos.Requerimiento"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="CSS/Estilos.css"/>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title class="p">Rubro </title>
    </head>
    <body class="fondo">
        <h1 class="p">Cerrar requerimientos</h1>
        <form action="cerrar">
            <table cellspacing="3" cellpadding="3" border="0">
            <tr>
                <td class="p">Gerencia:</td>
                <td>
                <select class="select-css" name="geren">
                    <option>Abastecimiento</option>
                    <option>TI</option>
                </select> <br>  
                </td>
                <td></td>
            </tr>
            
            <tr>
                <td class="p">Depto:</td>
                <td>
                <select class="select-css" name="depto">
                    <option>Abastecimiento</option>
                    <option>TI</option> 
                </select> <br>  
                </td>
                <td></td>
            </tr>
            
            <tr>
                <td class="p">Asignado a:</td>
                <td>
                <select class="select-css" name="Asig">
                    <option>Tecnico</option>
                    <option>Ingeniero</option>
                    
                </select> <br>  
                </td>
                <td><input  class="btn"  type="submit" name="btn" value="Buscar"></td>
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
                for (int i = 0 ; i < listaRequerimiento.size(); i++) {
             %>
                <tr class="datos">
                <td class="p"><%=listaRequerimiento.get(i).getGerencia()%></td>
                <td class="p"><%=listaRequerimiento.get(i).getDepto()%></td>
                <td class="p"><%=listaRequerimiento.get(i).getAsignar()%></td>
                <td class="p"><%=listaRequerimiento.get(i).getRequerimiento()%></td>
                <%
                  if(listaRequerimiento.get(i).getCerrado() == 0)  {
                %>
                <td><a   class="btndif" href="cerrar?btn=cerrar&id=<%=listaRequerimiento.get(i).getId()%>">Cerrar</a></td>
                <%
                  }
                %>
                </tr>
                <%}     
                }                 
            %>
            
            </table>
            </form>
        <br>
         <form action="Menuprincipal.jsp" method="post">
                <td> <input class="btn"  type="submit" value="Volver al menú"></form>
        
    </body>
</html>

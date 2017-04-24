<%-- 
    Document   : listarRecordatorios
    Created on : 23/04/2017, 12:17:51 PM
    Author     : ayoro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                background-image: url(http://s1.1zoom.me/big0/635/Bridges_Australia_Night_468328.jpg);
            }
            .logo{
                text-align: right;
            }
            .title{
                text-align: center;
                color: #ffffff;
            }
            form{
                text-align: center;
                margin-left: 370px;
                font-weight: bold;
            }
            td{
                color: white;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="logo"><image src="logo_pagina.png"/></div>
        <div class="title"><h2>BUSCAR RECORDATORIOS</h2></div><br>
        <%if (request.getAttribute("mensaje")=="error") {%>
            <script>alert("No se encontró el recordatorio. Asegúrese de haber llenado correctamente todos los campos");</script>
        <%}%>
        <form action="BuscarRecordatorioServlet" method="get" name="form">
            <%
                String id = (String) request.getAttribute("id");
                String fecha = (String) request.getAttribute("fecha");
                String hora = (String) request.getAttribute("hora");
                String descripcion = (String) request.getAttribute("descripcion");
            %>
            <table text-align="center">
                <tr>
                    <td>ID del recordatorio: <input type="text" name="id"></td>
                    <td><input type="submit" value="Buscar"</td>
                </tr><br><br>
            </table>
            <table>
                <tr>
                    <td>ID: <input type="text" name="id" <%if(id!=null){%>value="<%=id%>"<%}%>></td>
                    <td>Fecha: <input type="text" name="fecha" <%if(fecha!=null){%>value="<%=fecha%>"<%}%>></td>
                    <td>Hora: <input type="text" name="hora" <%if(hora!=null){%>value="<%=hora%>"<%}%>></td>
                </tr>
                <tr>
                    <td>Descripcion: <input type="text" name="descripcion" <%if(descripcion!=null){%>value="<%=descripcion%>"<%}%>></td>
                </tr>
            </table>
        </form><br><br>
        
        <form action="ListarRecordatorioServlet" method="get" name="formu">
            <input type="submit" value="Listar recordatorios">
        </form>
        <h1></h1>
    </body>
</html>

<%-- 
    Document   : editarUsuario
    Created on : 23-abr-2017, 15:26:02
    Author     : Nicolas
--%>

<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="vo.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Editar Usuario</title>
    </head>
    <body>


        <%HttpSession mySession = request.getSession();
            UsuarioVO vo = (UsuarioVO) mySession.getAttribute("user");
        %>

        <form action="EditarUsuarioServlet"> 

            Contraseña Actual: <input type="password" name="psw1" ><br>
            Nueva Contraseña: <input type="password" name="psw2" ><br>

            <input type="submit" value="Cambiar">

        </form>
        <%if(request.getAttribute("Mensaje")!=null){%>
        
        
        <%if (request.getAttribute("Mensaje").equals("ok")) {%>
        <script>alert("La contraseña ha sido modificada.");</script>
        <%}%>
        <%if (request.getAttribute("Mensaje") == "error") {%>
        <script>alert("Error: Contraseña incorrecta.");</script>
        <%}%>
        
        <%}%>
    </body>
</html>

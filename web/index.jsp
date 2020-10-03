<%-- 
    Document   : index
    Created on : 29-sep-2020, 19:57:08
    Author     : Usuario
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            if (session.getAttribute("listaest") == null) {
                ArrayList<Persona> listaux = new ArrayList<Persona>();
                session.setAttribute("listaest", listaux);
            }
            ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaest");
        %>
        <h1>Lita de personas</h1>
        <a href="Controlador?op=1"><b>Nuevo</b></a>
        <table border ="1">
            <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Edad</th>
                <th></th>
                <th></th>

            </tr>

            <%
                if (lista != null) {
                    for (Persona item : lista) {


            %>
            <tr> 
                <td><%= item.getId()%></td>
                <td><%= item.getNombres()%></td>
                <td><%= item.getApellidos()%></td>
                <td><%= item.getEdad()%></td>
                <td><a href="Controlador?op=2&id=<%=item.getId()%>">Modificar</a></td>
                <td><a href="Controlador?op=3&id=<%=item.getId()%>"
                       onclick='return confirm("Esta seguro de eliminar el registro");'>Eliminar</a></td>
            </tr>
            <%            }
                }
            %>
        </table>
    </body>
</html>

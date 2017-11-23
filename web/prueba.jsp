<%-- 
    Document   : prueba
    Created on : 22-nov-2017, 19:01:28
    Author     : usuario
--%>

<%@page import="incidenciascad.Incidencia"%>
<%@page import="java.util.ArrayList"%>
<%@page import="incidenciascad.IncidenciasCAD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Incidencias</h1>
        <%
            IncidenciasCAD iCAD = new IncidenciasCAD();
            ArrayList<Incidencia> listaIncidencias = iCAD.leerIncidencias();
            Incidencia incidencia;
            int pos = 0;
            while (listaIncidencias.size() > pos) {
                incidencia = listaIncidencias.get(pos);
                pos++;
        %>
        <p>
        <%
                out.println(incidencia);
                if (incidencia.getEquipo().getEquipoId() == 6) out.println(incidencia.getDescripcion());
        %>
        </p>
        <%
            }
        %>
    </body>
</html>

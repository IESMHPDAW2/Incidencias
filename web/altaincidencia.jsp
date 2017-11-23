<%-- 
    Document   : altaincidencia
    Created on : 23-nov-2017, 15:30:45
    Author     : ifontecha
--%>

<%@page import="incidenciascad.Equipo"%>
<%@page import="incidenciascad.IncidenciasCAD"%>
<%@page import="incidenciascad.Dependencia"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
&lt;<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>INCIDENCIAS</title>
<meta content="text/html; charset=iso-8859-1" http-equiv="Content-Type" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<div id="container">
	<div id="banner">
		<h1>INCIDENCIAS</h1>
		<form class="botonsal" method="post">
			<h15> PILAR SÁNCHEZ SAUSA<br />
</h15> <input name="Salir" type="button" value="SALIR" /></form>
	</div>
	<div class="clear">
	</div>
	<div id="sidebar">
		<div class="menu">
			<ul>
				<li class="links">Menú</li>
				<li><a href="#">Coches</a></li>
				<li><a href="#">Alquileres</a></li>
				<li><a href="#">Clientes</a></li>
			</ul>
		</div>
	</div>
	<div id="content">
		<form>
			<fieldset style="width: 560px">
			<legend>Alta de Incidencia</legend>
			<label>Posición del Equipo: </label><input name="Text1" type="text" /><br />
			<label>Descripción de la Incidencia: </label><input name="Text1" type="text" /><br />
                        <label>Dependencia del Equipo:
			</label><select name="Equipo">
<%
    IncidenciasCAD iCAD = new IncidenciasCAD();
    ArrayList<Equipo> listaEquipos = iCAD.leerEquipos();
    Equipo equipo = null;
    int pos = 0;
    while (listaEquipos.size() > pos) {
        equipo = listaEquipos.get(pos);
        out.println("<option value=kk " + ">");
        out.println(equipo.getNumeroEtiquetaConsejeria());
        out.println("</option>");
        pos++;
    }
%>
			</select><br />
			<a href="index.html"><input align="right"      name="Button1" type="button" value="Cancelar" /></a><a href="correcto.html"> <input align="right"      name="Button1" type="button" value="Aceptar" /></a></fieldset>
		</form>
	</div>
		
	<div id="footer" style="width: 740px; height: 40px">
		
		Diseñado por Pilar Sánchez Sausa DAW2</div>
</div>

</body>

</html>
</head>


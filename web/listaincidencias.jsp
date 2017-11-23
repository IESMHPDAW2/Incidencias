<%-- 
    Document   : listaincidencias
    Created on : 22-nov-2017, 19:52:02
    Author     : usuario
--%>

<%@page import="incidenciascad.Incidencia"%>
<%@page import="java.util.ArrayList"%>
<%@page import="incidenciascad.IncidenciasCAD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
		<a href="crear.html"><input align="right" name="COCHE" type="button" value="CREAR UN COCHE" style="width: 51%" /></a></form>


		<form>
			<fieldset style="width: 560px">
			<legend>Filtro</legend>
			<label>&nbsp; Matricula </label><input name="Text1" type="text" />
			<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Marca </label>
			<select name="Marca">
			<option selected="selected" value="Ford">Ford</option>
			<option value="Opel">Opel</option>
			<option value="Citroen">Citroen</option>
			<option value="Bmw">BMW</option>
			<option value="Mercedes">Mercedes</option>
			<option value="Nissan">AUDI</option>
			<option value="Seat">Seat</option>
			</select> <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Modelo </label>
			<input name="Text3" type="text" /><br />
			<label><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ordenar por:<select name="Tipo">
			<option selected="selected" value="Matricula">Matricula</option>
			<option value="Marca">Marca</option>
			<option value="Modelo">Modelo</option>
			</select> </label>&nbsp;&nbsp;&nbsp;&nbsp;
			<input name="Button1" type="button" value="Aplicar" /></fieldset>
		</form>
		<form>
<%
    IncidenciasCAD iCAD = new IncidenciasCAD();
    ArrayList<Incidencia> listaIncidencias = iCAD.leerIncidencias();
    int cantidadIncidenciasPorPagina = 20;
    int paginaListaIncidencias = 3;
    int cantidadPaginasListaIncidencias = 1 + (int) (listaIncidencias.size()/cantidadIncidenciasPorPagina);
%>
                        <fieldset style="width: 560px">
                            <legend>&lt; Pagina <%=paginaListaIncidencias%> de <%=cantidadPaginasListaIncidencias%> &gt;</legend>
			<table align="center" border="2" cellspacing="0" style="width: 100%">
				<tr>
					<th>Identificador</th>
					<th>Posición del Equipo</th>
					<th>Descripción</th>
					<th>Comentario del Administrador</th>
					<th>Estado Actual</th>
					<th>Fecha de Estado Actual</th>
					<th>Dependencia</th>
					<th>Usuario</th>
					<th>Tipo de Equipo</th>
					<th>Equipo</th>
				</tr>
<%
    Incidencia incidencia;
    int posIni = (paginaListaIncidencias-1) * cantidadIncidenciasPorPagina;
    int pos = posIni;
    while (listaIncidencias.size() > pos && pos < posIni + cantidadIncidenciasPorPagina) {
        incidencia = listaIncidencias.get(pos);
        pos++;
        out.println("<tr>");
        out.println("   <td>");
        out.println(incidencia.getIncidenciaId());
        out.println("   </td>");
        out.println("   <td>");
        out.println(incidencia.getPosicionEquipoDependencia());
        out.println("   </td>");
        out.println("   <td>");
        out.println(incidencia.getDescripcion());
        out.println("   </td>");
        out.println("   <td>");
        out.println(incidencia.getComentarioAdministrador());
        out.println("   </td>");
        out.println("   <td>");
        out.println(incidencia.getEstado().getNombre());
        out.println("   </td>");
        out.println("   <td>");
        out.println(incidencia.getFechaEstadoActual());
        out.println("   </td>");
        out.println("   <td>");
        out.println(incidencia.getDependencia().getCodigo());
        out.println("   </td>");
        out.println("   <td>");
        out.println(incidencia.getUsuario().getCuenta());
        out.println("   </td>");
        out.println("   <td>");
        out.println(incidencia.getEquipo().getTipoEquipo().getNombre());
        out.println("   </td>");
        out.println("   <td>");
        out.println(incidencia.getEquipo().getNumeroEtiquetaConsejeria());
        out.println("   </td>");
        out.println("   <td>");
        out.println("       <a href='modificar.html'><input id='guardarUno' align='left' name='Button1' style='width: 45%' type='button' value='Modificar' /></a>");
        out.println("   </td>");
        out.println("   <td>");
        out.println("       <a href='modificar.html'><input id='guardarUno' align='left' name='Button1' style='width: 45%' type='button' value='Eliminar' /></a>");
        out.println("   </td>");
        out.println("</tr>");
    }
%>
			</table>
			</fieldset>
		</form>
                
	</div>
	
	
		
	<div id="footer" style="width: 740px; height: 40px">
		
		Diseñado por Pilar Sánchez Sausa DAW2</div>
</div>

</body>

</html>


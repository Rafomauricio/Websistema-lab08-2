<%-- 
    Document   : listadoMatriculas
    Created on : 21/10/2023, 04:56:03 PM
    Author     : rafo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" type="text/css" />
</head>
<body>
<div class="card" style="padding: 30px 0px 0px 30px;">
    <h4 class="display-8">Listado de Matriculas</h4>
    <form method="POST" action="/WebSistema/controladorPrincipal">
        <input type="hidden" name="accion" value="Doc">
        <div class="input-group mb-3">
            <input type="text" name="nro_doc" class="form-control" placeholder="">
        </div>
        <button type="submit" class="btn btn-primary">Buscar</button>
    </form>
    <table class="table table-striped table-hover">
        <thead>
        <tr>
            <th scope="col">Código</th>
            <th scope="col">Fecha</th>
            <th scope="col">Nro_doc</th>
            <th scope="col">Codigo_alumno</th>
            <th scope="col">Total</th>
            <th scope="col">Estado</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${arrMatriculas}" var="matricula">
            <tr>
                <td><c:out value='${matricula.codigo}'/></td>
                <td><c:out value='${matricula.fecha}' /></td>
                <td><c:out value='${matricula.nro_doc}'/></td>
                <td><c:out value='${matricula.codigo_alumno}'/></td>
                <td><c:out value='${matricula.total}'/></td>
                <td><c:out value='${matricula.estado}'/></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>

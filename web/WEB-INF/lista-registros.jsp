<%-- 
    Document   : lista-registros
    Created on : 31/03/2017, 22:03:51
    Author     : aluno
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
   
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="get">
        <h2>Equipamentos cadastrados</h2>
        <select name="filtro">
                 <option value="" ${(filtro=="")?"selected":""}>Todos</option>
                 <option value="WHERE estado=0" ${(filtro=="WHERE estado=0")?"selected":""}>0: Novo</option>
                 <option value="WHERE estado=1" ${(filtro=="WHERE estado=1")?"selected":""}>1: Em uso</option>
                 <option value="WHERE estado=2" ${(filtro=="WHERE estado=2")?"selected":""}>2: Danificado</option>
                 <option value="WHERE estado=3" ${(filtro=="WHERE estado=3")?"selected":""}>3: Perdido</option>
        </select>
        <div><input type="submit" value="Filtrar" class="btn btn-default"></div>
        </form>
        </br>
        <table class="table table-striped">
            <tr>
                <th>Id</th>
                <th>Serie</th>
                <th>Local</th>
                <th>Descricao</th>
                <th>Estado</th>
                <th>Editar</th>
                <th>Excluir</th>
            </tr>
            <c:forEach var="equipamento" items="${equipamentos}">
                <tr>
                    <td>${equipamento.id}</td>
                    <td>${equipamento.serie}</td>
                    <td>${equipamento.local}</td>
                    <td>${equipamento.descricao}</td>
                    <td>
                        <c:choose>
                            <c:when test="${equipamento.estado == 0}">
                                0: Novo
                            </c:when>
                            <c:when test="${equipamento.estado == 1}">
                                1: Em uso
                            </c:when>
                            <c:when test="${equipamento.estado == 2}">
                                2: Danificado
                            </c:when>
                            <c:when test="${equipamento.estado == 3}">
                                3: Perdido
                            </c:when>
                        </c:choose>
                    <td><a type="button" class="btn btn-info" href="edita.html?id=${equipamento.id}">Editar</a></td>
                    <td><a type="button" class="btn btn-danger" href="exclui.html?id=${equipamento.id}">Excluir</a></td>
                    
                </tr>
            </c:forEach>
        </table>
        <div><a class="btn btn-default" href="novo.html" role="button">Novo</a></li>
    </body>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</html>

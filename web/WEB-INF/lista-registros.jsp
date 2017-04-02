<%-- 
    Document   : lista-registros
    Created on : 31/03/2017, 22:03:51
    Author     : aluno
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <h1>Lista Equipamentos</h1>
        <table>
            <tr>
                <th>Id</th>
                <th>Serie</th>
                <th>Local</th>
                <th>Descricao</th>
                <th>Estado</th>
            </tr>
            <c:forEach var="equipamento" items="${equipamentos}">
                <tr>
                    <td><a href="edita.html?id=${equipamento.id}">${equipamento.id}</a></td>
                    <td>${equipamento.serie}</td>
                    <td>${equipamento.local}</td>
                    <td>${equipamento.descricao}</td>
                    <td>${equipamento.estado}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

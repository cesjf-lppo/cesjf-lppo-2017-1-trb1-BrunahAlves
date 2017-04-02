<%-- 
    Document   : edita-registro
    Created on : 02/04/2017, 14:51:17
    Author     : Bruna Alves
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edita Equipamento</h1>
        <form method="post">
            <div><input type="hidden" name="id" value="${equipamento.id}"/>id: ${equipamento.id}</div>
            <div><label>Serie: <input type="text" name="serie" value="${equipamento.serie}"</label></div>
            <div><label>Local: <input type="text" name="local" value="${equipamento.local}"</label></div>
            <div><label>Descricao: <textarea name="descricao">${equipamento.descricao}</textarea></label></div>
            <select name="estado" value="${equipamento.estado}">
                <option value="0" ${equipamento.estado==0?"selected":""}>0: Novo</option>
                <option value="1" ${equipamento.estado==1?"selected":""}>1: Em uso</option>
                <option value="2" ${equipamento.estado==2?"selected":""}>2: Danificado</option>
                <option value="3" ${equipamento.estado==3?"selected":""}>3: Perdido</option>
            </select>
            <div><input type="submit"></div>
        </form>
    </body>
</html>
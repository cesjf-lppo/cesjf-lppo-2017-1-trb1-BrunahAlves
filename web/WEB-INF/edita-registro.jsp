<%-- 
    Document   : edita-registro
    Created on : 02/04/2017, 14:51:17
    Author     : Bruna Alves
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar Equipamento</h1>
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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</html>

<%-- 
    Document   : novo-registro
    Created on : 31/03/2017, 21:22:19
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Entrada de Equipamentos</h1>
        <form method="post">
            <div><label>Número de serie: <input type="text" name="nome"></label></div>
            <div><label>Local: <input type="text" name="email"></label></div>
            <div><label>Descricao: <textarea name="descricao"></textarea></label></div>
            <select name="status" >
                <option value="0">0: Novo</option>
                <option value="1">1: Em uso</option>
                <option value="2">2: Danificado</option>
                <option value="3">3: Perdido</option>
            </select>
            <div><input type="submit"></div>
        </form>
    </body>
</html>

0: novo, 1: em uso,
2: danificado e 3: perdido. 
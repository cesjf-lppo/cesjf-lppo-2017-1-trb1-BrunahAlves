<%-- 
    Document   : novo-registro
    Created on : 31/03/2017, 21:22:19
    Author     : aluno
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
        <h1>Entrada de Equipamentos</h1>
        <form method="post">
            <div><label>Número de serie: <input type="text" name="serie" class="form-control"></label></div>
            <div><label>Local: <input type="text" name="local" class="form-control"></label></div>
            <div><label>Descricao: <textarea name="descricao" class="form-control"></textarea></label></div>
            <select name="estado">
                    <option value="0">0: Novo</option>
                <option value="1">1: Em uso</option>
                <option value="2">2: Danificado</option>
                <option value="3">3: Perdido</option>
            </select><br><br>
            <div><input type="submit" class="btn btn-default"></div>
        </form>
    </body>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</html>
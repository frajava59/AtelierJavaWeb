<%-- 
    Document   : ajouter_pays
    Created on : 24 nov. 2017, 15:06:20
    Author     : Formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <c:import url="_MENU.jsp">
    </c:import>


    <h1>AJout d'un nouveau pays</h1>

    <form method="post">
        <label>Nom du pays </label>
        <input name="nom" />
        <br>
        <input type="submit" value="Enregistrer" />
    </form>

</body>
</html>

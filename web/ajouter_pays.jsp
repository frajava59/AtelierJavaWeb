<%-- 
    Document   : ajouter_pays
    Created on : 24 nov. 2017, 15:06:20
    Author     : Formation
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


    <h1>Ajout d'un nouveau pays</h1>

    <form method="post">
        <label>Nom du pays </label>
        <input name="nom" />
        <br>
        <input type="submit" value="Enregistrer" />
    </form>
    
            <c:import url="_FOOTER.jsp">
        </c:import>

</body>
</html>

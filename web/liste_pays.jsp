<%-- 
    Document   : liste_pays
    Created on : 24 nov. 2017, 14:50:32
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


    <h1>Liste des pays</h1>

    <table>
        <thead>
        <th>Nom</th>
    </thead>
    <tbody>
    <c:forEach items="${pays}" var="gg">
        <tr>
            <td> ${gg.nom}</td>
<!--            <td> <a href=""><input type="button" value="Modifier" /></a></td>-->
            <td> <a href="supprimer_pays?idFilm=${gg.id}"><input type="button" value="Supprimer" /></a></td>
        </tr>
    </c:forEach>
</tbody>
</table>




</body>
</html>

<%-- 
    Document   : liste_films
    Created on : 22 nov. 2017, 12:07:20
    Author     : Formation
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page JSP</title>
    </head>
    <body>
        <c:import url="_MENU.jsp">
        </c:import>

        <h1>Liste des films</h1>
        <table>
            <thead>
            <th>Titre</th>
            <th>Synopsis</th>
            <th>Durée</th>
            <th>Année</th>
        </thead>
        <tbody>
            <c:forEach items="${films1}" var="f">
                <tr>
                    <td> ${f.titre}</td>
                    <td> ${f.synopsis}</td>
                    <td> ${f.duree}</td>
                    <td> ${f.annee}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>


        
</body>
</html>

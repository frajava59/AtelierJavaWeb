<%-- 
    Document   : ajouter_film
    Created on : 24 nov. 2017, 10:15:22
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


        <h1>Nouveau film</h1>

        <form method="post">
            <label>Titre</label>
            <input name="titre" />
            <br>
            <label>Synopsis</label>
            <textarea name="synopsis"></textarea>
            <br>
            <label>Année</label>
            <input name="annee" type="number" min="1900" max="2020" />
            <br>
            <label>Durée</label>
            <input name="duree" type="number" min="1" />
            <br>
            <label>Pays</label>
            <select name="selpays">
                <c:forEach items="${pays}" var="p">
                    <option value="${p.id}">${p.nom}</option>
                </c:forEach>
            </select>
            <br>
            <label>Genre</label>
            <select name="genre_id">
                <c:forEach items="${genres}" var="g">
                    <option  value="${g.id}">${g.nom}</option>
                </c:forEach>
            </select>
            <br>
            <input type="submit" value="Enregistrer" />

        </form>

        <c:import url="_FOOTER.jsp">
        </c:import>

    </body>
</html>

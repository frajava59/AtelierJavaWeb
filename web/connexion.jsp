<%-- 
    Document   : connexion
    Created on : 27 nov. 2017, 13:42:27
    Author     : Formation
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page d'accueil</title>
    </head>
    <body>
        <c:import url="_MENU.jsp">
        </c:import>


        <div>
            <h1>Identifiez vous</h1>

            <form style="text-align: center;" method=post">
                <label>Pseudo : </label>
                <input type='text' name="pseudo"/>
                <br>
                <label>Mot de passe : </label>
                <input type="password" name="mdp"/>
                <br>
                <input type="submit" value="Connexion" />
                       

            </form>




        </div>
        
        <div>
            <br>
        </div>


        <c:import url="_FOOTER.jsp">
        </c:import>
    </body>
</html>

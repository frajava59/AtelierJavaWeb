<%-- 
    Document   : lister_genres
    Created on : 23 nov. 2017, 15:20:19
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
        
        <h1>Liste des genres</h1>
        <table>
            <thead>
            <th>Type</th>
        </thead>
        <tbody>
            <c:forEach items="${lgenre}" var="gg">
                <tr>
                    <td> ${gg.nom}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>

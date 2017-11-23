<%-- 
    Document   : liste_series
    Created on : 22 nov. 2017, 16:25:36
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


         <h1>Liste des series</h1>
        ${test}
        <c:forEach items="${ser}" var="s">
            ${s.titre}<br/>
        </c:forEach>

    </body>
</html>

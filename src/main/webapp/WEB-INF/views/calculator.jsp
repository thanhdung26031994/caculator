<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 27/02/2024
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Caculator</title>
</head>
<body>
<form method="post">
    <fieldset>
        <legend>
            Calculator
        </legend>

        <input id="lettuce" type="checkbox" name="condiment" value="Lettuce">
        <label for="lettuce">Lettuce</label>

        <input id="tomato" type="checkbox" name="condiment" value="Tomato">
        <label for="tomato">Tomato</label>

        <input id="mustard" type="checkbox" name="condiment" value="Mustard">
        <label for="mustard">Mustard</label>

        <input id="sprouts" type="checkbox" name="condiment" value="Sprouts">
        <label for="sprouts">Sprouts</label><br>
        <hr>
        <input type="submit" value="Save">
    </fieldset>
</form>

<h5>Sandwich Condiments:
    <c:forEach items="${condiment}" var="condiment" varStatus="loop">
        <span>${condiment}</span>
    </c:forEach>
</h5>
</body>
</html>

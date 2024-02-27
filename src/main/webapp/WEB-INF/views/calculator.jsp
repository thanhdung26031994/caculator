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
    <title>Calculator</title>
</head>
<body>
<form method="post">
    <fieldset>
        <legend>
            Calculator
        </legend>

        <legend>Calculator</legend>
        <input type="number" name="firstNumber" required>
        <input type="number" name="secondNumber" required><br>
        <hr>
        <input type="submit" value="Addition(+)" name="operator">
        <input type="submit" value="Subtraction(-)" name="operator">
        <input type="submit" value="Multiplication(*)" name="operator">
        <input type="submit" value="Division(/)" name="operator">
    </fieldset>
</form>


<h5>FirstNumber: ${firstNumber}</h5>
<h5>SecondNumber: ${secondNumber}</h5>
<h5>Result ${operator}: <span style="color: red">${result}</span></h5>
</body>
</html>

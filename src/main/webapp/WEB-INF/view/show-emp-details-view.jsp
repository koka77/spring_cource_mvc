<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<body>
<h2>Dear Employee, you are welcome!!!</h2>
<br>
<br>
<%--Your name is: ${param.employeeName}--%>

Your name is : ${employee.name}<br>
Your Surname is : ${employee.surname}<br>
Your Salary is : ${employee.salary}<br>
Your department is : ${employee.department}<br>
Your car: ${employee.carBrand}<br>
Language(s):
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li>
            ${lang}
        </li>
    </c:forEach>
</ul>
</form>
</body>
</html>
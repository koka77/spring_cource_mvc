<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html>
<body>
<h2>Dear Employee, please enter your details</h2>
<br>
<br>

<form:form action="showDetails" modelAttribute="employee">

    Name: <form:input path="name"/>
    <form:errors path="name"/>
    <br>
    <br>
    SurName: <form:input path="surname"/>
    <form:errors path="surname"/>
    <br>
    <br>
    Salary: <form:input path="salary"/>
    <form:errors path="salary"/>
    <br>
    <br>

    Department <form:select path="department">
    <%--    <form:option value="Information Technology" label="IT"/>--%>
    <%--    <form:option value="Human Resources" label="HR"/>--%>
    <%--    <form:option value="Sales" label="Sales"/>--%>
    <form:options items="${employee.departments}"/>
</form:select>
    <br><br>
    Which car do you want?<br>
    <%--    BMW <form:radiobutton path="carBrand" value="BMV"/>--%>
    <%--    Audi <form:radiobutton path="carBrand" value="Audi"/>--%>
    <%--    MB <form:radiobutton path="carBrand" value="Mercedes-Benz"/>--%>
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br><br>
    Foreign language(s)
    <%--    EN <form:checkbox path="languages" value="Enlish"/>--%>
    <%--    DR <form:checkbox path="languages" value="Deutch"/>--%>
    <%--    FR <form:checkbox path="languages" value="French"/>--%>

    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br><br>
    PhoneNumber: <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br><br>
    Email: <form:input path="email"/>
    <form:errors path="email"/>
    <br><br>
    <input type="submit" name="OK!">
</form:form>
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

<body>

<h2>Dear Employee, you are welcome!</h2>

<br>
<br>

<%--Your name: ${param.employeeName}--%>
<h3>Your details</h3>
<br>
Name: ${employee.name}
<br>
Surname: ${employee.surname}
<br>
Salary: ${employee.salary} euro per month
<br>
Department: ${employee.department}
<br>
Phone number: ${employee.phoneNumber}
<br>
email: ${employee.email}
<br>
Car: ${employee.carBrand}
<br>
Language(s):
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li>${lang}</li>
    </c:forEach>
</ul>

</body>

</html>
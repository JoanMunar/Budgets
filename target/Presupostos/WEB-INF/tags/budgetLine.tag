<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:choose>
    <c:when test="${requestScope['bLine'] != null}">
        <table>
            <tr>
                <th>Codi Article</th>
                <th>Nom Article</th>
                <th>Unitats</th>
                <th>Preu</th>
            </tr>
            <c:forEach items="${requestScope['bLine']}" var = 'budget_line'>
                <tr>
                    <td><c:out value="${budget_line.code}"></c:out></td>
                    <td><c:out value="${budget_line.name}"></c:out></td>
                    <td><c:out value="${budget_line.units}"></c:out></td>
                    <td><c:out value="${budget_line.price}"></c:out></td>
                </tr>
            </c:forEach>
        </table>
    </c:when>

</c:choose>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Gestión de Libros</title>
</head>
<body>
<h1>Lista de Libros</h1>

<a href="/books/new">➕ Añadir libro</a>
<br/><br/>

<table border="1" cellpadding="5">
    <tr>
        <th>ID</th><th>Título</th><th>Autor</th><th>Acciones</th>
    </tr>
    <c:forEach var="book" items="${books}">
        <tr>
            <td>${book.id}</td>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>
                <a href="/books/edit/${book.id}">✏️ Editar</a> |
                <a href="/books/delete/${book.id}">🗑 Eliminar</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>

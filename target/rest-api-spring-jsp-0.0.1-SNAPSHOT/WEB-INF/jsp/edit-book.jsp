<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Editar Libro</title>
</head>
<body>
<h1>Editar Libro</h1>

<form action="/books/update/${book.id}" method="post">
    <input type="hidden" name="id" value="${book.id}"/>
    <label>Título: </label>
    <input type="text" name="title" value="${book.title}"/><br/><br/>
    <label>Autor: </label>
    <input type="text" name="author" value="${book.author}"/><br/><br/>
    <button type="submit">Actualizar</button>
</form>

<a href="/books">⬅ Volver</a>

</body>
</html>

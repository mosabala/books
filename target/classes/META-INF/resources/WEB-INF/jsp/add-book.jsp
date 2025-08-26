<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Añadir Libro</title>
</head>
<body>
<h1>Nuevo Libro</h1>

<form action="/books" method="post">
    <label>Título: </label>
    <input type="text" name="title"/><br/><br/>
    <label>Autor: </label>
    <input type="text" name="author"/><br/><br/>
    <button type="submit">Guardar</button>
</form>

<a href="/books">⬅ Volver</a>

</body>
</html>

# 📚 Aplicación Web de Libros con JSP (Java 17 + Spring Boot)

Este proyecto es una versión web con **JSP** de la aplicación CRUD de libros.  
Permite gestionar libros mediante formularios y vistas web.

## 🚀 Tecnologías
- Java 17
- Spring Boot 3
- Spring Data JPA
- H2 Database
- JSP + JSTL
- Maven

## ▶️ Cómo ejecutar
```bash
mvn spring-boot:run
```

Abre en el navegador:  
- [http://localhost:8080/books](http://localhost:8080/books) → lista de libros  
- [http://localhost:8080/books/new](http://localhost:8080/books/new) → formulario de nuevo libro  

Consola H2: [http://localhost:8080/h2-console](http://localhost:8080/h2-console)  
JDBC URL: `jdbc:h2:mem:booksdb`

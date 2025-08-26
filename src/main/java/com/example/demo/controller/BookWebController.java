package com.example.demo.controller;

import com.example.demo.model.Book;
import com.example.demo.service.BookService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/books")
public class BookWebController {

    private final BookService service;

    public BookWebController(BookService service) {
        this.service = service;
    }

    @GetMapping
    public String listBooks(Model model) {
        model.addAttribute("books", service.findAll());
        return "index";
    }

    @GetMapping("/new")
    public String newBookForm(Model model) {
        model.addAttribute("book", new Book());
        return "add-book";
    }

    @PostMapping
    public String saveBook(@ModelAttribute Book book) {
        service.save(book);
        return "redirect:/books";
    }

    @GetMapping("/edit/{id}")
    public String editBookForm(@PathVariable("id") Long id, Model model) {
        Book book = service.findById(id).orElseThrow(() -> new IllegalArgumentException("Libro no encontrado: " + id));
        model.addAttribute("book", book);
        return "edit-book";
    }

    @PostMapping("/update/{id}")
    public String updateBook(@PathVariable("id") Long id, @ModelAttribute Book book) {
        book.setId(id);
        service.save(book);
        return "redirect:/books";
    }


    @GetMapping("/delete/{id}")
    public String deleteBook(@PathVariable("id") Long id) {
        service.deleteById(id);
        return "redirect:/books";
    }
}

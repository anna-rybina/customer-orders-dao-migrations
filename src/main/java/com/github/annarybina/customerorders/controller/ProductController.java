package com.github.annarybina.customerorders.controller;

import com.github.annarybina.customerorders.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/products")
public class ProductController {

    private final ProductService productService;

    @Autowired
    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/fetch-product")
    public List<String> fetchProduct(@RequestParam String name) {
        return productService.getProductsByCustomerName(name);
    }
}

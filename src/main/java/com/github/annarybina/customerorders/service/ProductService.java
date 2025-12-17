package com.github.annarybina.customerorders.service;

import com.github.annarybina.customerorders.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    private final OrderRepository orderRepository;

    @Autowired
    public ProductService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    public List<String> getProductsByCustomerName(String name) {
        return orderRepository.getProductName(name);
    }
}
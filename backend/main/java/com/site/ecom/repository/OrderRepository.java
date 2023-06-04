package com.site.ecom.repository;

import com.site.ecom.model.Order;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

public interface OrderRepository extends MongoRepository<Order,String> {

    List<Order> findAllByUser(String user_id);
}

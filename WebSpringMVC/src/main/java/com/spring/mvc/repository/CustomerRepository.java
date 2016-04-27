package com.spring.mvc.repository;

import org.springframework.data.repository.CrudRepository;

import com.spring.mvc.model.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Long>{
	
}

package com.spring.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spring.mvc.model.Customer;
import com.spring.mvc.repository.CustomerRepository;

@RestController
public class CustomerController {
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@RequestMapping(value = "/get/customer", method = RequestMethod.GET)
	public Customer getCustomer() {
		List<Customer> customers = (List<Customer>) customerRepository.findAll();
		for (Customer customer : customers) {
			System.out.println(customer.getName());
		}
		return customers.get(0);
	}
	
	/*@RequestMapping(value = "/get/customertest", method = RequestMethod.GET)
    public List<Customer> getCustomerTest() {
		List<Customer> customers = new ArrayList<Customer>();
		customers.add(new Customer(1, "A", "1"));
		customers.add(new Customer(2, "B", "2"));
		customers.add(new Customer(3, "C", "1"));
        return customers;
    }*/
}

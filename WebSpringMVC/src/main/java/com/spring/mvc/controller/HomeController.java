package com.spring.mvc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.mvc.repository.CustomerRepository;

@Controller
public class HomeController {
	
	@Autowired
	private CustomerRepository customerRepository;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String init() {
		/*logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, Locale.US);
		
		String formattedDate = dateFormat.format(date);
		
		Customer customer = new Customer();
		customer.setId(1);
		customer.setAge("123");
		customer.setName("BOY");
		List<Customer> customers = (List<Customer>) customerRepository.findAll();
		for (Customer cus : customers) {
			System.out.println(cus.getName());
		}
		model.addAttribute("customer", customers.get(0));
		model.addAttribute("serverTime", formattedDate );
		*/
		return "customer";
	}
}

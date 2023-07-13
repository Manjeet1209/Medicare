package com.med.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.med.model.Registration;

import com.med.service.Medservice;

@Controller
public class Maincontroller {
	
	boolean bool=false;
	@Autowired
	Medservice med;
	
	
	@RequestMapping("/")
	   public String start() {
		return "start";
	}

	@RequestMapping("/temp")   
	  public String hompage(Model m) {
		m.addAttribute("homes",med.show());
	      return "home";
	  }
	
	 @PostMapping(value="/verify")
	 public String ver(ModelMap model, @RequestParam String username ,@RequestParam String password) {
		 List<Registration> data = med.data();
		 for(Registration reg : data) {
			 if(reg.getUsername().equals(username)&& reg.getPassword().equals(password)) {
				 bool=true;
				 return "redirect:/temp";
			 }
		 }
		 model.put("err", "Credential Missmatch");
		 return "login";
	 }
	
	 @GetMapping("/Addtocart/{id}")
	 public String productadd(@PathVariable("id") int id , Model model) {
		 model.addAttribute("product" ,med.show2(id));
		 if(bool) {
			 return "cart";
		 }else {
			 return "Error";
		 }
		 
	 }
	 
	 @GetMapping(value="/buy")
	 public String purchase() {
		 return "payment";
	 }
	
	
	@GetMapping(value="/cart1")
	 public String cartpage() {
		if(bool) {
			return "cart1";
		}else {
			return "Error";
		}
		
	}
	
	@GetMapping(value="/Search")	
	 public String seachpage() {
		return "search";
	}
	
	@GetMapping(value="/login")	
	 public String loginpage() {
		return "login";
	}
	
	@GetMapping(value="/contactus")	
	 public String contactus() {
		return "contactus";
	}
	
	@GetMapping(value="/register")
	public String Registration() {
		return "register";
	}
	
	@PostMapping(value="/adding")
	public String Newreg(ModelMap model, Registration reg) {
		model.put("msg", "Registered Successfully!!");
		med.add(reg);
		return "register";
		
	}
	@GetMapping(value="/logout")
	 public String logoutpage() {
		bool=false;
		return "redirect:/";
	}
	


}

package com.springboot.demo.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.demo.dao.EmployeeDAO;
import com.springboot.demo.model.Employee;

@Controller
@RequestMapping("/employees")
public class EmployeeController {
	private EmployeeDAO empDAO = new EmployeeDAO();
	
	@RequestMapping("/")
	public ModelAndView displayEmployees() {
		List<Employee> employees = empDAO.readEmployees();
		
		ModelAndView modelAndView = new ModelAndView("display_employees");
		modelAndView.addObject("employees", employees);
		
		return modelAndView;
	}
	
	@RequestMapping("/{empid}")
	public ModelAndView displayEmployee(@PathVariable("empid")Integer empId) {
		Employee employee = empDAO.readEmployee(empId);
		
		ModelAndView modelAndView = new ModelAndView("display_employee");
		modelAndView.addObject("employee", employee);
		
		return modelAndView;
	}
	
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public ModelAndView newEmployee() {
		return new ModelAndView("new_employee", "employee", new Employee());
	}
	
	@RequestMapping(value="/new", method=RequestMethod.POST)
	public String addNewEmployee(@Valid @ModelAttribute("employee")Employee employee, 
		      BindingResult result) {
		
		empDAO.createEmployee(employee);
	
		return "redirect:/employees/new";
	}
	
	@RequestMapping(value="/update/{empid}", method=RequestMethod.GET)
	public ModelAndView updateEmployee(@PathVariable("empid")Integer empId) {
		return new ModelAndView("update_employee", "employee", empDAO.readEmployee(empId));
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String doUpdateEmployee(@Valid @ModelAttribute("employee")Employee employee, 
		      BindingResult result) {
		
		empDAO.updateEmployee(employee);
	
		return "redirect:/employees/";
	}
	
	@RequestMapping(value="/delete/{empid}", method=RequestMethod.GET)
	public String deleteEmployee(@PathVariable("empid")Integer empId) {
		
		empDAO.deleteEmployee(empId);
		
		return "redirect:/employees/";
	}
	

}

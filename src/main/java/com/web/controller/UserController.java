package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.model.Users;
import com.web.repo.UserRepo;

@Controller
public class UserController {

	@Autowired	
	private UserRepo repo;
	
	@RequestMapping("/")
	public String homePage()
	{
		return "home";
	}
	
	@RequestMapping("/addUser")
	public String registerForm()
	{
		return "register";
	}
	@RequestMapping("/save")
	@ResponseBody
	public String saveUser(Users users,ModelMap model)
	{
		repo.save(users);
		return "<center><h1 style=\"color: #3498db; margin-top: 20%;\">Success</h1></center>";
	}
	@RequestMapping(value="/viewUsers",method = RequestMethod.GET)
		public String getAllUsers(ModelMap model)
		{
			model. put("users",repo.findAll());
			return "viewUserPage" ;
		}
	@RequestMapping("/delete/{id}")
	public String deleteUser(@PathVariable int id) {
	    repo.deleteById(id);
	    return "redirect:/viewUsers";
	}
	
	@RequestMapping(value = "/update/{id}")
	public String edit(@PathVariable int id, ModelMap model) {
	    Users user = repo.findById(id).get();
	    model.addAttribute("command", user);
	    return "edituser";
	}
	
	@RequestMapping(value = "/editu", method = RequestMethod.POST)
	public String editsave(@RequestParam String name,
	                       @RequestParam String email,
	                       @RequestParam String password,
	                       @RequestParam String gender,
	                       @RequestParam String country,
	                       Users user,
	                       ModelMap model) {

	    // Update user fields
	    user.setName(name);
	    user.setEmail(email);
	    user.setPassword(password);
	    user.setGender(gender);
	    user.setCountry(country);

	    // Save the updated user
	    repo.save(user);

	    return "redirect:/viewUsers";
	}

}


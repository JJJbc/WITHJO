package com.withJo.error;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/error")
public class CustomErrorController implements ErrorController{

	@GetMapping("/404")
	public String error404 (){
		return "/error/404";
	}
	
	@GetMapping("/403")
	public String error403 (){
		return "/error/403";
	}
	
	@GetMapping("/500")
	public String error500 (){
		return "/error/500";
	}
}

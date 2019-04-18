package com.cts.InterviewSchedulingManagement.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LogoutController {
	
	
	@RequestMapping(value="logout.html", method=RequestMethod.GET)
	public String getLoginPage(HttpSession httpSession)
	{
		httpSession.invalidate();
		return "index";
	}
	
	
	

}

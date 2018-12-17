package com.chan.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.chan.domain.BoardVO;
import com.chan.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService service;
	
	//寃뚯떆臾� 由ъ뒪�듃 �럹�씠吏�(listAll)
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void listAllGET(Model model) throws Exception{
		
		logger.info("listPageGET......Show Board's List");
		
		model.addAttribute("list", service.listPage());
	}
	
	//寃뚯떆臾� �벑濡�(register)
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(BoardVO vo, Model model) throws Exception{
		
		logger.info("registerGET......");
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(BoardVO vo, RedirectAttributes rttr) throws Exception{
		
		logger.info("registerPOST......");
		
	    service.create(vo);
	    
	    return "redirect:/board/listPage";
	}
	
}

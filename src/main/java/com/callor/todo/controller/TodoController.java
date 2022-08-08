package com.callor.todo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.todo.model.TodoVO;
import com.callor.todo.service.TodoService;

@Controller
@RequestMapping(value = "/todo")
public class TodoController {
	
	
	@Autowired
	private TodoService todoService;
	
	@RequestMapping(value = "/todo",method=RequestMethod.GET)
	public String todo(Model model) {
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat toDay = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat toTime = new SimpleDateFormat("HH:mm:ss");
		
		TodoVO todo = TodoVO.builder()
						.date(toDay.format(date))
						.time(toTime.format(date))
						.build();

		model.addAttribute("TODO",todo);
		return "todo/todo";
	}
	
	
	@RequestMapping(value = "/todo",method=RequestMethod.POST)
	public String todo(TodoVO todoVO) {

		todoService.insert(todoVO);

		
		return "todo/todo";
	}
	
	@RequestMapping(value = "/list",method=RequestMethod.GET)
	public String list(Model model) {
	
		List<TodoVO> todo = todoService.selectAll();
		
		model.addAttribute("TODO_2",todo);
		
		
		return "todo/list";
	}
	


	
	
}

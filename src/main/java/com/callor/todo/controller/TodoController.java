package com.callor.todo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.callor.todo.model.TodoVO;
import com.callor.todo.service.TodoService;

@Controller
@RequestMapping(value = "/todo")
public class TodoController {

	@Autowired
	private TodoService todoService;
	
	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String list(Model model) {

		List<TodoVO> todo = todoService.selectAll();
		List<TodoVO> todo2 =todoService.selectComp();

		model.addAttribute("TODO_1", todo);
		model.addAttribute("TODO_2", todo2);

		return "todo/list";
	}

	@RequestMapping(value = "/todo", method = RequestMethod.GET)
	public String todo(Model model) {
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat toDay = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat toTime = new SimpleDateFormat("HH:mm:ss");

		TodoVO todo = TodoVO.builder().date(toDay.format(date)).time(toTime.format(date)).build();

		model.addAttribute("TODO", todo);
		return "todo/todo";
	}

	@RequestMapping(value = "/todo", method = RequestMethod.POST)
	public String todo(TodoVO todoVO) {

		todoService.insert(todoVO);

		return "redirect:/todo";
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(@RequestParam("seq") int seq, Model model) {
		String st_seq = String.valueOf(seq);

		TodoVO todoVO = todoService.findById(st_seq);

		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat dayFormat = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");

		todoVO = TodoVO.builder().seq(seq).date(dayFormat.format(date)).time(timeFormat.format(date))
				.todo(todoVO.getTodo()).build();

		model.addAttribute("TODO", todoVO);

		return "todo/todo";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(TodoVO todoVO) {
		todoService.update(todoVO);

		return "redirect:/todo";
	}

}

package com.callor.todo.service;

import com.callor.todo.persistance.TodoDao;

public interface TodoService extends TodoDao{
	public void create_todo_table();

}

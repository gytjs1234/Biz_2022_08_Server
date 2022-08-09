package com.callor.todo.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class TodoVO {

	private int seq;
	private String date;
	private String time;
	private String todo;
	private String username;
	private boolean comp;
}

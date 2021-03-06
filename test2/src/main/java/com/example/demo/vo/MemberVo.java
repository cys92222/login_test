package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVo {
	
	private int member_no;
	private String user_id;
	private String pwd;
	private String user_name;
	private String email;
	
	private int pic_no;
	private String pic_name;
}

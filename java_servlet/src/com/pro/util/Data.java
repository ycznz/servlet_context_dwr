package com.pro.util;

import java.util.ArrayList;
import java.util.List;

import com.pro.domain.Users;

public class Data {

	public static List<Users> userList =new ArrayList<Users>();
	static{
		for(int i=0;i<10;i++){
			Users us=new Users();
			us.setUserId(i);
			us.setUserName("name"+i);
			us.setPassword("pwd"+i);
			
			userList.add(us);
		}
	}
}

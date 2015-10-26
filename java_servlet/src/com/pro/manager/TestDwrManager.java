package com.pro.manager;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.pro.domain.Users;
import com.pro.util.Data;

public class TestDwrManager {

	public String say(){
		System.out.println("say----");
		return "hello...。。。";
	}
	
	public String sayParam(String str){
		System.out.println("sayParam----"+str);
		return "你好: "+str;
	}
	
	public Users testObj(Users user){
		System.out.println("testObj----"+user.getUserName());
		return user;
	}
	
	public Users[] testObjArr(Users []user){
		System.out.println("testObjArr----"+user[0].getUserName());
		return user;
	}
	
	public List<Users> testObjList(List<Users> userList){
		System.out.println("testObjList----"+userList.get(0).getUserName());
		return userList;
	}
	
	public List<Users> testList2Select(){
		System.out.println("----testList2Select---");
		return Data.userList;
	} 
	public List<Users> testList2Table(){
		System.out.println("----testList2Table---");
		return Data.userList;
	} 
	
	public void deleteUserById(int userId){
		//Data.userList.remove(userId);
		for(int i=0;i<Data.userList.size();i++){
			if(userId==Data.userList.get(i).getUserId()){
				Data.userList.remove(i);
				break;
			}
		}
		testList2Table();
	}
	
//	public Map<String,Object> cc(){
//		Map<String,Object> maps=new HashMap<String,Object>();
//		//调用业务，拿到总记录数90
//		
//		maps.put("total",90);
//		maps.put("pageSize", 3);
//		maps.put("list", "");
//		
//		return maps;
//	}
}

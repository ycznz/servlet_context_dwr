<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <script type='text/javascript' src='<%=pageContext.getServletContext().getContextPath() %>/dwr/interface/Zw.js'></script>
  <script type='text/javascript' src='<%=pageContext.getServletContext().getContextPath() %>/dwr/engine.js'></script>
  <script type='text/javascript' src='<%=pageContext.getServletContext().getContextPath() %>/dwr/util.js'></script>
  <script type="text/javascript">
  	function ff(){
  		Zw.say(function (msg){
  			alert(msg);
  		});
  	} 
  	
  	function sayParam(){
  		var st="兵兵";
  		Zw.sayParam(st,function (msg){
  			alert(msg);
  		});
  	}
  	
  	function testObj(){
  		var user={userId:1,userName:"大萍",password:"123"};
  		Zw.testObj(user,function (msg){
  			alert(msg.userName);
  		});
  	}
  	
  	function testObjArr(){
  		var users=[
  				{userId:1,userName:"大萍1",password:"1233"},
  				{userId:2,userName:"大萍2",password:"1234"},
  				{userId:3,userName:"大萍3",password:"1235"},
  				{userId:4,userName:"大萍4",password:"1236"}
  			];
  		
  		
  		Zw.testObjArr(users,function (msg){
  			for(i in msg){
  				alert(msg[i].userId+"--"+msg[i].userName)
  			}
  		});
  	}
  	
  	function testObjList(){
  		var users=[
  				{userId:1,userName:"大萍1",password:"1233"},
  				{userId:2,userName:"大萍2",password:"1234"},
  				{userId:3,userName:"大萍3",password:"1235"},
  				{userId:4,userName:"大萍4",password:"1236"}
  			];
  		
  		
  		Zw.testObjList(users,function (msg){
  			for(i in msg){
  				alert(msg[i].userId+"-+-"+msg[i].userName)
  			}
  		});
  	}
  	  	
  	function testList2Select(){
  		Zw.testList2Select(function(userList){
  			dwr.util.removeAllOptions("us");
  			dwr.util.addOptions("us",userList,'userId','userName');
  		});
  	}
  	
  	function testList2Table(){
  		Zw.testList2Table(function(userList){
  			dwr.util.removeAllRows("tab");
  			dwr.util.addRows("tab",userList,cells,{escapeHtml:false});
  		});
  	}
  	
  	var cells=[
  		function(data){return data.userId},
  		function(data){return data.userName},
  		function(data){return data.password},
  		function(data){return '<input type="button" value="删除" onclick="de('+data.userId+');"/>'}
  	];
  	
  	function de(v){
  		Zw.deleteUserById(v,function(userList){
  			//dwr.util.removeAllRows("tab");
  			//dwr.util.addRows("tab",userList,cells,{escapeHtml:false});
  			testList2Table();
  		})
  		
  	}
  </script>
</head>
<body>
<a href="#" onclick="ff();return false;">say</a><br/>
<a href="#" onclick="sayParam();return false;">sayParam</a><br/>
<a href="#" onclick="testObj();return false;">testObj</a><br/>
<a href="#" onclick="testObjArr();return false;">testObjArr</a><br/>
<a href="#" onclick="testObjList();return false;">testObjList</a><br/>
<a href="#" onclick="testList2Select();return false;">testList2Select</a><br/>
<select id="us">		
</select>
<a href="#" onclick="testList2Table();return false;">testList2Table</a><br/>
<table id="tab" border="1" width="300"></table>
</body>
</html>
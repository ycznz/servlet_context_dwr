<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var xmlHttp;
	/**
	 * 创建核心对象
	 */
	function createXMLHttpRequest(){
		if(window.ActiveXObject){
			xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		}else{
			xmlHttp=new XMLHttpRequest();
		}
	}
	/**
	 * get方式提交
	 */
	function sendNameGet(){		
		createXMLHttpRequest();
				
		var userName=document.getElementById("userName").value;
		var url="reg?userName="+userName;
		xmlHttp.open("get",url,true);
		xmlHttp.onreadystatechange=readyStateChange;
		xmlHttp.send(null);
	}
	
	/**
	 * post方式提交
	 */
	function sendNamePost(){		
		createXMLHttpRequest();
				
		var userName=document.getElementById("userName").value;
		var url="reg";
		var data="userName="+userName;
		xmlHttp.open("post",url,true);
		xmlHttp.onreadystatechange=readyStateChange;
		xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded")
		xmlHttp.send(data);
	}
	
	/**
	 * 回调函数
	 */
	function readyStateChange(){
		if(xmlHttp.readyState==4){
			if(xmlHttp.status==200){
				var text=xmlHttp.responseText;
				document.getElementById("info").firstChild.nodeValue=text;
			}
		}
	}

</script>
</head>
<body>
<form action="abc" method="post">
	<table border="1" width="400" align="center">
		<tr>
			<td colspan="2" height="35" bgcolor="#00FFCC">&nbsp;登录</td>
		</tr>
		<tr>
			<td width="80">用户名</td>
			<td>
				<input type="text" name="userName" id="userName" onblur="sendNamePost();"/><label id="info">&nbsp;</label>
			</td>
		</tr>
		<tr>
			<td width="80">密码</td>
			<td>
				<input type="password" name="password"/>
			</td>
		</tr>
		<tr>
			<td width="80"></td>
			<td>
				<input type="submit" value="注册"/>
			</td>
		</tr>
	</table>
</form>
<select>
	<option value="aaaa">aaaa</option>
	<option value="bbbb">bbbb</option>
	<option value="cccc">cccc</option>
</select>
</body>
</html>
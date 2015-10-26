<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<script type="text/javascript">
		function f(v){
			var frm=document.getElementById("frm");
			frm.setAttribute("action","compu?flag="+v);
			frm.submit();
		}
	</script>
	</head>

	<body>
		<form action="" method="post" id="frm">
			n1:
			<input type="text" name="n1" />
			<br />
			n2:
			<input type="text" name="n2" />
			<br />
			<input type="button" value="+" onclick="f('jia');"/>
			<input type="button" value="-" onclick="f('jian');"/>
			<br />
		</form>
		<%=request.getAttribute("result") %>
	</body>
</html>

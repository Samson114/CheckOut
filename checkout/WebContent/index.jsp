<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>checkout</title>
</head>
<body>
用户：<input type="text"  name=username  id="username" onBlur=checkUserName() />

电话：<input type="text"  name=phone id=phone onBlur=checkphone() /> 

</body>
<script type="text/javascript">

function checkUserName(){ 
	var name = document.getElementById("username").value; //在这里我认为： name 代表的name 为 txtUser 的文本框 
	if(name.length==0){ 
	
		alert("不能为空"); 
	
		name.focus(); 
	return false; 
	}else{
		return true; 
	} 
} 


function checkphone() { 
		
	var s = document.getElementById("phone").value;
	var patrn=/^(13[0-9]{9})| (18[0-9]{9}) |(15[89][0-9]{8})$/;	
	//var patrn=/^[0-9]{1,20}$/; //校验是否全由数字组成 
	//var patrn=/^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){4,19}$/; //校验登录名：只能输入5-20个以字母开头、可带数字、“_”、“.”的字串 
	//var patrn=/^[a-zA-Z]{1,30}$/; //校验用户姓名：只能输入1-30个以字母开头的字串 
	//var patrn=/^(w){6,20}$/; //校验密码：只能输入6-20个字母、数字、下划线 
	//var patrn=/^[a-zA-Z0-9 ]{3,12}$/; //校验邮政编码 
	//var patrn=/^[0-9.]{1,20}$/; //校验是否IP地址 

	if (!patrn.test(s)){
		alert("wrong");	
	}else
	alert("yes");
} 


</script>
</html>
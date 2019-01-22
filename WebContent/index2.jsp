<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
function checkUsername() {
	//获取输入框的数据，var设置值取值
	var name = $("#name").val();
	//发出请求
	$.post("CheckUserNameServlet",{name:name},function(data,status){
		if(data==1){//用户名存在
			$("#span1").html("<font color='red'>用户名已存在</font>");
		}else{//用户名不存在
			$("#span1").html("<font color='green'>用户名不存在</font>");
		}
	});

}
</script>
</head>

<body>
<form action="" method="get">
<table border="1" width="500">
    <tr>
        <td>用户名</td>
        <td><input name="name" id="name" type="text" onblur="checkUsername()"/>
        <span id="span1" ></span></td>
        
    </tr>
     <tr>
        <td>密码</td>
        <td><input name="" type="password" /></td>
    </tr>
     <tr>
        <td>邮箱</td>
        <td><input name="" type="text" /></td>
    </tr>
    <tr>
    	<td>简介</td>
        <td><input name="" type="text" /></td>
      </tr>
      <tr>
    		<td colspan="2" > <input type="submit" value="注册" /></td>
      </tr>
</table>
</form>
</body>
</html>
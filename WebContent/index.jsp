<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

function ajaxFunction(){
	   var xmlHttp;
	   try{ // Firefox, Opera 8.0+, Safari
	        xmlHttp=new XMLHttpRequest();
	    }
	    catch (e){
		   try{// Internet Explorer
		         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
		      }
		    catch (e){
		      try{
		         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		      }
		      catch (e){}
		      }
	    }

		return xmlHttp;
	 }
	 
	 
function checkUsername() {
	//创建对象
	var request = ajaxFunction();
	//获取服务传送的数据
	request.onreadystatechange=function(){
		if(request.readyState==4 && request.status==200){
			var result = request.responseText;//传过来的是数字println（）
			if(result == 1){
				document.getElementById("span1").innerHTML="<font color='red'>用户名已存在</font>"
			}else{
				document.getElementById("span1").innerHTML="<font color='green'>用户名不存在</font>"
			}
		}
	}
	//获取输入框的值
	var name = document.getElementById("name").value;
	//发送请求
	request.open("POST","CheckUserNameServlet",true);
	request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	request.send("name="+name);
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
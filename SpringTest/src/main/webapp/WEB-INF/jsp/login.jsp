<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
		<title>Login</title>
		<link href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css" type="text/css" rel="stylesheet" media="screen" />
	</head>
	<body>
		<div class="container" style="width: 300px">
			<form class="form-signin" method="post" action="j_spring_security_check">
				<h2 class="form-signin-heading">Login</h2>
				<input name="j_username" value="${sessionScope['SPRING_SECURITY_LAST_USERNAME']}" class="form-control" type="text" required="true" placeholder="输入用户名" />
				<label></label>
				<input name="j_password" class="form-control" type="password" required="true" placeholder="输入密码" />
				<button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
			</form>
		</div>
		
	<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
	</body>
	
</html>

<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">


   <title>广告监测预警</title>
   <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">

    <link href="css/jumbotron.css" rel="stylesheet">
    <link href="css/store.css" rel="stylesheet">
  </head>
  <body>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
        	<a class="navbar-brand" href="#">广告监测预警</a>
        </div> 
        <div class="navbar-collapse collapse">
          <form class="navbar-form navbar-right">
            <div class="form-group">
            <a id="user_id" class="navbar-brand" href="javascript:void(0)">${loginUser}</a> 
            <a id="myMonitor" class="navbar-brand" href="javascript:void(0)">我的预警</a> 
            <a class="navbar-brand" href="/SpringTest/j_spring_security_logout">退出</a>
            </div>
          <form>
        </div>
      </div>
    </div>
    <!-- Main jumbotron for a primary marketing message or call to action -->
<!--     <div class="jumbotron">
      <div class="container">
       <button class="btn btn-primary" style="margin-top: 10px; margin-bottom: 10px" data-toggle="modal" data-target="#orderDialog">新的预警</button>
      </div>
    </div> -->
   
	<div id="orderDialog"  data-backdrop="static">
	    <div class="modal-dialog" style="width:600px">
	        <div class="modal-content">
	            <form role="form" action="http://localhost:8080/SpringTest/insertData" method="post" >
	                <fieldset>
	                    <div class="modal-body">
	                        <legend>
	                            实时监测设置
	                        </legend>
	                        <div class="form-group">
	                            <label for="monitor_item">
	                                监测项
	                            </label>
	                            <input type="text" class="form-control" id="monitor_item" placeholder="请输入监测项">
	                        </div>
	                        <div class="form-group">
	                            <label for="indicator">
	                                监测指标
	                            </label>
	                            <input type="text" class="form-control" id="indicator" placeholder="请输入监测指标项">
	                        </div>
	                        <div class="form-group">
	                            <label for="threshhold">
	                                阈值
	                            </label>
	                            <input type="text" class="form-control" id="threshhold" placeholder="请输入阈值">
	                        </div>
	                        <div class="form-group">
	                            <label for="email">
	                                Email address
	                            </label>
	                            <input type="email" class="form-control" id="email" placeholder="Enter email">
	                        </div>
	                        <button type="submit" class="btn btn-default" id="monitor_id">
	                            Submit
	                        </button>
	                     </div>
	                </fieldset>
	              
	            </form>
	        </div>
	    </div>
	</div>
    <script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <script src="js/monitor.js"></script>
    <script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
  </body>
</html>
   


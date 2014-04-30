<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
   <title>个人页</title>
   <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">
   <link href="css/jumbotron.css" rel="stylesheet">
   <link href="css/store.css" rel="stylesheet">
   <link href="css/jquery.dataTables.css" rel="stylesheet">
   <link href="css/dataTableExtetnal.css" rel="stylesheet">
  
  </head> 
  <script>
  	data = ${json};
  </script>
  <body>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
        	<a class="navbar-brand" href="#">广告监测预警</a>
        </div> 
        <div class="navbar-collapse collapse">
          <form class="navbar-form navbar-right">
            <div class="form-group">
            <a id="user_id" class="navbar-brand" href="javascript:void(0)"></a>
            <a id="myMonitor" class="navbar-brand" href="javascript:void(0)">我的预警</a> 
            <a class="navbar-brand" href="/SpringTest/j_spring_security_logout">退出</a>
            </div>
          <form>
        </div>
      </div>
    </div>
   <div class="jumbotron"> 
   </div>
   <div class="container">
      	<div>
			<table id="monitor-table">
				<thead>
					<tr>		
						<th>监控项</th>
						<th>监控指标</th>
						<th>阈值</th>
						<th>Email</th>
						<th></th>
					</tr>
				</thead>
				<tbody id="monitor-table-list">
				</tbody>
			</table>
		</div>  
    </div>
   
   <script id="monitorUITemplate" type="text/x-jquery-tmpl">
	<tr>
		<td width="100px"><span style="float: left"><font size=2>\${monitor_item}</font></span></td>
		<td width="180px"><span style="float: left"><font size=2>\${indicator}</font></span></td>
		<td width="180px"><span style="float: left"><font size=2>\${threshold}</font></span></td>
		<td width="180px"><span style="float: left"><font size=2>\${receptor_email}</font></span></td>
		<td width="10%">
            <span>修改</span>
 			<span>删除</span> 
        </td>
	</tr>
	</script>
    <script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/jquery.tmpl.min.js"></script>
    <script src="js/my-monitor.js"></script>
    <script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
  </body>
  <hr>
    
  <footer celllabelalignment="Center">
       <div id="footer_id"><p>&copy; funshion 2014 by Artemis</p></div>
  </footer>

</html>
$(document).ready(function(){
	
	$("#monitor_id").click(function(){
		var monitorItem = $("#monitor_item").val();
		var indicator = $("#indicator").val();
		var threshhold = $("#threshhold").val();
		var email = $("#email").val();
		var param = "monitorItem="+ monitorItem+"&indicator=" + indicator + "&threshhold=" + threshhold + "&email="+email;
		
		$.ajax({
			type: "post",
			async:false,
			dataType:'json',
			url: "http://localhost:8080/SpringTest/insertData?"+param
		});
	});
	
	$("#myMonitor").click(function(){
		var userName = $("#user_id").html(); 
		window.location = "http://localhost:8080/SpringTest/my-monitor?userName="+userName;
	});
	
	
	function renderTable () {
		var oLanguage = {
				"sProcessing" : "正在加载中......",
				"sLengthMenu" : " 每页 _MENU_ 条",
				"sZeroRecords" : "对不起，查询不到相关数据！",
				"sEmptyTable" : "表中无数据存在！",
				"sInfo" : "",
				"sInfoEmpty" : "",
				"sInfoFiltered" : "数据表中共为 _MAX_ 条记录",
				"sSearch" : "<span><font color='blue'>搜索:</font></span>",

				"oPaginate" : {
					"sFirst" : "首页",
					"sPrevious" : "上一页",
					"sNext" : "下一页",
					"sLast" : "末页"
				}
			};
			options = {
				"bSort" : false,
				"bAutoWidth" : false,
				"bJQueryUI" : false,
				"sPaginationType": "full_numbers",
				"aLengthMenu": [15, 25, 50],
//				"sPaginationType": "bootstrap",
				"aoColumnDefs" : [
				// bSearchable：是否可搜索；bVisible：是否可见；aTargets：哪一列
				{
					"bSearchable" : true,
					"bVisible" : true,
					"aTargets" : [ 0 ]
				}, {
					"bVisible" : true,
					"aTargets" : [ 1 ]
				} //
				],
				"iDisplayLength" : 15,
				"oLanguage" : oLanguage,
				"sDom": 'rti<"bottom" pl>',
			};
			$("#ad-senior-table").dataTable(options);
	}
});
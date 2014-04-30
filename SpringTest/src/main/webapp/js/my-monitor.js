$(document).ready(function(){
		$("#user_id").html((data[0].login_name));
		$("#monitorUITemplate").tmpl(data).appendTo("#monitor-table-list");
		dataTableShow();		
		function dataTableShow() {
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
//					"sPaginationType": "bootstrap",
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
				$("#monitor-table").dataTable(options);
		}
	
	
	
});
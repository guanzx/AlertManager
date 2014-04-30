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
				"sProcessing" : "���ڼ�����......",
				"sLengthMenu" : " ÿҳ _MENU_ ��",
				"sZeroRecords" : "�Բ��𣬲�ѯ����������ݣ�",
				"sEmptyTable" : "���������ݴ��ڣ�",
				"sInfo" : "",
				"sInfoEmpty" : "",
				"sInfoFiltered" : "���ݱ��й�Ϊ _MAX_ ����¼",
				"sSearch" : "<span><font color='blue'>����:</font></span>",

				"oPaginate" : {
					"sFirst" : "��ҳ",
					"sPrevious" : "��һҳ",
					"sNext" : "��һҳ",
					"sLast" : "ĩҳ"
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
				// bSearchable���Ƿ��������bVisible���Ƿ�ɼ���aTargets����һ��
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
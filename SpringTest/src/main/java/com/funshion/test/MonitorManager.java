package com.funshion.test;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class MonitorManager {

	@Autowired
	@Qualifier("monitorJdbcTemplate")
	private JdbcTemplate monitorJdbcTemplate;
	
	public void insertData(ParamBean paramBean) {
		StringBuilder builder = new StringBuilder();
		Object[] params = new Object[] { paramBean.getLoginName(),paramBean.getMonitorItem(),paramBean.getIndicator(),paramBean.getThreshhold(),paramBean.getEmail()};
		builder.append("insert into artemis_ad_monitor (login_name,monitor_item, indicator, threshold, receptor_email) values(?,?,?,?,?)");	
		monitorJdbcTemplate.update(builder.toString(), params);
	}
			
	public List<Map<String,Object>> getMonitorData(String user) {
		
		String sql = "select * from artemis_ad_monitor where login_name='"+user+"'";	
		List<Map<String,Object>> list = monitorJdbcTemplate.queryForList(sql);
		return list;
	}
}

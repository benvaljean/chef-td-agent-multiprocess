#
# Cookbook Name:: chef-td-agent-multiprocess
# Recipe:: default
#
# Copyright 2015 Benjamin Goodacre
#

include_recipe 'td-agent'

(1..node["cpu"]["total"]).each do |i|
  padded = sprintf '%02d', i
  template "/etc/td-agent/td-agent-child#{padded}.conf" do
    mode "0644"
    source "td-agent-child-master.conf.erb"
    variables({
      :portoffset => i
    })
  end
end

%w{ fluent-plugin-multiprocess serverengine }.each do |gem|
  td_agent_gem "#{gem}" do
    plugin false
  end
end

template "/etc/td-agent/conf.d/td-agent-multiprocess.conf" do
  mode "0644"
  source "td-agent-multiprocess.conf.erb"
  notifies reload_action, "service[td-agent]"
end

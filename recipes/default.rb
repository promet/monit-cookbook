#
# Cookbook Name:: monit-cookbook
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'
include_recipe 'postfix'

package "monit" do
  action :install
end

template "/etc/monit/monitrc" do
 source "monitrc.erb"
 owner "root"
 group 0
 mode 00644
end

template "/etc/default/monit" do
 source "monit.erb"
 owner "root"
 group 0
 mode 00644
end

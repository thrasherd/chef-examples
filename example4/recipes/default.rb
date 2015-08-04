#
# Cookbook Name:: example4
# Recipe:: default
#
# Copyright 2015, Jim Rosser
#

package 'ruby-devel' do
  action :install
end


mysql_service 'default' do
  version '5.7'
  bind_address '0.0.0.0'
  port '3306'  
  data_dir '/data'
  initial_root_password 'Ch4ng3me'
  action [:create, :start]
end

template '/etc/mysql-default/conf.d/innodb.cnf' do
  source 'innodb.cnf.erb'
end


#
# Cookbook Name:: example3
# Recipe:: default
#
# Copyright 2015, Jim Rosser
#

package 'nginx' do
  action :install
end

package 'git' do
  action :install
end

directory '/var/www/' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

file '/etc/nginx/sites-enabled/default.conf' do
  action :delete
  notifies :restart, 'service[nginx]'
end

git '/var/www/magic' do
  repository 'https://github.com/jarosser06/magic'
  reference 'master'
  action :sync
end


template '/etc/nginx/sites-available/magic.conf' do
  source 'magic.conf.erb'
  mode '0644'
  notifies :restart, 'service[nginx]'
end

link '/etc/nginx/sites-enabled/magic.conf' do
  to '/etc/nginx/sites-available/magic.conf'
end


service 'nginx' do
  supports :status => true, :restart => true, :reload => true
  action [:start, :enable]
end


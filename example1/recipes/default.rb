z#
# Cookbook Name:: example1
# Recipe:: default
#
# Copyright 2015, Jim Rosser
#
# The NTP service should be installed, and the it should
# have the following populated in the ntp config:
#
# server 0.pool.ntp.org
# server 1.pool.ntp.org
# server 2.pool.ntp.org
#
# Make sure the service gets enabled and started
package 'ntp' do
  action :install
end

service 'ntp' do
  action [:start, :enable]
end

cookbook_file '/etc/ntp.conf' do
  source 'ntp.conf'
  mode '0644'
end

  



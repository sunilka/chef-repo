#
# Cookbook:: ntpclient
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#include_recipe 'GenericFunctions'
#ipaddress = GeneralLibs::SystemInfo.ipaddress(node)
#gateway = GeneralLibs::SystemInfo.gateway(node)

#package "#{@ntp_package}" do
#	action :install
#end


template "/etc/ntp.conf" do
	source 'ntp.conf.erb'
	action :create
	owner 'root'
	group 'root'
	mode 0644
	notifies :restart, 'service[ntpd]', :immediately
end

service 'ntpd' do
  case node["platform"]
    when 'rhel', 'centos'
     action :nothing
  end
end

execute 'ntp sync' do
	command "ntpdate -u #{node['ntpserver']}"
end

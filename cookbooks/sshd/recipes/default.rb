#
# Cookbook:: configuresshd
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if node['platform'] == 'oracle' 
#	package 'openssh' do
#		action :install
#	end
	
	template '/etc/ssh/sshd_config' do
		source "#{node['source_sshd']}"
		owner 'root'
		mode 0600
		notifies :restart, 'service[sshd]'
	end

	template '/etc/ssh/ssh_config' do
		source "#{node['source_ssh']}"
		owner 'root'
		mode 0600
		notifies :restart, 'service[sshd]'
	end

	service 'sshd' do
		supports :start => true, :restart => true, :status => true, :reload => true
		action [:enable, :restart]
	end
else
	log 'Un-Supported OS' do
		level :debug
	end
end

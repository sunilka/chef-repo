#
# Cookbook:: timezonesetup
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

if node['platform'] == 'centos' 
	ruby_block 'set hardware clock' do
	 block do
          system('/sbin/hwclock --systohc --utc')
	 end
	not_if { File.symlink?('/etc/localtime -> /usr/share/zoneinfo/Asia/Kolkata') }
	end

	link '/etc/localtime' do
	 to '/usr/share/zoneinfo/Asia/Kolkata'
	 not_if { File.symlink?('/etc/localtime -> /usr/share/zoneinfo/Asia/Kolkata') }
	end
else
 log 'Unsupported OS'
end

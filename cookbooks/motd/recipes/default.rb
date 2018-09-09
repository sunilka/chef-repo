#
# Cookbook:: createmotd
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#kernelname, kernelrelease, kernelversion, kernelarch, kernerlprocessor, sysos

include_recipe 'GenericFunctions'
#ipaddress = GeneralLibs::VmFunctions.networkinfo(node)
#kernelname, kernelrelease, kernelversion, kernelarch, kernerlprocessor, sysos = GeneralLibs::VmFunctions.sysinfo(node)
hostname = GeneralLibs::SystemInfo.hostname(node)
platform = GeneralLibs::SystemInfo.platform(node)
memory_total = GeneralLibs::SystemInfo.memorytotal(node)
os = GeneralLibs::SystemInfo.os(node)
os_version = GeneralLibs::SystemInfo.osversion(node)
platform_family = GeneralLibs::SystemInfo.platform_family(node)
cputotal = GeneralLibs::SystemInfo.cputotal(node)
cpucores = GeneralLibs::SystemInfo.cpucores(node)
timezone  = GeneralLibs::SystemInfo.timezone(node)
ipaddress = GeneralLibs::SystemInfo.ipaddress(node)
macaddress =  GeneralLibs::SystemInfo.macaddress(node)
current_user = GeneralLibs::SystemInfo.current_user(node)
 
template '/etc/motd' do
	source 'motd.erb'
	owner 'root'
	group 'root'
	mode 0644
	variables(
	:hostname => hostname,
	:platform => platform,
	:memory_total => memory_total,
	:os => os,
	:os_version => os_version,
	:platform_family => platform_family,
	:cputotal => cputotal,
	:cpucores => cpucores,
	:timezone => timezone,
	:ipaddress => ipaddress,
	:macaddress => macaddress, 
	:current_user => current_user, 
	)
end

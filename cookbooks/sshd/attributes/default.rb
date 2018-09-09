case node['platform_version'].to_i
when 6
	default['source_sshd'] = 'sshd_ol6.erb'
	default['source_ssh'] = 'ssh_ol6.erb'
when 7

	default['source_sshd'] = 'sshd_ol7.erb'
	default['source_ssh'] = 'ssh_ol7.erb'
end

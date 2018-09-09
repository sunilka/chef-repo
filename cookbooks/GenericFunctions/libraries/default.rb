require 'open-uri'
require 'socket'
require 'net/http'

module GeneralLibs
  # Class inside the module to get required information for other cookbooks
    class SystemInfo
	
	def self.kernelname(node)
		# get details on the kernel 
		node=node
		kernelname=node["kernel"]["name"]
		return kernelname
	end

	def self.kernelmachine(node)
		node=node
		kernelmachine=node["kernel"]["machine"]
		return kernelmachine
	end

	def self.kernelprocessor(node)
		node=node
		kernelprocessor=node["kernel"]["processor"]
		return kernelprocessor

	end

	def self.os(node)
		node=node
		os=node["os"]
		return os
	end

	def self.osversion(node)
		node=node
		osversion=node["os_version"]
		return osversion
	end

	def self.memorytotal(node)
		node=node
		memtotal=node["memory"]["total"]
		return memtotal
	end

	def self.memory_swap_total(node)
		node=node
		mem_swap_total=node["memory"]["swap"]["total"]
		return mem_swap_total
	end

	def self.platform(node)
		node=node
		platform=node["platform"]
		return platform
	end

	def self.platform_version(node)
		node=node
		platform_version=node["platform_version"]
		return platform_version
	end

	def self.platform_family(node)
		node=node
		platform_family=node["platform_family"]
		return platform_family
	end

	def self.ipaddress(node)
		node=node
		ipaddress=node["ipaddress"]
		return ipaddress
	end

	def self.macaddress(node)
		node=node
		macaddress=node["macaddress"]
		return macaddress
	end

	def self.cputotal(node)
		node=node
		cputotal=node["cpu"]["total"]
		return cputotal
	end

	def self.cpucores(node)
		node=node
		cpucores=node["cpu"]["cores"]
		return cpucores
	end

	def self.timezone(node)
		node=node
		timezone=node["time"]["timezone"]
		return timezone
	end

	def self.hostname(node)
		node=node
		hostname=node["hostname"]
		return hostname
	end

	def self.machinename(node)
		node=node
		machinename=node["machinename"]
		return machinename
	end

	def self.fqdn(node)
		node=node
		fqdn=node["fqdn"]
		return fqdn
	end

	def self.domainname(node)
		node=node
		domainname=node["domain"]
		return domainname
	end

	def self.current_user(node)
		node=node
		current_user=node["current_user"]
		return current_user
	end

    end
end


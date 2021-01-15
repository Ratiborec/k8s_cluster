# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.provider :virtualbox do |v|
    v.memory = 2048
    v.cpus = 2
  end
  config.vm.define "master" do |master|
    master.vm.network "private_network", ip: "192.168.10.10"
    master.vm.hostname = "k8s-master"
    master.vm.provision "shell", path: "./local/script.sh"
  end
  (1..2).each do |i|
	  config.vm.define "slave-#{i}" do |slave|
	    slave.vm.network "private_network", ip: "192.168.10.1#{i}"
		slave.vm.hostname = "k8s-slave-#{i}"
		slave.vm.provision "shell", path: "./local/script.sh"
	  end
	end
end

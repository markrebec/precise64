# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'hashicorp/precise64'
  config.vm.provider 'virtualbox'
  
  config.vm.provision :shell, path: 'bin/apt.sh'
  config.vm.provision :shell, path: 'bin/rvm.sh'
end

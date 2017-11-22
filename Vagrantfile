# -*- mode: ruby -*-

Vagrant.configure(2) do |config|

  # Ubuntu 12.04
  config.vm.define "ubuntu1204" do |node|
    node.vm.box = "ubuntu/precise64"

    node.vm.provider "virtualbox" do |v|
      v.linked_clone = true
    end

    node.vm.provision "ansible" do |ansible|
      ansible.playbook = "provision.yml"
      ansible.become = true
    end
  end

  # Ubuntu 14.04
  config.vm.define "ubuntu1404", primary: true do |node|
    node.vm.box = "ubuntu/trusty64"

    node.vm.provider "virtualbox" do |v|
      v.linked_clone = true
    end

    node.vm.provision "ansible" do |ansible|
      ansible.playbook = "provision.yml"
      ansible.become = true
    end
  end

  # Ubuntu 16.04
  #
  # - need manual install python2.
  #
  config.vm.define "ubuntu1604" do |node|
    node.vm.box = "ubuntu/xenial64"

    node.vm.provider "virtualbox" do |v|
      v.linked_clone = true
    end

    node.vm.provision "shell", inline: <<-SHELL
      sudo apt-get install -y python
    SHELL
    
    node.vm.provision "ansible" do |ansible|
      ansible.playbook = "provision.yml"
      ansible.become = true
    end
  end

  # Debian 7
  config.vm.define "debian7" do |node|
    node.vm.box = "debian/wheezy64"

    node.vm.provider "virtualbox" do |v|
      v.linked_clone = true
    end
  
    node.vm.provision "ansible" do |ansible|
      ansible.playbook = "provision.yml"
      ansible.become = true
    end
  end

  # Debian 8
  config.vm.define "debian8" do |node|
    node.vm.box = "debian/jessie64"

    node.vm.provider "virtualbox" do |v|
      v.linked_clone = true
    end
  
    node.vm.provision "ansible" do |ansible|
      ansible.playbook = "provision.yml"
      ansible.become = true
    end
  end

  # Debian 9
  config.vm.define "debian9" do |node|
    node.vm.box = "debian/stretch64"

    node.vm.provider "virtualbox" do |v|
      v.linked_clone = true
    end

    node.vm.provision "ansible" do |ansible|
      ansible.playbook = "provision.yml"
      ansible.become = true
    end
  end

end

# vi: set ft=ruby :

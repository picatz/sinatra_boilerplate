# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "debian/jessie64"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    echo "syntax on" >> ~/.vimrc
    echo "set number" >> ~/.vimrc
    echo "set tabstop=2" >> ~/.vimrc
    echo "set softtabstop=2" >> ~/.vimrc
    echo "set shiftround" >> ~/.vimrc
    echo "set shiftwidth=2" >> ~/.vimrc
    echo "set expandtab" >> ~/.vimrc
    apt-get update
    sudo apt-get install -y vim git tmux libpcap-dev tcpdump htop nethogs curl tree monit
    gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    curl -L https://get.rvm.io | bash -s stable --ruby
    echo "source /usr/local/rvm/scripts/rvm" >> ~/.bashrc
    source ~/.bash_profile
    sudo su root
    echo "source /usr/local/rvm/scripts/rvm" >> ~/.bashrc
    source ~/.bashrc
    echo "syntax on" >> ~/.vimrc
    echo "set number" >> ~/.vimrc
    echo "set tabstop=2" >> ~/.vimrc
    echo "set softtabstop=2" >> ~/.vimrc
    echo "set shiftround" >> ~/.vimrc
    echo "set shiftwidth=2" >> ~/.vimrc
    echo "set expandtab" >> ~/.vimrc
    
    # instrall required ruby gems
    gem install pry sinatra sinatra-contrib packetfu pcaprub thin colorize
    
    # configure monit
    echo 'set daemon 120' >> /etc/monit.rc
    echo 'set logfile /var/log/monit.log' >> /etc/monit.rc
    echo 'set pidfile /var/run/monit.pid' >> /etc/monit.rc
    echo 'set idfile /var/lib/monit/id' >> /etc/monit.rc
    echo 'set statefile /var/lib/monit/state' >> /etc/monit.rc
    echo 'set eventqueue' >> /etc/monit.rc
    echo 'basedir /var/lib/monit/events' >> /etc/monit.rc
    echo 'slots 100' >> /etc/monit.rc
    echo 'set httpd port 8080 and' >> /etc/monit.rc
    echo '   use address localhost' >> /etc/monit.rc
    echo '   allow localhost ' >> /etc/monit.rc
    echo '   allow admin:monit' >> /etc/monit.rc
    echo 'include /etc/monit/conf.d/*' >> /etc/monit.rc

    echo "I like cats."
  SHELL
end

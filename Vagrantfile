Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, path: "setup.sh"
  config.vm.network :forwarded_port, guest: 80, host: 4567
config.vm.synced_folder "easyWaya","/var/www/", create:true,
:owner => "vagrant",
:group => "www-data",
:mount_options => ["dmode=775","fmode=664"]



end
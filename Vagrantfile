Vagrant.configure("2") do |config|
  config.vm.define "db" do |db| 
    db.vm.box = "ubuntu/focal64"
    db.vm.synced_folder ".", "/vagrant", disabled: true
    db.vm.synced_folder "./files", "/files"
    db.vm.network "public_network", ip: "192.168.0.65"
    db.vm.provision "shell", path: "./provision_db.sh"
  end
  
  config.vm.define "web" do |web|
    web.vm.box = "ubuntu/focal64"
    web.vm.synced_folder ".", "/vagrant", disabled: true
    web.vm.synced_folder "./files", "/files"
    web.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
    web.vm.network "public_network", ip: "192.168.0.66"
    web.vm.provision "shell", path: "./provision_web.sh"
  end
end

require 'berkshelf/vagrant'

Vagrant::Config.run do |vagrant|
  vagrant.vm.define 'precise64' do |config|
    config.vm.host_name = "precise64"
    config.vm.box = "precise64"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    config.vm.network :hostonly, "33.33.33.10"
    config.vm.customize ["modifyvm", :id, "--memory", 256]
    config.vm.customize ["modifyvm", :id, "--cpus", 4]
    config.vm.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "proteus-monitor-buildpack"
    end
  end
end

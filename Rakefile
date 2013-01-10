require 'vagrant'

env = Vagrant::Environment.new
env.vms.each do |define, vm|
  type = define.to_s =~ /^ubuntu/ ? 'deb' : 'rpm'

  desc "Create packages of #{define}"
  task define => "#{define}:pack_agent"

  namespace define do
    task :pack_node => :up do
      version = "0.8.17"
      name = "node-v#{version}-linux-x64"
      dir = "/tmp/#{name}"
      tar = "#{name}.tar.gz"
      vm.channel.sudo    "cd /tmp && if [ ! -f #{tar} ]; then wget http://nodejs.org/dist/v#{version}/#{tar}; fi"
      vm.channel.sudo    "rm -fr #{dir}; cd /tmp && tar xvf #{tar}"
      vm.channel.execute "rm -fr /vagrant/#{define}; mkdir /vagrant/#{define}"
      vm.channel.execute "cd /vagrant/#{define} && fpm -s dir -t #{type} -C #{dir} -n node -v #{version} --prefix /usr/local bin lib"
    end

    task :pack_agent => :pack_node do

    end 

    task :up do
      env.cli "up", define
    end
  end

end

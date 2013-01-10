include_recipe "build-essential"

%w[git vim].each do |pkg|
  package pkg do
    action :install
  end
end

case node[:platform_family]
when "rhel"
  package 'rpm-build' do
    action :install
  end
end

gem_package "fpm" do
  action :install
end

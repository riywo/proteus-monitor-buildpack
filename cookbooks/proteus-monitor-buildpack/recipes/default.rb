include_recipe "build-essential"

%w[git vim].each do |pkg|
  package pkg do
    action :install
  end
end

gem_package "fpm" do
  action :install
end

#
# Cookbook Name:: apache
# Recipe:: _default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

execute "apt-get update"

package "apache2"

template "/var/www/index.html" do
  source "index.html.erb"
end

service "apache2" do
  action [ :start, :enable ]
end
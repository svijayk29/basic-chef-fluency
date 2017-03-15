#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# install apache2 package

if node['platform_family']=="debian"
package = "apache2"
elsif node['platform_family']=="rhel"
package = "httpd"
end
package 'httpd' do

    package_name package
#          package_name 'apache2'
          action :install
end

service 'httpd' do
       service_name 'apache2'
       action [:start, :enable]
end

service 'apache' do
service_name 'httpd'
action [:start, :enable]
end

#include_recipe 'apache::websites'

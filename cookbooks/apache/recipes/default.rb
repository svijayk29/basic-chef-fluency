#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# install apache2 package
package 'httpd' do
          package_name 'apache2'
          action :install
end

service 'httpd' do
       service_name 'apache2'
       action [:start, :enable]
end


#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# install apache2 package

if node['platform_family']=="debian" 
package = "apache2"
package 'apache2' do

 package_name package
#  package_name 'apache2'
 action :install
end

elsif node['platform_family']=="rhel"
package = "httpd"
package 'httpd' do

    package_name package
#          package_name 'apache2'
         action :install
end
end
#service 'web' do
















#    service_name = "apache2"
   #  service = 'apache2'
    #  action [:start, :enable]
#elsif node['platform_family']=="rhel"
#service_name = "httpd"
 #     service = 'httpd'
  #    action [:start, :enable]
   # end


   #elsif service_name == "httpd"

#  service 'httpd' do
 # action [:start, :enable]
#end



#service 'apache' do
#service_name 'httpd'
#action [:start, :enable]
#end

#include_recipe 'apache::websites'

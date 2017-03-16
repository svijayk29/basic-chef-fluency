#package 'httpd' do

#    package_name package
#          package_name 'apache2'
 #         action :install
#end

#service 'web' do
if node['platform_family']=="debian"

service 'apache' do
service_name 'apache2'
action [:start, :enable]
end

elsif node['platform_family']=="rhel"
service 'httpd' do
service_name 'httpd'
action [:start, :enable]
end

end


#    service_name = "apache2"
   #  service = 'apache2'
    #  action [:start, :enable]
#elsif node['platform_family']=="rhel"
#service_name = "httpd"
 #     service = 'httpd'
                                 

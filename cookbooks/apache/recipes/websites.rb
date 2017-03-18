#file 'default www' do
#path '/var/www/html/index.html'
#action :delete
#end

file 'default www' do
path '/var/www/html/index.html'
content 'Hello Testing commmand to run chef-client from workstation'
end

webnodes = search('node', 'role:web')
webnodes.each do |node|
puts node
end

#file 'default www' do
#path '/var/www/html/index.html'
#action :delete
#end

file 'default www' do
path '/var/www/html/index.html'
content 'Hello New Vijay World'
end


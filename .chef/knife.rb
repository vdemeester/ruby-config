current_dir = File.dirname(__FILE__)

sys_user = ENV["USER"]

log_level                :info
log_location             STDOUT
node_name                sys_user
client_key               "#{ENV["HOME"]}/.chef/#{ENV["KNIFE_ENV"]}/#{ENV["USER"]}.pem"
validation_client_name   "chef-validator"
validation_key           "#{ENV["HOME"]}/.chef/#{ENV["KNIFE_ENV"]}/validator.pem"
chef_server_url          "http://#{ENV["KNIFE_ENV"]}:4000"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            [ "#{current_dir}/../cookbooks", "#{current_dir}/../site-cookbooks" ]

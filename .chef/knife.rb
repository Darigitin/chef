current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "matt"
client_key               "#{current_dir}/matt.pem"
validation_client_name   "wtcs"
validation_key           "#{current_dir}/wtcs.pem"
chef_server_url          "https://sif.wtamu.edu/organizations/wtcs"
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntaxcache"
cookbook_path            ["#{current_dir}/../cookbooks"]

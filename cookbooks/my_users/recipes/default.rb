#
# Cookbook Name:: my_users
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

users_manage "matt" do
    group_id 1001
    action [ :remove, :create ]
end

users_manage "hpaul" do
    group_id 1002
    action [ :remove, :create ]
end

users_manage "eyoel" do
    group_id 1003
    action [ :remove, :create ]
end

users_manage "jacob" do
    group_id 1009
    action [ :remove, :create ]
end

%w( italc-admin italc-supporter italc-teacher sysadmin ).each do |group|
    users_manage group do
        action [ :remove, :create ]
    end
end

node.default['authorization']['sudo']['passwordless'] = true
include_recipe "sudo"

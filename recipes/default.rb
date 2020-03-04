#
# Cookbook:: chef-actions
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

file '/tmp/HelloWorld.txt' do
 content 'Hello World!'

 verify do |path|
  open(path).read.include? 'Hello World!'
 end

 action :create
end

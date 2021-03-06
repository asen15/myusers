#
# Cookbook:: myusers
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

search("users", "gid:0").each do |user_data|
	user user_data['id'] do
		comment user_data['comment']
		uid user_data['uid']
		gid user_data['gid']
		home user_data['home']
		shell user_data['shell']
	end
end

search("groups", "platform:centos").each do |group_data|
	group group_data['id'] do
		gid group_data['gid']
		members group_data['members']
	end
end


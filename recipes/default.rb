#
# Cookbook Name:: monit_sensu
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#include_recipe "apt"
package "monit"

service "monit" do
  supports restart: true, start: true, stop: true, status: true
end

# monitrc.erb  revere_http.erb  sensu.erb  setup_email.erb  slack.rb.erb
template "#{node[:monit][:basedir]}/monitrc" do
  source 'monitrc.erb'
end

template "#{node[:monit][:basedir]}/conf.d/sensu" do
  source 'sensu.erb'
end

template "#{node[:monit][:basedir]}/conf.d/setup_email" do
  source 'setup_email.erb'
end

template "#{node[:monit][:basedir]}/slack.rb" do
  source 'slack.rb.erb'
  mode '0755'
end

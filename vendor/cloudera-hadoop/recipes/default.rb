#
# Cookbook Name:: cloudera-hadoop
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# add the Cloudera Repo of CDH4 packages for Ubuntu 12.04 on AMD64
apt_repository "cloudera" do
  uri "http://archive.cloudera.com/cdh4/ubuntu/precise/amd64/cdh"
  arch "amd64"
  distribution "precise-cdh4"
  components ["contrib"]
  key "http://archive.cloudera.com/debian/archive.key"
end

#
# Cookbook Name:: luigi-node
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Create virtualenv
python_virtualenv node['luigi']['venv_dir'] do
    owner node['luigi']['user']
    group node['luigi']['group']
    action :create
end

# Install requirements (luigi etc.)
# See: http://ericholscher.com/blog/2010/nov/9/building-django-app-server-chef-part-2/
script "install_luigi_requirements" do
  interpreter "bash"
  user node['luigi']['user']
  group node['luigi']['group']
  # code <<-EOH
  # /home/ubuntu/luigi_venv/bin/pip install -r /mnt/vagrant_data/requirements.txt
  # EOH

  # TODO: Make this modular
  code "#{node['luigi']['venv_dir']}/bin/pip install -e git+git://github.com/spotify/luigi.git@adb67cb5bd#egg=luigi mechanize==0.2.5 tornado==3.1"
end

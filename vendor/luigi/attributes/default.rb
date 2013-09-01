#
# Cookbook Name:: mysql
# Attributes:: default
#

default['luigi']['user'] = 'root'
default['luigi']['group'] = 'root'
default['luigi']['venv_dir'] = '/root/luigi'
default['luigi']['log_dir'] = '/root'

default['luigi']['hadoop_version'] = 'cdh4'
default['luigi']['hadoop_streaming_jar_path'] = 'root'
default['luigi']['scheduler_host'] = 'localhost'
default['luigi']['error-email'] = 'root@localhost'

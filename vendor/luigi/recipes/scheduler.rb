include_recipe "luigi::node"

service "luigid" do
  provider Chef::Provider::Service::Upstart
  subscribes :restart, resources(:script => "install_luigi_requirements")
  supports :restart => true, :start => true, :stop => true
end

template "redis.upstart.conf" do
  path "/etc/init/luigid.conf"
  source "luigid.upstart.conf.erb"
  owner "root"
  group "root"
  mode "0644"
  notifies :restart, resources(:service => "luigid")
end


service "luigid" do
  action [:enable, :start]
end

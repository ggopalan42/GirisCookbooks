cookbook_file "/tmp/vtund_conf.tar" do
  source "vtund_conf.tar"
end

cookbook_file "/tmp/install-vtund.sh" do
  source "install-vtund.sh"
  mode 0755
end

execute "install vtund" do
  command "sh /tmp/install-vtund.sh"
end

execute "get private ip" do
  command "touch '/tmp/touch_test'"
  command "echo 'Private IP: test' > '/tmp/my_test'"
  # command "echo 'Private IP: #{node[:opsworks][:layers]['php-app'][:instances].first[1][:private_ip]}' > '/tmp/my_private_ip'"
end


cookbook_file "/tmp/install-vtund.sh" do
  source "install-vtund.sh"
  mode 0755
end

cookbook_file "/tmp/aws.server" do
  source "aws.server"
end

execute "install vtund" do
  command "sh /tmp/install-vtund.sh"
end

execute "get private ip" do
  command "echo 'Private IP: test' > /tmp/my_test"
  command "echo 'Private IP: #{node[:opsworks][:layers] [:php-app][:instances].first[:private_ip]}' > /tmp/my_private_ip"
end


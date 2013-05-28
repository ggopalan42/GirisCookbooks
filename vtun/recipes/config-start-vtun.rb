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

cookbook_file "/tmp/install-vtund.sh" do
  source "install-vtund.sh"
  mode 0755
end

execute "install vtund" do
  command "sh /tmp/install-vtund.sh"
end

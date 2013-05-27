cookbook_file "install-vtund.sh" do
  source "install-vtund.sh"
  mode 0755
end

execute "install vtund" do
  command "sh install-vtund.sh"
end

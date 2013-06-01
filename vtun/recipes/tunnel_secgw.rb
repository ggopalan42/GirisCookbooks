# This recipe needs to run on the securty gateway. It will download the
# vtun configs for the various layers, install vtun and start a vtund
# server on the Security Gateway

# Download vtun configs for Sec GW and all 3 tiers
cookbook_file "/tmp/vtund_conf.tar" do
  source "vtund_conf.tar"
end

# Download the install-vtund script
cookbook_file "/tmp/install-vtund.sh" do
  source "install-vtund.sh"
  mode 0755
end

# The install-vtund script installs vtund and untars all of the vtund configs
execute "install vtund" do
  command "sh /tmp/install-vtund.sh"
end

# Start vtund as server with tunnel1.server as the config file
execute "Start vtund as server" do
  command "vtund -s -f '/tmp/tunnel1.server'"
end


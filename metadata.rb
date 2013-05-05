name              "swift"
maintainer        "Rackspace US, Inc."
license           "Apache 2.0"
description       "Installs and configures Openstack Swift"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.16"
recipe            "swift::account-server", "Installs the swift account server"
recipe            "swift::object-server", "Installs the swift object server"
recipe            "swift::proxy-server", "Installs the swift proxy server"
recipe            "swift::container-server", "Installs the swift container server"

%w{ centos ubuntu }.each do |os|
  supports os
end

%w{ dsh monitoring openssl osops-utils sysctl memcached }.each do |dep|
  depends dep
end

depends "keystone", ">= 1.0.20"

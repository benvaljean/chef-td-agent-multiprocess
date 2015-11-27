name             "td-agent-multiprocess"
maintainer       "Benjamin Goodacre"
maintainer_email ""
license          "GPL v2"
description      "Wrapper cookbook for chef-td-agent that implements the multiprocess plugin to allow multithreading"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"
recipe           "td-agent-multiprocess"

%w{redhat centos debian ubuntu}.each do |os|
  supports os
end

depends 'td-agent'
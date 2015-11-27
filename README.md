# chef-td-agent-multiprocess

Wrapper cookbook for (chef-td-agent)[https://github.com/treasure-data/chef-td-agent] that installs the multiprocess plugin and uses round-robin to forward to child instances, allowing multithreading. Additional configuration files for child instances are automatically created based on the number of cores found.


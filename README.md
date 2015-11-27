# chef-td-agent-multiprocess

[Chef](https://www.chef.io/chef/) wrapper cookbook for [td-agent](https://github.com/treasure-data/chef-td-agent) that installs the multiprocess plugin and uses round-robin to forward to child instances, allowing multithreading. Additional configuration files for child instances are automatically created based on the number of cores found.


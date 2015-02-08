example4 Cookbook
=================

### Requirements

* You must use the MySQL community cookbook
* MySQL should be installed
* The MySQL instance assigned by chef should be named 'default'
* The already created template innodb.cnf should be added as a
  MySQL config

### Instructions

Configure the cookbook to handle all of the requirements and run
test-kitchen to verify it was successful.
```shell
kitchen test
```

### Help
Just FYI this test uses Centos 7.0 instead of Ubuntu.

- MySQL Cookbook - https://github.com/chef-cookbooks/mysql#example
- Template Resource - https://docs.chef.io/resource_template.html
- Package resource - https://docs.chef.io/resource_package.html
- Service resource - https://docs.chef.io/resource_service.html

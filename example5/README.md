example5 Cookbook
=================

### Requirements

* You must use the MySQL community cookbook
* The MySQL instance assigned by chef should be named 'default'
* The MySQL service should set the root password to 'changeme'
* The MySQL innodb.cnf should dynamically set the innodb buffer pool
  to use 1/2 of the system memory.
* A MySQL config named innodb.cnf should be added to this server, you
  may use the innodb.cnf file from example4 how ever it will need to
  be modified to satisfy the innodb buffer pool requirement.
* A database named 'postgresftw' should be created
* A database user name 'allpg' should have all permissions to
  'postgresftw'

### Instructions

Configure the cookbook to handle all of the requirements and run
test-kitchen to verify it was successful.
```shell
kitchen test
```

### Help
This test uses Centos 7.0 instead of Ubuntu.

- Ruby Basic Math - http://learnrubythehardway.org/book/ex3.html
- MySQL Cookbook - https://github.com/chef-cookbooks/mysql
- Database Resource - https://github.com/opscode-cookbooks/database#examples
- Template Resource - https://docs.chef.io/resource_template.html

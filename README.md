# puppet-module-viewvc
===

[![Build Status](https://travis-ci.org/Ericsson/puppet-module-viewvc.png?branch=master)](https://travis-ci.org/Ericsson/puppet-module-viewvc)

Puppet module to manage ViewVC

===

# Compatibility
---------------
This module is built for use with Puppet v3 on the following OS families.

* EL 6

===

Dependencies
------------

Some functionality is dependent on other modules:

- [puppetlabs/stdlib](https://github.com/puppetlabs/puppetlabs-stdlib)
- [puppetlabs/apache](https://github.com/puppetlabs/puppetlabs-apache)

===

# Parameters
------------

package
-------
Name of package

- *Default*: 'viewvc'

config_path
-----------
Path to viewvc config file

- *Default*: '/etc/viewvc/viewvc.conf'

config_mode
-----------
Config file's mode

- *Default*: '0644'

config_owner
------------
Config file's owner

- *Default*: 'root'

config_group
------------
Config file's group

- *Default*: 'root'

root_parents
------------
root_parents parameter in viewvc.conf

- *Default*: undef

vhost_port
----------
Http port for vhost to listen on. *unused*

- *Default*: '80'

vhost_docroot
-------------
vhost docroot. *unused*

- *Default*: '/var/www/viewvc'

vhost_template
--------------
Template file for vhost config

- *Default*: 'viewvc/vhost.conf.erb'

apache_user
-----------
User to run apache

- *Default*: 'USE_DEFUALT' (use OS defualt)

apache_group
------------
Group for apache server

- *Default*: 'USE_DEFUALT' (use OS defualt)


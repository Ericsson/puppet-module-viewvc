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
Http port for vhost to listen on

- *Default*: '80'

vhost_docroot
-------------
vhost docroot

- *Default*: '/var/www/viewvc'

vhost_template
-------------
Template file for vhost config

- *Default*: 'viewvc/vhost.conf.erb'


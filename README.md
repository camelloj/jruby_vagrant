jruby_vagrant
=============

A vagrant dev op for jruby based on Ubuntu Precise 64


### Packages

Puppet provisioner script provides:

* Jruby
* Postgres
* Apache2
* Tomcat7
* apt submodule
* stdlib submodule
* elasticsearch submodule


### Setup

Clone blue-kite/jruby_vagrant repo and get puppet modules:

```bash

$ git clone git@github.com:blue-kite/jruby_vagrant.git
$ cd jruby_vagrant
$ git submodule init
$ git submodule update

```

### Prerequisites

Vagrant
Virtualbox

### Vagrant

Start using the box running on jruby_vagrant folder the command

```bash
vagrant up
```

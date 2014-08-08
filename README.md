# Docker Dev Env #

Development environments in docker containers.

Quickly create development environments and playgrounds to try out new technologies in 
[Docker](https://www.docker.com/) containers.
[Ansible](http://docs.ansible.com/index.html) is used to provision the
environments.

## Getting Started ##

The easiest way to get started is in a 
[Vagrant](http://www.vagrantup.com/)
virtual machine.

The container needs to have
[Docker](https://www.docker.com/) and
[Ansible](http://docs.ansible.com/index.html) installed.

Clone the repo inside the container and, in the `ansible` directory, run:

    ansible-playbook playbook.yml

Change `playbook.yml` to one of the included playbooks for the
development environment required.

## Licence ##

Copyright 2014 ebargtuo. Released under the MIT license.

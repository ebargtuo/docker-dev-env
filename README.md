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

The host environment needs to have
[Docker](https://docs.docker.com/installation/) and
[Ansible](http://docs.ansible.com/intro_installation.html) installed. For the
Docker modules in Ansible, there is an additional dependency on
[`docker-py`](https://github.com/docker/docker-py).

Clone the repo inside the container and, in the `ansible` directory, run:

    ansible-playbook playbook.yml

Change `playbook.yml` to one of the included playbooks for the
development environment required.

You can connect to the docker development container with the `connect.sh`
script in the `scripts` directory.

    scripts/connect.sh [CONTAINERNAME]

If you changed the default `CONTAINERNAME`, you must specify the name.

### With Vagrant ###

A `Vagrantfile` is included which sets up a host VM and takes care of
installing the required dependencies.

## Licence ##

Copyright 2014 ebargtuo. Released under the MIT license.

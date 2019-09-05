Ansible Role: switch apt mirror
=========

[![Build Status](https://travis-ci.org/chusiang/switch-apt-mirror.ansible.role.svg?branch=master)](https://travis-ci.org/chusiang/switch-apt-mirror.ansible.role) [![Ansible Galaxy](https://img.shields.io/badge/role-switch--apt--mirror-blue.svg)](https://galaxy.ansible.com/chusiang/switch-apt-mirror/)

An Ansible role of switch apt mirror for Debian & Ubuntu.

Requirements
------------

None.

Role Variables
--------------

Available variables are listed below, along with default values (see defaults/main.yml):

    # Ubuntu
    #ubuntu_apt_mirror: 'archive.ubuntu.com'
    ubuntu_apt_mirror: 'free.nchc.org.tw'

    # Debian
    #debian_apt_mirror: 'httpredir.debian.org'
    debian_apt_mirror: 'opensource.nchc.org.tw'

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: chusiang.switch-apt-mirror }

History
-------

* 2019/04/23 Stop support the [Debian 7](https://www.debian.org/releases/wheezy/), the wheezy was EOL at May 2018.

License
-------

Copyright (c) chusiang from 2016-2019 under the MIT license.

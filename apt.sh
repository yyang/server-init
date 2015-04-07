#!/bin/bash


  pkg_manager="apt"
  dependencies="net-tools perl openssh-client openssh-server"


  # replace 163 repo
    sed -i.bak -r "s_http://[a-zA-Z0-9\.]*_http://ubuntu.cn99.com_" /etc/apt/sources.list

  # installing upgrades
  apt-get update
  apt-get clean

  # installing dependencies
  apt-get -y install $dependencies

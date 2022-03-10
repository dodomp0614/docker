#!/bin/bash

## Uninstall Old Version

sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine \
                  podman \
                  runc

## Set Up the Repository

sudo yum install -y yum-utils

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

## Install Docker Engine

sudo yum install docker-ce docker-ce-cli containerd.io

## Start docker engine

sudo systemctl start docker

sudo systemctl status docker

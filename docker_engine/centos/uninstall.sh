#!/bin/bash

## Uninstall Docker Engine

sudo yum remove docker-ce docker-ce-cli containerd.io

sudo rm -rf /var/lib/docker

sudo rm -rf /var/lib/containerd

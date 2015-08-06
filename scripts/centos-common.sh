#!/bin/bash

# Update CentOS with any patches
yum update -y --exclude=kernel

# Install tools
yum install -y vim git unzip screen nc telnet
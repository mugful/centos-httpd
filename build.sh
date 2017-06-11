#!/bin/bash

set -euxo pipefail


# CentOS image comes cleaned of locales, reinstall them
yum -y reinstall glibc-common
yum -y install epel-release

yum -y install httpd mod_ssl
yum clean all

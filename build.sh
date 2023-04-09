#!/bin/bash

set -euxo pipefail

dnf -y install 'dnf-command(config-manager)'
dnf config-manager --set-enabled powertools

# CentOS image comes cleaned of locales, reinstall them
dnf -y reinstall glibc-common
dnf -y install epel-release

dnf -y install awstats httpd mod_ssl
dnf clean all

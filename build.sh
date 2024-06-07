#!/bin/bash

set -euxo pipefail

# Container images can come cleaned of locales, reinstall them
dnf -y reinstall glibc-common

dnf -y install awstats httpd mod_ssl
dnf clean all

#!/bin/bash

RVM_RUBY_VERSION=2.1.1

# Install RVM if it's not already installed and make sure it's loaded
command -v rvm >/dev/null 2>&1 || {
  curl -sSL https://get.rvm.io | bash -s stable
}
source /etc/profile.d/rvm.sh

# Use the defined ruby version as the default. Install it if it doesn't exist.
rvm --default use $RVM_RUBY_VERSION
if [ $? -ne 0 ]; then
  rvm install ruby-$RVM_RUBY_VERSION
  rvm --default use $RVM_RUBY_VERSION
fi

# Add the vagrant user to the rvm group
usermod -a -G rvm vagrant

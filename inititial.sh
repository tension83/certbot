#!/bin/bash

# Symlink default certs in case the /etc/letsencrypt/live doesn't exists
if [ ! -d "/etc/letsencrypt/live" ]; then ln -s /etc/letsencrypt/default /etc/letsencrypt/live; fi

# Symlinks of certificates directory
declare -a hosts=(
  "example1.org"
  "example2.org"
  "example3.org"
)

for host in "${hosts[@]}"
do
  ln -sf /etc/letsencrypt/default/example.org /etc/letsencrypt/default/${host}
done

# Start nginx
nginx -g "daemon off;"

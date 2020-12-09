#!/bin/sh
set -e

cp -R /tmp/ssh-keys /root/.ssh
chmod 700 /root/.ssh
chmod 644 /root/.ssh/id_rsa.pub
chmod 644 /root/.ssh/authorized_keys
chmod 600 /root/.ssh/id_rsa

exec "$@"

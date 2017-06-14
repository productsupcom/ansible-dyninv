#!/bin/bash
set -e

until mysqladmin ping -h db -u $MYSQL_USER -p$MYSQL_PASSWORD; do
    >&2 echo "MySQL not ready"
    sleep 1
done

cd /data/api/
composer install --no-interaction

php bin/console doctrine:schema:validate

rc=$?
if [[ $rc != 0 ]]; then
    php bin/console doctrine:schema:create
fi

if [ -n "$ANSIBLE_REST_ADMIN_USER" ]; then
    echo $ANSIBLE_REST_ADMIN_USER;
    php bin/console fos:user:create  $ANSIBLE_REST_ADMIN_USER $ANSIBLE_REST_ADMIN_EMAIL $ANSIBLE_REST_ADMIN_PASS
fi

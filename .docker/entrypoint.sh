#!/bin/bash

set -eu

envsubst '${API_KEY}' < /template/default.conf > /etc/nginx/conf.d/default.conf

exec "$@"
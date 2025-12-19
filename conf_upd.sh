#!/bin/bash
echo "Start..."

cp dokuwiki.subdomain.conf /vlm_docker/swag/config/nginx/proxy-confs
cp ars.subdomain.conf /vlm_docker/swag/config/nginx/proxy-confs

echo "Finished"
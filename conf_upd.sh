#!/bin/bash
echo "Start..."

cp dokuwiki.subdomain.conf /vlm_docker/swag/config/nginx/proxy-confs
cp depo23.subdomain.conf /vlm_docker/swag/config/nginx/proxy-confs

cp default.conf /vlm_docker/dokuwiki/config/nginx/site-confs

echo "Finished"
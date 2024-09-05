# remote_host

Setup Dokuwiki service:

1. create directory for vps services /home/user/vps

2. copy compose.yml to vps direcory at remote host

3. create dir and link for each service volumes:
	- doku_conf -> /vlm_docker/dokuwiki/config/
	- swag_conf -> /vlm_docker/swag/config/
	- wguard_conf -> /vlm_docker/wireguard/config

4. update file 'dokuwiki.subdomain.conf' at remote location vps/swag_conf/nginx/proxy-confs 

5. update file 'default.conf' at remote location vps/doku_conf/nginx/site-confs

6. complete the setup by appending install.php to URL

7. unzip dokuwiki pages to remote location vps/doku_conf/dokuwiki/data/pages


Dokuwiki pages backup:

1. Create an archive: tar -cf wiki_pages_date.tar  ~/vps/doku_conf/dokuwiki/data/pages
2. Copy from remote to local: scp smdyan@salihof.ru:/home/user/wiki_pages_date.tar ./

Docker:

Stop single container: idocker compose stop swag
Update single image: docker-compose pull swag
If change a Dockerfile or the contents of build directory: docker compose build --no-cache swag
Update containers: docker-compose up -d swag
Remove the old dangling images: docker image prune

Read logs:
	- docker exec -it swag bash
	- cat /config/log/letsencrypt/letsencrypt.log
 

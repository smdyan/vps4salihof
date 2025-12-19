# vps4salihof

## swag

### Setup Dokuwiki service:

* first start twg

* file location '/vlm_docker/swag/config'

* update nginx config files:
		'dokuwiki.subdomain.conf' at  '/vlm_docker/swag/config/nginx/proxy-confs'
	for update run 'conf_upd.sh'

* add static route to 'dokuwiki' container:
```
	ip route add 172.24.0.0/24 dev eth0 via 172.22.0.13
```

## Docker

update an image
```
	docker compose down
	docker compose pull swag
	docker compose build --no-cache swag	# if change a Dockerfile or the contents of build directory
	docker compose up -d swag
	docker image prune						# remove the old dangling images
```

Read logs
```
	docker exec -it swag bash
	cat /config/log/letsencrypt/letsencrypt.log
```

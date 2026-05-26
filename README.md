# vps4salihof

## swag

### Setup Dokuwiki service:

* file location '/vlm_docker/swag/config'

* update nginx config files:
		'dokuwiki.subdomain.conf' at  '/vlm_docker/swag/config/nginx/proxy-confs'
	for update run 'conf_upd.sh'

* on the host add static route to mwg2 in order containers can find the interface wg0:
```
	sudo ip route add 192.168.88.0/24 via 172.22.0.14 dev br-docker22
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

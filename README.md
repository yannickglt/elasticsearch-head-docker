# elasticsearch-head-docker

#### Run the image in a Docker container
To quickly tryout elasticsearch-head on your machine with Docker, you can simply run:

```
sudo docker run \
  --volume=/:/rootfs:ro \
  --volume=/var/run:/var/run:rw \
  --volume=/sys:/sys:ro \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --publish=8080:8080 \
  --detach=true \
  --name=elasticsearch-head \
  yannickglt/elasticsearch-head:latest
```

elasticsearch-head is now running on `http://localhost:8080`.

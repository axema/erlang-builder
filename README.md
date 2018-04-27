
## Build docker image
docker build -t gitlab-cr.zaark.net/docker/erlang-builder .
## push to repo
docker push gitlab-cr.zaark.net/docker/erlang-builder

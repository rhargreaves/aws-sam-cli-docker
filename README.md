# AWS SAM CLI Docker Image

[![Build and Push Docker Image](https://github.com/rhargreaves/aws-sam-cli-docker/actions/workflows/push.yml/badge.svg)](https://github.com/rhargreaves/aws-sam-cli-docker/actions/workflows/push.yml)

Docker image for the AWS SAM CLI

## Build

```sh
docker build --build-arg SAM_CLI_VERSION=1.135.0 -t aws-sam-cli .
```

## Usage

```sh
export CONTAINER_HOST=host.docker.internal  # macOS
export CONTAINER_HOST=172.17.0.1            # Linux

docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/sam aws-sam-cli \
    local start-api \
    --host 0.0.0.0 \
    --container-host-interface 0.0.0.0 \
    --container-host ${CONTAINER_HOST} \
    --docker-volume-basedir $(pwd)
```

## Tips

* If running in Docker Compose, be sure to add `--docker-network <compose_network>` to have SAM-created containers be able to talk to its network
* To refer to a complete stack using the `sam local start-api` feature and this image, see [rhargreaves/dog-walking](https://github.com/rhargreaves/dog-walking)

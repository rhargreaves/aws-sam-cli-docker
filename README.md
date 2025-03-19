# AWS SAM CLI Docker Image

[![Build and Push Docker Image](https://github.com/rhargreaves/aws-sam-cli-docker/actions/workflows/push.yml/badge.svg)](https://github.com/rhargreaves/aws-sam-cli-docker/actions/workflows/push.yml)

Docker image for the AWS SAM CLI

## Build

```sh
$ docker build --build-arg SAM_CLI_VERSION=1.135.0 -t aws-sam-cli .
```

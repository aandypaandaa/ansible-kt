#!/bin/bash

RUNNER_NAME=${1}
TOKEN=${2}
TAG=${3}

gitlab-runner register --non-interactive \
  --name ${RUNNER_NAME} \
  --url https://gitlab.com \
  --registration-token ${TOKEN} \
  --executor shell \
  --locked=false \
  --tag-list=${TAG} \
  --run-untagged="true"


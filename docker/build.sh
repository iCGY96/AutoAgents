#!/bin/sh

IMAGE="XXX/autoagents"
VERSION=1.0

docker build --no-cache -f docker/Dockerfile -t "${IMAGE}:${VERSION}" .

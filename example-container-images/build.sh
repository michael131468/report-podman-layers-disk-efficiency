#!/bin/sh

podman build -t shared-base:v0.1 shared-base/
podman build -t shared-middleware:v0.1 shared-middleware/
podman build -t unique-a:v0.1 unique-a
podman build -t unique-b:v0.1 unique-b
podman build -t unique-c:v0.1 unique-c
podman build -t unique-d:v0.1 unique-d
podman build -t unique-e:v0.1 unique-e
podman build -t unique-f:v0.1 unique-f

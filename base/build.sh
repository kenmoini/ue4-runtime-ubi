#!/bin/bash

podman build -f Containerfile --build-arg "BASEIMAGE=registry.access.redhat.com/ubi8/ubi" -t ue4-runtime-ubi:base .

#!/bin/bash

docker build -f Containerfile --build-arg "BASEIMAGE=registry.access.redhat.com/ubi8/ubi" .
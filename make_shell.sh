#!/bin/bash -eu

docker build -t gcc-cmake gcc-cmake
docker run --rm -it gcc-cmake bash

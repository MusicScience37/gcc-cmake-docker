# gcc-cmake-docker

[![dockeri.co](https://dockeri.co/image/musicscience37/gcc-cmake)](https://hub.docker.com/r/musicscience37/gcc-cmake)

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/musicscience37/gcc-cmake)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/musicscience37/gcc-cmake)

![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/MusicScience37/gcc-cmake-docker?label=latest)

[![pipeline status](https://gitlab.com/MusicScience37/gcc-cmake-docker/badges/master/pipeline.svg)](https://gitlab.com/MusicScience37/gcc-cmake-docker/commits/master)

Docker container image to use GCC and CMake

Current versions of softwares:

|                        Tool                        | Version |      Note      |
| :------------------------------------------------- | :------ | :------------- |
| [gcc](https://gcc.gnu.org/)                        | 8.3.0   | gcc, g++, gcov |
| [lcov](https://github.com/linux-test-project/lcov) | 1.14    |                |
| [CMake](https://cmake.org/)                        | 3.15.5  |                |

## Images

Images built in this project are available at following sites:

- [Gitlab's container registry](https://gitlab.com/MusicScience37/gcc-cmake-docker/container_registry)
  - latest image: `registry.gitlab.com/musicscience37/gcc-cmake-docker:latest`
- [Docker Hub](https://hub.docker.com/r/musicscience37/gcc-cmake)
  - latest image: `musicscience37/gcc-cmake:latest`

## Test

To run the test of the container built in this project,
run `run_test.sh` script in the root directory.

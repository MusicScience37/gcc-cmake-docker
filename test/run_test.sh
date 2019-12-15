#!/bin/bash -e

cd $(dirname $0)
rm -rf build
mkdir build
cd build

cmake ..
cmake --build .
ctest -V .

COV=./coverage/coverage.info
HTML=./coverage/html
ROOT=$(realpath $(dirname $0))/src
mkdir coverage
lcov --rc lcov_branch_coverage=1 --directory ./ --capture --output-file $COV
lcov --rc lcov_branch_coverage=1 --extract $COV "${ROOT}/*" --output-file $COV
lcov --rc lcov_branch_coverage=1 --list $COV
genhtml --rc lcov_branch_coverage=1 --output-directory $HTML $COV

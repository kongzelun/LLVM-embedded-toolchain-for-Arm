#!/bin/bash

. ./setup.sh

. /etc/os-release

if [[ $NAME == "KZL-Linux" ]]; then
    build.py \
        --verbose \
        --host-toolchain clang \
        --host-toolchain-dir /usr/bin \
        --native-toolchain clang \
        --native-toolchain-dir /usr/bin \
        --variants armv8m.main_hard_cortex-m33_fpv5-sp-d16 2>&1 \
    | tee armv8m.main_hard_cortex-m33_fpv5-sp-d16.log
elif [[ $NAME == "Ubuntu" ]]; then
    build.py \
        --verbose \
        --host-toolchain clang \
        --host-toolchain-dir /usr/local/bin \
        --native-toolchain clang \
        --native-toolchain-dir /usr/local/bin \
        --variants armv8m.main_hard_cortex-m33_fpv5-sp-d16 2>&1 \
    | tee armv8m.main_hard_cortex-m33_fpv5-sp-d16.log
fi
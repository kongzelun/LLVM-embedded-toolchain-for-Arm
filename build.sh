#!/bin/bash

. ./setup.sh

. /etc/os-release

if [[ $NAME == "KZL-Linux" ]]; then
    build.py \
        --verbose \
        --revision "13.0.0" \
        --variants armv8m.main_hard_cortex-m33_fpv5-sp-d16 \
        --host-toolchain clang \
        --host-toolchain-dir /usr/bin \
        --native-toolchain clang \
        --native-toolchain-dir /usr/bin \
        --use-ninja > build.log 2>&1
elif [[ $NAME == "Ubuntu" ]]; then
    build.py \
        --verbose \
        --revision "13.0.1" \
        --variants armv8m.main_hard_cortex-m33_fpv5-sp-d16 \
        --host-toolchain clang \
        --host-toolchain-dir /usr/bin \
        --native-toolchain clang \
        --native-toolchain-dir /usr/bin \
        --use-ninja > build.log 2>&1
fi
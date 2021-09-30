#!/usr/bin/env bash
set -euo pipefail

rm -rf build
cp -rp ./public ./build

for example in `ls examples`; do
    (cd examples/$example && yarn && yarn build)
    cp -rp ./examples/$example/build ./build/$example
done
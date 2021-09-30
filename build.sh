#!/usr/bin/env bash
set -euo pipefail

rm -rf build
mkdir -p build
cp ./examples/index.html ./build

(cd examples/elm && yarn && yarn build)
cp -rp examples/elm/build build/elm

(cd examples/react && yarn && yarn build)
cp -rp examples/react/build build/react

(cd examples/react-dom && yarn && yarn build)
cp -rp examples/react-dom/build build/react-dom
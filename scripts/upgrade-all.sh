#!/usr/bin/env bash
set -euo pipefail

for example in `ls examples`; do
    (cd examples/$example && yarn upgrade --latest fluent-typesafe)
done
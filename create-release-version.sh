#!/usr/bin/env bash

set -eou pipefail

mkdir -p release
cp -r src release/
cp -r icons/ release/
sed -E 's/\"hot-reload.js\",?[ \t\n]?//g' manifest.json > release/manifest.json

cd release && zip -r ../release.zip ./* && cd ..

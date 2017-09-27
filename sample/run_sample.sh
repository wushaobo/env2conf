#!/usr/bin/env bash

set -e

cd "$(dirname $0)"

bin=../src/env2conf.py
#./setup_venv.sh


HTTP_PORT=8765 \
BUCKET_NAME=sample_bucket_name \
CALLBACK_URL=http://example.com/callback \
HLS_PATH=/sample/path \
${bin} -i ./templates -o ./output

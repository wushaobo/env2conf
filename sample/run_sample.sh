#!/usr/bin/env bash

set -e


cd "$(dirname $0)"

./setup_venv.sh venv
bin_name=env2conf
bin=venv/bin/${bin_name}

env_vars="HTTP_PORT=8765 \
BUCKET_NAME=sample_bucket_name \
CALLBACK_URL=http://example.com/callback \
HLS_PATH=/sample/path"

cmd="${env_vars} ${bin} -i ./templates -o ./output"

echo ""
echo ${cmd}
echo ""

eval ${cmd}

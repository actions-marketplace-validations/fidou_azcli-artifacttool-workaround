#!/bin/sh -l

echo ">>> Running the following script $1"
echo ""
bash -c "set -e >&2; set -o pipefail; $1"
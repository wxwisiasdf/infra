#!/bin/bash

set -exuo pipefail

# NB this is run from the steps in (private) https://github.com/compiler-explorer/ce-ci

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${DIR}"

env EXTRA_NFS_ARGS="" MAKE_CONFIG_SUFFIX="-ci" "${DIR}/setup-common.sh"

#!/bin/bash

set -ex

VERSION=v`cat VERSION`

# Clone new code
git clone --depth 1 --branch $VERSION https://github.com/ProtonMail/proton-bridge.git
cd proton-bridge
git apply ../default-vault-types_settings.patch

# Build
make build-nogui vault-editor

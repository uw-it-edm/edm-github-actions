#!/bin/sh

set -e

cd "$GITHUB_WORKSPACE" || exit

# the following "git config" is required to fix build failure
# see https://github.com/actions/runner-images/issues/6775
git config --global --add safe.directory "$GITHUB_WORKSPACE"

pre-commit run --all-files

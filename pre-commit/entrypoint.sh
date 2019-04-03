#!/bin/sh

set -e

cd "$GITHUB_WORKSPACE" || exit

pre-commit run --all-files

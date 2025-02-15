#!/usr/bin/env bash

# Removes all changesets from provided release branch and bumps the version

set -e

git fetch --all
git diff --name-only origin/"$1" .changeset/ | xargs git rm --

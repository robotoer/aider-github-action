#!/bin/bash

# Set constants
WORKDIR="/tmp/repo"

# Get args
AIDER_ARGS=$1

# Workaround for writing files inside the container
cp -r "${GITHUB_WORKSPACE}" "${WORKDIR}"
# Switch to the repo directory
cd "${WORKDIR}"

# Run aider command
eval "aider $AIDER_ARGS"

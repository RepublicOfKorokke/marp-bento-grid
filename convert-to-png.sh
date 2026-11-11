#!/usr/bin/env bash

podman run --rm --init -v $(pwd):/home/marp/app/ -e LANG=$LANG marpteam/marp-cli marp.md --images png

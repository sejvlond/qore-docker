#!/bin/bash

version="$1"
shift

if [ -z "${version}" ]; then
    version="latest";
fi

# if no args provided, run bash for interactive mode
if [ $# -eq 0  ]; then
    entrypoint="bash"
else
    entrypoint="qore"
fi

docker run \
    -it \
    --rm \
    -v ~/:/home/docker:ro \
    -v ~/git/:/home/docker/git/:ro \
    qore:"${version}" \
        ${entrypoint} "$@"

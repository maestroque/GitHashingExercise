#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <integer>"
    exit 1
fi

integer=$1
hash=$(echo -n "$integer" | sha256sum | awk '{print $1}')

echo "SHA-256 hash of $integer: $hash"


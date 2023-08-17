#!/bin/sh
echo 'values: |'
env | sed 's/^/  /'
tree .. | sed 's/^/  /'

# helm template -f

# /bin/external-secrets-transformer

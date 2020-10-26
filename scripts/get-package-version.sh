#!/bin/bash

PACKAGE_VERSION=$(cat package.json \
  | grep version \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/[",]//g' \
  | tr -d '[[:space:]]')

export vPACKAGE_VERSION="v${PACKAGE_VERSION}"
echo  $PACKAGE_VERSION
echo "Package Version ${vPACKAGE_VERSION}"

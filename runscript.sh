#!/bin/bash
if [ -z $1 ] || [ ! -f $1 ]; then
  echo "Please provide a valid script file to execute as the first parameter (i.e. private_contract.js)" >&2
  exit 1
fi
BIN_GETH='/Users/momo/.quorum-wizard/bin/quorum/21.4.0/geth'
BIN_TESSERA='/Users/momo/.quorum-wizard/bin/tessera/21.1.1/tessera-app.jar'
BIN_CAKESHOP='/Users/momo/.quorum-wizard/bin/cakeshop/0.12.1/cakeshop.war'

"$BIN_GETH" --exec "loadScript(\"$1\")" attach qdata/dd1/geth.ipc

#!/bin/bash

DIR=$(dirname "$0")

"$DIR"/../../bin/massdns --extended-input -c 50 -r "$DIR"/google-dns.txt --quiet -o J "$DIR"/names.txt | jq -r .resolver | grep -E -q "`cat $DIR/expected`"

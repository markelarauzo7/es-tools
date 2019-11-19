#!/bin/bash

curl -H "Content-Type: application/json" -X POST "$URL/main-$COUNTRY/_doc/_bulk?pretty&refresh" --data-binary "@db/elasticSearch/main-data.json"
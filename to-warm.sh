#!/usr/bin/env bash
curl -XPUT localhost:9200/gps-*/_settings?pretty -d '
{
  "index.routing.allocation.require.box_type": "warm"
}
'

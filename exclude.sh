#!/usr/bin/env bash
curl -XPUT localhost:9200/_cluster/settings?pretty -d '
{
 "transient":{
  "cluster.routing.allocation.exclude._name":""
 }
}
'

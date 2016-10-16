#!/usr/bin/env bash
curl -XPUT localhost:9200/gps-*/_settings?pretty -d '
{
 "index":{
  "number_of_replicas":2
 }
}
'

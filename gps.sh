#!/usr/bin/env bash
curl -XDELETE localhost:9200/_template/gps?pretty
curl -XPUT localhost:9200/_template/gps?pretty -d @gps.json

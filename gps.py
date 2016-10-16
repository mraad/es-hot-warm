import random
from elasticsearch import Elasticsearch
from elasticsearch import helpers

es = Elasticsearch()
actions = []

for id in range(0, 100):
    lon = random.uniform(-180.0, 180.0)
    lat = random.uniform(-90.0, 90.0)
    actions.append({
        "_index": "gps-2016-01-01",
        "_type": "gps",
        "_id": id,
        "_source": {
            "loc": [lon, lat]
        }
    })

helpers.bulk(es, actions)

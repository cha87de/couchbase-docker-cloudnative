This couchbase docker container provides initialization
via environment variables. Apart from that it is based on
the latest official couchbase ce docker image from docker hub.

Usage with docker-compose:

```
version: '2'
services:
    couchbase:
        build: .
        image: vice-db
        environment:
         - CLUSTER=localhost
         - USER=admin
         - PASS=secret
         - PORT=8091
         - RAMSIZEMB=2048
         - RAMSIZEINDEXMB=512
         - RAMSIZEFTSMB=512
         - BUCKETS=
         - BUCKETSIZES=
         - AUTOREBALANCE=true
```
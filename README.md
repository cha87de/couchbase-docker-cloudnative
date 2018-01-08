
**WARNING:** Couchbase has some issues when running in a typical cloud setup! Your data may be lost!
Follow https://github.com/couchbase/docker/issues/83 for more details. If you still want/have to use it, go ahead.

This couchbase docker container provides initialization
via environment variables. Apart from that it is based on
the latest official couchbase ce docker image from docker hub.

The resulting docker image is automatically build on docker hub: https://hub.docker.com/r/cha87de/couchbase-cloudnative/

Usage with docker-compose:

```
version: '2'
services:
    couchbase:
        image: cha87de/couchbase-cloudnative
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

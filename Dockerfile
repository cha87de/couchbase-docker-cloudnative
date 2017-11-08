FROM couchbase
ENV RETRIES_INIT=50\
    RETRIES_ADDBUCKETS=10
ADD ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["couchbase-server"]
CREATE TABLE IF NOT EXISTS %s ON CLUSTER '{cluster}'
(
    date Date DEFAULT toDate(0),
    name String,
    tags Array(String),
    val Float64,
    ts DateTime,
    updated DateTime DEFAULT now()
)
ENGINE = ReplicatedGraphiteMergeTree(
    '/clickhouse/tables/{shard}/prometheus.metrics',
    '{replica}', date, (name, tags, ts), 8192, 'graphite_rollup'
);
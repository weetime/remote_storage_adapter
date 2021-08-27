package clickhouse

import "embed"

//go:embed clickhouse/sqlscripts/*
var EmbeddedScripts embed.FS

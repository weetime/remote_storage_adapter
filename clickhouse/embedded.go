package clickhouse

import "embed"

//go:embed sqlscripts/*
var EmbeddedScripts embed.FS

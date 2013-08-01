#!/bin/bash
# Patch pg_dump to write pretty printed views.
# Fixed in PostgreSQL 9.3.
perl -pae "s/pg_catalog.pg_get_viewdef\('%u'::pg_catalog.oid\)/pg_get_viewdef('%u'::pg_catalog.oid, 120)      /" < /usr/lib/postgresql/9.2/bin/pg_dump > pg_dump
chmod a+rx pg_dump

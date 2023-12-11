PACID
-----

Dumps a PostgreSQL database schema and splits the dump into single files for easy diffing.

A git commit is created automatically as well.

If you know how the "RANCID" software operates, this follows the same model.

Setup:
------

```sh
git init out
```

---

With PostgreSQL <= 9.2, to get nicely formatted view definitions:

```sh
./patch-pg_dump/patch.sh
```

Note that the `patch.sh` script makes an assumption about the PostgreSQL version and the location of the pg_dump binary.


Run:
----

One shot example:

```sh
PATH=.:$PATH PGUSER=user PGDATABASE=database PGPASSWORD=password PGHOST=host ./pacid dest-dir
```


Best put that into a cronjob, like this:

```sh
@daily PATH=.:$PATH PGUSER=user PGDATABASE=database PGPASSWORD=password PGHOST=host ./pacid dest-dir && git push -q
```


PACID
-----

Dumps a PostgreSQL database schema and splits it into single files for easy diffing.
A git commit is created automatically as well.

Setup:
------

git init out

With PostgreSQL <= 9.2, to get nicely formatted view definitions:

    ./patch-pg_dump/patch.sh


(Note that the script makes an assumption about the PostgreSQL version and the location of the pg_dump binary.)


Run:
----

Example:

    PATH=.:$PATH PGUSER=user PGDATABASE=database PGPASSWORD=password PGHOST=host ./pacid out



Best put that into a cronjob, like this:

     @daily PATH=.:$PATH PGUSER=user PGDATABASE=database PGPASSWORD=password PGHOST=host ./pacid out && git push -q


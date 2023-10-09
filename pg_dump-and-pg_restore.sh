DATE="date +%Y_%m_%d_%H%M%S"
pg_dump -Fc -v --host=<host> --username=<name> --dbname=<database name> -f "<database>_${DATE}.dump"
pg_restore -v --no-owner --no-privileges --host=<server name> --port=<port> --username=<user-name> --dbname=<target database name> <database>.dump

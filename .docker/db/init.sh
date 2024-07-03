sleep 30s

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -i ./init.sql
# /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -i /usr/src/app/init.sql

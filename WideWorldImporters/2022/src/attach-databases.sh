#wait for the SQL Server to come up
sleep 15s

echo "****************************************************************************************************"


echo "running set up script"
#run the setup script to create the DB and the schema in the DB
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P P@ssword01 -d master -i AttachDbs.sql

# SQL Server using Docker

Easy access to Microsofts sample databases running locally in docker.

The purpose is to provide reusable demo/development environment leveraging docker for easy of use.

## Available Databases

[Adventure Works](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms)  
[Wide World Importers](https://learn.microsoft.com/en-us/sql/samples/wide-world-importers-what-is?view=sql-server-ver16)

## Prerequistite

These database backfiles are too large to keep in the repository so you will need to download them first:

### Windows

`Invoke-WebRequest -OutFile  ./AdventureWorks/2022/src/databases/AdventureWorks2022.bak -Uri  https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2022.bak`   

`Invoke-WebRequest -OutFile  ./WideWorldImporters\2022\src\databases\WideWorldImporters-Full.bak -Uri https://github.com/Microsoft/sql-server-samples/releases/download/wide-world-importers-v1.0/WideWorldImporters-Full.bak`


### Linux/Mac

`curl -o ./AdventureWorks/2022/src/databases/AdventureWorks2022.bak https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2022.bak`     

`curl -o ./WideWorldImporters\2022\src\databases\WideWorldImporters-Full.bak https://github.com/Microsoft/sql-server-samples/releases/download/wide-world-importers-v1.0/WideWorldImporters-Full.bak`


## Get started

1. Select which sample database to use:
 
    * AdventureWorks in SQL Server 2022   
      `cd .\AdventureWorks\2022`
    * WideWorldImporters in SQL Server 2022     
      `cd .\WideWorldImporters\2022`

2. Build and start the docker container    

    `docker-compose up --build -d`

## Problem Solving

### Problem when running container

You can view the logs of the containers to see any errors:

For example to view the AdventureWorks2022 database logs:   
`docker container logs -f adventureworks2022` 

## Other 

**Connect to database**

`sqlcmd -S localhost -U SA -P 'P@ssword01'`

Example Output:
```sql
1> select name from sys.databases;
2> go
name
------------------
master
tempdb
model
msdb
AdventureWorks2019

(5 rows affected)
1> exit
```

**Stop the docker container**

`docker-compose down`


## Credits

[Simon Stride](https://github.com/SimonStride)
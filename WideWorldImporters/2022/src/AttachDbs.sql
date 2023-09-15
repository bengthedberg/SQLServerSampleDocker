RESTORE DATABASE [WideWorldImporters] FROM  
    DISK = N'/var/opt/mssql/wideworldimporters/databases/WideWorldImporters-Full.bak' 
    WITH  FILE = 1,  
    MOVE N'WWI_Primary' TO N'/var/opt/mssql/data/WWI_Primary.mdf',  
    MOVE N'WWI_Log' TO N'/var/opt/mssql/data/WWI.ldf',  
    MOVE N'WWI_UserData' TO N'/var/opt/mssql/data/WWI_UserData.ndf',  
    MOVE N'WWI_InMemory_Data_1' TO N'/var/opt/mssql/data/WWI_InMemory_Data_1',  
    NOUNLOAD,  STATS = 5
;
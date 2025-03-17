/*
creates a new dB called DataWarehouse after checking to see if it exists. If dB exists it is dropped and recreated. This
script also creates 3 schemas withing the dB called bronze, silver and gold.

Warning:
Running this script will drop the entire dB DataWarehouse if it exists.  All data in DataWarehouse will be deleted, perm-style.
Ensure you have backups PRIOR TO RUNNING THIS SCRIPT
*/
-- drop and create the 'DataWarehouse' database (commands in MySQL)  
IF EXISTS ( SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
  BEGIN
        ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
        DROP DATABASE DataWarehouse;
  END;

CREATE DATABASE DataWarehouse;

use DataWarehouse;
create schema bronze;
create schema silver;
create schema gold;

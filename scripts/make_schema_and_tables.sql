/* CREATE SCHEMA AND THE TABLES IN EACH*/
create schema bronze;
create schema silver;
create schema gold;
CREATE TABLE bronze.CWIT_buy1 (
	buy_date DATE,	
	buy_time TIME,	
	buy_ticker NVARCHAR(50),
	buy_trans nvarchar(50),
	buy_io nvarchar(3),
	buy_asset_price decimal(9,6),
	buy_num_asset INT,
	buy_inv_rsk decimal(9,6),
	buy_chain NVARCHAR(75),
	buy_wallet_cause NVARCHAR(75),
	buy_wallet_effect NVARCHAR(75)

)

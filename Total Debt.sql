SELECT 
	ROUND(SUM(IDS_T.[Debt ($, million)]/1000000),2) AS Total_Debt_Owed
FROM IDS_T
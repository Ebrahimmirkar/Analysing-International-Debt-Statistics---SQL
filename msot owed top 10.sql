SELECT Distinct 
	IDS_T.Country_Name,
	ROUND(MAX(IDS_T.[Debt ($, million)]/1000000),2) AS Maximum_Debt,
	IDS_T.Indicator_Name
FROM IDS_T
GROUP BY  Country_Name, Indicator_Name
ORDER BY  Maximum_Debt DESC
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY

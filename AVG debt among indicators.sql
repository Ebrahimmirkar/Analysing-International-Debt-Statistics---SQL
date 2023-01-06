SELECT
	IDS_T.Indicator_Name,
	IDS_T.Indicator_Code,
	ROUND(AVG(IDS_T.[Debt ($, million)]/1000000),2) AS AVG_DEBT
FROM IDS_T
GROUP BY IDS_T.Indicator_Name, IDS_T.Indicator_Code
ORDER BY AVG_DEBT DESC
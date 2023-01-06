SELECT
	IDS_T.Country_Name,
	IDS_T.Indicator_Name,
	IDS_T.Indicator_Code,
	ROUND(SUM(IDS_T.[Debt ($, million)]/1000000),2) AS REPAYMENTS
FROM IDS_T
WHERE Indicator_Code = 'DT.AMT.DLXF.CD'
GROUP BY IDS_T.Country_Name,IDS_T.Indicator_Name,IDS_T.Indicator_Code
ORDER BY REPAYMENTS DESC
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY;

SELECT 
	COUNT(IDS_T.Indicator_Name) AS Indicator_Frequency,
	IDS_T.Indicator_Name
FROM IDS_T
GROUP BY IDS_T.Indicator_Name 
ORDER BY Indicator_Frequency DESC

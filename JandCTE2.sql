SELECT
	status.station_id,
	stations.name,
	COUNT(CASE WHEN docks_available = 0 THEN 1 END) capacity_count
FROM
	status
JOIN
	stations
ON
	stations.station_id = status.station_id
GROUP BY 1,2
ORDER BY capacity_count DESC
LIMIT 1
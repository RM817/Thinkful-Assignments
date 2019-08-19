SELECT
	t.start_station,
	COUNT(*) AS number_of_starts,
	s.dockcount
FROM
	trips t
JOIN
	stations s
ON
	t.start_station = s.name
GROUP BY 1,3
ORDER BY dockcount
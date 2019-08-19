WITH
	duration_dates
AS (
	SELECT
		MAX(duration) AS duration,
		DATE(start_date) AS date
	
	FROM
		trips
	GROUP BY 2
)
SELECT
	d.duration,
	d.date,
	w.events
FROM
	duration_dates d
JOIN
	weather w
ON
	DATE(d.date) = DATE(w.date)
WHERE
	events = 'Rain'
GROUP BY 1,2,3
ORDER BY 2
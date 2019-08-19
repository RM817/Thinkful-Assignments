WITH
	rainydays
AS (
	SELECT
		DATE(date) AS rainyday
	FROM
		weather
	WHERE
		events = 'Rain'
	GROUP BY 1
)
SELECT
	DATE(t.start_date),
	t.duration
FROM
	trips t
JOIN
	rainydays r
ON
	DATE(t.start_date) = r.rainyday
ORDER BY duration DESC
LIMIT 3
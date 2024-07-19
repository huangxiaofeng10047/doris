SELECT count(), cast(repo["name"] as string) FROM github_events WHERE type = 'WatchEvent' GROUP BY cast(repo["name"] as string) ORDER BY length(cast(repo["name"] as string)) DESC, cast(repo["name"] as string) LIMIT 50

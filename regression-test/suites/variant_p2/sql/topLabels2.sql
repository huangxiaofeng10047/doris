-- SELECT
--     label,
--     count() AS c
-- FROM github_events
-- LATERAL VIEW explode_split(cast(payload:labels as string), ',') t AS label
-- WHERE (type IN ('IssuesEvent', 'PullRequestEvent', 'IssueCommentEvent')) AND (cast(payload:action as string) IN ('created', 'opened', 'labeled')) AND ((lower(label) LIKE '%bug%') OR (lower(label) LIKE '%feature%'))
-- GROUP BY label
-- ORDER BY c DESC
-- LIMIT 50

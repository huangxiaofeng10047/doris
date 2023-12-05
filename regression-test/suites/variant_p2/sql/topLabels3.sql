-- SELECT
--     sum(bug) AS bugs,
--     sum(feature) AS feature,
--     sum(bug) / sum(feature) AS ratio
-- FROM
-- (
--     SELECT
--         CASE WHEN lower(cast(payload:labels as string)) LIKE '%bug%' THEN 1 ELSE 0 END AS bug,
--         CASE WHEN lower(cast(payload:labels as string)) LIKE '%feature%' THEN 1 ELSE 0 END AS feature
--     FROM github_events
--     LATERAL VIEW explode_split(cast(payload:labels as string), ',') t AS label
--     WHERE (type IN ('IssuesEvent', 'PullRequestEvent', 'IssueCommentEvent')) AND (cast(payload:action as string) IN ('created', 'opened', 'labeled')) AND ((lower(label) LIKE '%bug%') OR (lower(label) LIKE '%feature%'))
-- ) t
-- LIMIT 50

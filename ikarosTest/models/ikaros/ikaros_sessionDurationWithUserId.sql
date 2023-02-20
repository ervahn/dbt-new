-- Assume latest timestamp is end of session
-- Assume earliest timestamp is start of session
-- Both based on anonymous_id

SELECT distinct anonymous_id, max(timestamp) over (partition by anonymous_id) as endSession, min(timestamp) over (partition by anonymous_id) as startSession from {{ref('ikaros_allRowsFilterWithUserId')}}
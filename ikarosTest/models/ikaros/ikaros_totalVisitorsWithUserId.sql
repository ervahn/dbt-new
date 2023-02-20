-- WILL NOT include anonymous_id without user_id

select count(distinct user_id) as total_visitors
FROM {{ref('ikaros_allRows')}}
where user_id != ''
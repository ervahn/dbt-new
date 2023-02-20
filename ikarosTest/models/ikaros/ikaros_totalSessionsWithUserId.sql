

select count(distinct anonymous_id) as total_sessions 
FROM {{ref('ikaros_allRows')}}
where user_id != ''
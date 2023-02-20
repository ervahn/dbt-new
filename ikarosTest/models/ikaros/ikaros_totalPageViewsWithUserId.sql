-- Total number of page views not including anon_id

SELECT count(*) as total_page_views FROM {{ref('ikaros_allRows')}} where user_id != ''
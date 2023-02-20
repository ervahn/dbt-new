-- Does not include rows without user_id but anon_id has both user_id and non_user_id pair
-- EXAMPLE: SELECT x.* FROM ikarosTest.ikaros_pages x where anonymous_id = '0e0167f88d52c91e24faa5f0634c512f';
select count(*) as total_page_views 
FROM {{ref('ikaros_allRows')}}
where anonymous_id not in (select * from {{ref('ikaros_anonId_In_UserId')}})
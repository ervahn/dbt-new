-- All rows where it does not include rows without user_id but anon_id has both user_id and non_user_id pair
-- EXAMPLE: SELECT x.* FROM ikarosTest.ikaros_pages x where anonymous_id = '0e0167f88d52c91e24faa5f0634c512f';


Select * from {{ref('ikaros_allRows')}} where user_id != ''
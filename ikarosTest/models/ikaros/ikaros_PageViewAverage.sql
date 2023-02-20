-- Average does not include rows without user_id but anon_id has both user_id and non_user_id pair
-- EXAMPLE: SELECT x.* FROM ikarosTest.ikaros_pages x where anonymous_id = '0e0167f88d52c91e24faa5f0634c512f';

Select ((cast(a.pageViewTotal as float))/(cast(b.visitorTotal as float))) as pageViewAverage from {{ref('ikaros_totalPageViewSum')}} a,{{ref('ikaros_totalVisitorsSum')}} b
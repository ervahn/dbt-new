ASSUMPTIONS MADE:

-- ROWS calculated does not include rows without user_id but anon_id has both user_id and non_user_id pair

-- EXAMPLE: SELECT x.* FROM ikarosTest.ikaros_pages x where anonymous_id = '0e0167f88d52c91e24faa5f0634c512f';

For Duration:
-- Assume latest timestamp is end of session
-- Assume earliest timestamp is start of session
-- Both based on anonymous_id

ANSWERS:
1.a. Total Unique Visitors = 1332
1.b. Total Sessions = 1358
1.c. Total Page Views = 4872
2.a. Average Page Views per Visitor = 3.6576576576576576
2.b. Average Sessions per Visitor = 1.0195195195195195
3. Average Session Duration = 4428.915126656848 seconds or 73.81525211094747 minutes

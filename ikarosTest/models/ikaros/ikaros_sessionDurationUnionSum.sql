Select (EXTRACT (epoch from (CAST(a.endSession as timestamp))) - EXTRACT (epoch from (CAST(a.startSession as timestamp)))) as sessionDuration from {{ref('ikaros_sessionDurationWithoutUserId')}} a

union all

Select (EXTRACT (epoch from (CAST(b.endSession as timestamp))) - EXTRACT (epoch from (CAST(b.startSession as timestamp)))) as sessionDuration from {{ref('ikaros_sessionDurationWithUserId')}} b
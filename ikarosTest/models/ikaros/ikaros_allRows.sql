
with allRows as (
    select * from {{source('ikarosData','ikaros_pages')}}
),

final as (
    Select * from allRows
)

Select * from final
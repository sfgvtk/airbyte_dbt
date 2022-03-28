{{ config(materialized='table') }}

with source_order as (

    select u_id, sum(amount)
    from {{ ref('order_model') }}
    group by u_id

)

select *
from source_order
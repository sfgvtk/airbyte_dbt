{{ config(materialized='table') }}

with source_order as (

    select orders.id, orders.amount, orders.goods_id,
     users.id as u_id, users.name, users.age
    from {{ source('a_dest', 'order') }} as orders
    left join {{ source('a_dest', 'user') }} as users on orders.user_id = users.id

)

select *
from source_order
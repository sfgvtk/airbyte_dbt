{{ config(materialized='table') }}

with source_user as (

    select *
    from {{ source('a_dest', 'user') }}

)

select *
from source_user
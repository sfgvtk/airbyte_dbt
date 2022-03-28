{{ config(materialized='table') }}

with source_user as (

    select *
    from {{ source('public', 'user') }}

)

select *
from source_user
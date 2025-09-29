{{
    config(
        materialized='view'
    )
}}


select * from {{ source('s1', 'employeeses') }}
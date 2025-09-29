{{
    config(
        materialized='table'
    )
}}

SELECT 
    c.c_name,
    c.c_address,
    n.n_name
FROM {{ source('s1', 't_customer') }} c
JOIN {{ source('s1', 't_nation') }} n 
    ON c.c_nationkey = n.n_nationkey
WHERE n.n_name = 'INDIA'



{{

    config(
    materialized = 'view')

}}

WITH stg_hosts AS (

    SELECT * 
    FROM {{ ref('stg_hosts')}}

)

SELECT
    CREATED_AT,
    HOST_ID,
    IS_SUPERHOST,
    NVL(
        HOST_NAME,
        'Anonymous'
    ) AS HOST_NAME, -- if null, use Anonymous
    UPDATED_AT
FROM
    stg_hosts

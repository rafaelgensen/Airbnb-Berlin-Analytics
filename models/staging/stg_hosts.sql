with raw_listings as (
    select *
    from {{ source('staging', 'RAW_HOSTS') }}
)

select 
    CREATED_AT,
    ID AS HOST_ID,
    IS_SUPERHOST,
    NAME AS HOST_NAME,
    UPDATED_AT
from raw_listings



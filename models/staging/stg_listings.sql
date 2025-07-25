
with raw_listings as (
    select *
    from {{ source('staging', 'RAW_LISTINGS') }}
)

select 
    id AS LISTING_ID,
    name AS LISTING_NAME,
    listing_url AS LISTING_URL,
    room_type AS ROOM_TYPE,
    minimum_nights AS MINIMUM_NIGHTS,
    host_id AS HOST_ID,
    price AS PRICE_STR,
    created_at AS CREATED_AT,
    updated_at AS UPDATED_AT
from raw_listings


with raw_listings as (
    select *
    from {{ source('staging', 'RAW_REVIEWS') }}
)

select 
    COMMENTS AS REVIEW_TEXT,
    DATE AS REVIEW_DATE,
    LISTING_ID,
    REVIEWER_NAME,
    SENTIMENT AS REVIEW_SENTIMENT
from raw_listings

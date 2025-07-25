USE ROLE ACCOUNTADMIN

CREATE ROLE IF NOT EXISTS REPORTER

CREATE USER IF NOT EXISTS PRESET PASSWORD='presetPassword123' LOGIN_NAME='preset' MUST_CHANGE_PASSWORD=FALSE DEFAULT_WAREHOUSE='COMPUTE_WH' DEFAULT_ROLE=REPORTER DEFAULT_NAMESPACE='AIRBNB.DEV' COMMENT='Preset user for creating reports'

GRANT ROLE REPORTER TO USER PRESET

GRANT ROLE REPORTER TO ROLE ACCOUNTADMIN

GRANT ALL ON WAREHOUSE COMPUTE_WH TO ROLE REPORTER

GRANT USAGE ON DATABASE AIRBNB TO ROLE REPORTER

GRANT USAGE ON FUTURE SCHEMAS IN DATABASE AIRBNB TO ROLE REPORTER;

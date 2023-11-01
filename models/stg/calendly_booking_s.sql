   SELECT FIRST_NAME AS FIRST_NM,
    LAST_NAME AS LAST_NM,
    EMAIL AS EMAIL_ADDR_TXT,
    date(to_timestamp_ntz(START_DATE,'dd-mon-yyyy')) AS START_DTM,
    LOCATION AS LOCATION_TXT,
    SALESFORCE_ID as SALESFORCE_ID,
    CANCELLED as CANCELLED_FL, 
    date(to_timestamp_ntz(LAST_UPDATED_DATE,'dd-mon-yyyy')) AS LAST_UPDATED_DTM 
    FROM {{ source('patient_sources', 'calendly_booking') }}
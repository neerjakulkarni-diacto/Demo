    SELECT CASE_ID AS CASE_ID,
    PATIENT_ID AS PATIENT_ID,
    EMAIL AS EMAIL_ADDR_TXT,
    PHONE AS PHONE_NBR,
    BIRTH_YEAR AS BIRTH_YEAR_DT,
    PRACTICE_ID AS PRACTICE_ID,
    DENTIST_ID AS DENTIST_ID,
    CHECKOUT_URL AS CHECKOUT_URL_TXT,
    date(to_timestamp_ntz(SCAN_EXPIRATION_DATE,'dd-mon-yyyy')) AS SCAN_EXPIRATION_DTM,
    date(to_timestamp_ntz(SCAN_UPLOAD_DATE,'dd-mon-yyyy')) AS SCAN_UPLOAD_DTM,
    date(to_timestamp_ntz(ORDER_SUBMITTED_DATE,'dd-mon-yyyy')) AS ORDER_SUBMITTED_DTM,
    date(to_timestamp_ntz(ORDER_PAID_DATE,'dd-mon-yyyy')) AS ORDER_PAID_DTM,
    ALIGNER_MFG_STATUS AS ALIGNER_MFG_STATUS_FL,
    date(to_timestamp_ntz(ALIGNER_MFG_START_DATE,'dd-mon-yyyy')) AS ALIGNER_MFG_START_DTM,
    date(to_timestamp_ntz(ALIGNER_MFG_SHIP_DATE,'dd-mon-yyyy')) AS ALIGNER_MFG_SHIP_DTM,
    RETAINER_MFG_STATUS AS RETAINER_MFG_STATUS_FL,
    date(to_timestamp_ntz(RETAINER_MFG_START_DATE,'dd-mon-yyyy')) AS RETAINER_MFG_START_DTM,
    date(to_timestamp_ntz(RETAINER_MFG_SHIP_DATE,'dd-mon-yyyy')) AS RETAINER_MFG_SHIP_DTM,
    CASE_DISPOSITION AS CASE_DISPOSITION_TXT,
    ALIGNER_TRACKING_ID AS ALIGNER_TRACKING_ID,
    RETAINER_TRACKING_ID AS RETAINER_TRACKING_ID,
    LANGUAGE AS LANGUAGE_PREF_TXT,
    COUNTRY AS COUNTRY_NM,
    GLOBAL_OPT AS GLOBAL_OPT_IN_IND,
    date(to_timestamp_ntz(GLOBAL_OPT_IN_DATE,'dd-mon-yyyy')) AS GLOBAL_OPT_IN_DTM,
    date(to_timestamp_ntz(CREATED_DATE,'dd-mon-yyyy')) AS CREATED_DTM,
    date(to_timestamp_ntz(LAST_UPDATED_DATE,'dd-mon-yyyy')) AS LAST_UPDATED_DTM,
    ALREADY_EXIST AS ALREADY_EXIST_FL
    FROM {{ source('patient_sources', 'case_status') }} 
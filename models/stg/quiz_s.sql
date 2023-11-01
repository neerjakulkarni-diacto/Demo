    SELECT FIRST_NAME AS FIRST_NM,
	EMAIL AS EMAIL_ADDR_TXT,
	ZIP_CODE AS ZIP_CD,
	GLOBAL_OPT_IN AS GLOBAL_OPT_IN_IND,
	ACQUISITION_SOURCEURL AS ACQUISITION_SOURCEURL_TXT,
	AGE AS AGE_RANGE_TXT,
	DENTAL_HISTORY AS DENTAL_HISTORY_TXT,
	date(to_timestamp_ntz(TREATMENT_START_DATE,'dd-mon-yyyy')) AS TREATMENT_START_TIME_TXT,
	INFORMATION_REQUEST AS INFORMATION_REQUEST_TXT,
	HOW_DID_YOU_HEAR_ABOUT_US AS HOW_DID_YOU_HEAR_ABOUT_US_TXT,
	date(to_timestamp_ntz(SUBMISSION_DATE,'dd-mon-yyyy')) AS SUBMISSION_DATE_OPTIN_DTM,
	LANGUAGE AS LANGUAGE_PREF_TXT,
	COUNTRY AS COUNTRY_NM,
	date(to_timestamp_ntz(CREATED_DATE,'dd-mon-yyyy')) AS CREATED_DTM,
	date(to_timestamp_ntz(LAST_UPDATED_DATE,'dd-mon-yyyy')) AS LAST_UPDATED_DTM,
	ALREADYEXISTS AS ALREADYEXISTS_FL,
	QUIZ_COMPLETED AS QUIZ_COMPLETE_IND
    FROM {{ source('patient_sources', 'quiz') }} 
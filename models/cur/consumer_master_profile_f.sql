{{
  config(materialized = 'incremental',
    database = 'COLGATE',
    schema = 'CUR_PATIENTS',
    unique_key = ['EMAIL_ADDR_TXT'],
    warehouse = 'COMPUTE_WH'    
    )
}}
with delta_stage_data as
(    SELECT
        *,ROW_NUMBER() OVER(PARTITION BY EMAIL_ADDR_TXT
                   ORDER BY EMAIL_ADDR_TXT) as rn
 
    FROM {{ ref('consumer_master_profile_s') }} AS C
    qualify rn =1 )
   
    select * exclude(rn), {{ surrogate_key(['EMAIL_ADDR_TXT', 'ACQUISITION_SOURCE_TXT']) }} as sk from delta_stage_data
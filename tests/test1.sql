with

source as 
(select * from {{ ref('consumer_master_profile_f') }})
select EMAIL_ADDR_TXT, sum (ACQUISITION_SOURCE_TXT) as total from source
group by EMAIL_ADDR_TXT 
having total > 1
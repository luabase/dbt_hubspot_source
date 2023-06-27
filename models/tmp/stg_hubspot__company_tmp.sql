{{ config(enabled=fivetran_utils.enabled_vars(['hubspot_sales_enabled','hubspot_company_enabled'])) }}

select 
    *,
    case
        when property_total_money_raised like '%M' then split(REGEXP_REPLACE(property_total_money_raised, '[$,,]', ''), 'M')[0]::float
        when property_total_money_raised like '%K' then split(REGEXP_REPLACE(property_total_money_raised, '[$,,]', ''), 'K')[0]::float / 1000
    end as property_total_money_raised_cleaned,
    property_funding_m_
from {{ var('company') }}

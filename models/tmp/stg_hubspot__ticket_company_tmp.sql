{{ config(enabled=var('hubspot_service_enabled', False)) }}

select *
from {{ var('ticket_company') }}

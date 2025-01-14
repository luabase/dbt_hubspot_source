{% macro get_engagement_call_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},
    {"name": "body", "datatype": dbt.type_string()},
    {"name": "callee_object_id", "datatype": dbt.type_int()},
    {"name": "callee_object_type", "datatype": dbt.type_string()},
    {"name": "disposition", "datatype": dbt.type_string()},
    {"name": "duration_milliseconds", "datatype": dbt.type_int()},
    {"name": "engagement_id", "datatype": dbt.type_int()},
    {"name": "external_account_id", "datatype": dbt.type_string()},
    {"name": "external_id", "datatype": dbt.type_string()},
    {"name": "from_number", "datatype": dbt.type_string()},
    {"name": "recording_url", "datatype": dbt.type_string()},
    {"name": "status", "datatype": dbt.type_string()},
    {"name": "to_number", "datatype": dbt.type_string()},
    {"name": "transcription_id", "datatype": dbt.type_int()},
    {"name": "unknown_visitor_conversation", "datatype": "boolean"}
] %}

{{ return(columns) }}

{% endmacro %}

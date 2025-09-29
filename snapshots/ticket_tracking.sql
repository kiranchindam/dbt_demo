{% snapshot ticket_tracking %}
    {{
        config(
            target_schema='dbt_kchindam',
            target_database='practice',
            unique_key='ticket_id',
            strategy='check',
            check_cols=['ticket_status']
        )
    }}

    select * from {{ ref('ticket_status') }}
 {% endsnapshot %}
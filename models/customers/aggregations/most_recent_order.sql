{{ config(
    materialized='aggregation',
    activity_name='placed_order',
    attribute='activity_at',
    aggfunc='max',
    after_timestamp=none,
    before_timestamp=none
)}}

{{ dbt_activity_schema.build_aggregation(ref('customer_activity_stream')) }}

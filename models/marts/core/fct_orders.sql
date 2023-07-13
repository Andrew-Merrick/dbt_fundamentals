/*
{{
    config(
        materialized='table'
    )
}}
*/

with orders as (
    select * from {{ ref ('stg_orders')}}
),

payments as (
    select * from {{ ref ('stg_payments')}}
),

final as (
    select
        orders.order_id,
        orders.customer_id,
        sum(payment_amount) as amount
    from orders
    left join payments using (order_id)
    group by orders.order_id, orders.customer_id
    order by orders.order_id
)

select * from final
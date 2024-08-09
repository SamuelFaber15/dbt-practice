select 
ord.order_id
,ord.customer_id
,pay.amount
from {{ ref('stg_jaffle_shop__orders') }} as ord
inner join {{ ref('stg_stripe__payments') }} as pay
    on ord.order_id = pay.order_id
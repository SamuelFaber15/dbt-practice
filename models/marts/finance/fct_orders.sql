select 
ord.order_id
,ord.customer_id
,pay.amount
from stg_jaffle_shop__orders as ord
inner join stg_stripe__payments as pay
    on ord.order_id = pay.order_id
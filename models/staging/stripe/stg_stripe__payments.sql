select 
id as payment_id
,OrderID AS order_id
,PaymentMethod as payment_method
,status
,amount / 100 as amount
,created as created_dt
,_batched_at as _batched_at_dts
from {{ source('stripe', 'payment') }}
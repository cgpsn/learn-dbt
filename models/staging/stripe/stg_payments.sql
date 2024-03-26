SELECT id as payment_id,
       orderid as order_id, 
       amount / 100.0 as amount,
       paymentmethod as payment_method,
       status
  FROM {{ source('stripe', 'payment') }}
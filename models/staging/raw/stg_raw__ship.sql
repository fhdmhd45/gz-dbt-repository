with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        cast(orders_id as string) orders_id,
        cast(shipping_fee as float64) as shipping_fee,
        cast(logcost as float64) logcost,
        cast(ship_cost as int64) ship_cost

    from source

)

select * from renamed

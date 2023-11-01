with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        CAST(date_date as date) date,
        CAST(orders_id as string) orders_id,
        CAST(pdt_id as string) products_id,
        CAST(revenue as float64) revenue,
        CAST(quantity as int64) quantity

    from source

)

select * from renamed

with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        cast(products_id as string) products_id,
        cast(purchse_price as float64) purchase_price


    from source

)

select * from renamed

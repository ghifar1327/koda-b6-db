# Coffee Shop ERD (ENTITY RELATIONSHIP DIAGRAM)

```mermaid
erDiagram

    USERS ||--o{ROLE : has
    USERS ||--o{ TRANSACTIONS : makes
    USERS {
        string id pk 
        string full_name
        string picture
        string  email
        string password
        string phone
        string addres 
        string role_id
        timestamp create_at
        timestamp update_at
    }
    ROLE {
        int id
        string role
    }

    
    TRANSACTIONS ||--o{ METHODS : has
    TRANSACTIONS ||--o{ TRANSACTIONS_DETAIL : contains
    TRANSACTIONS {
        int id PK
        int user_id FK
        string status
        string payment_method
        int id_methode
        timestamp created_at
    }

    TRANSACTIONS_DETAIL {
        int id PK
        int transaction_id FK
        int product_id FK
        int size_id Fk
        int variant_id Fk
        int quantity
    }



    PRODUCTS ||--O{ PRODUCTS_CATEGORIES : has
    PRODUCTS ||--o{ TRANSACTIONS_DETAIL : ordered
    PRODUCTS ||--o{ PRODUCT_IMAGES : has
    PRODUCTS {
        int id pk
        string name
        string description
        int price
        int stock
        timestapm create_at
        timestapm update_at
    }

    CATEGORIES ||--o{ PRODUCTS_CATEGORIES : has
    CATEGORIES {
        int id PK
        string name
    }
    PRODUCTS_CATEGORIES{
        int product_id FK
        int catagory_id FK
    }

    METHODS {
        int id PK
        string name
        int add_price
    }

    SIZES ||--o{ TRANSACTIONS_DETAIL : avaliable_in
    SIZES {
        int id PK
        string name 
        int add_price
    }


    VARIANT ||--O{ TRANSACTIONS_DETAIL : available_in
    VARIANT {
        int id PK
        string name
        int add_price
    }

    IMAGES ||--o{ PRODUCT_IMAGES : available_in
    IMAGES{
        int id PK
        int url
    }
    PRODUCT_IMAGES{
        int product_id FK
        int image_id FK
    }
    TRANSACTIONS_DETAIL ||--O| TESTIMONY : has
    TESTIMONY{
        int id PK
        string user_id FK
        int id_tansactions_detail FK
        desimal reting
        string message 
    }

    DISCOUNT ||--O{ PRODUCTS : available
    DISCOUNT {
        int id PK
        int product_id FK
        decimal discount_percent
        string description
        boolean is_Flash_sale
        date start_date
        date end_date
    }

    VOUCHER ||--O{TRANSACTIONS : has
    VOUCHER {
        int id pk
        string name
        double discount
        boolean is_apply
        date start_date
        date end_date 
        
    }
```
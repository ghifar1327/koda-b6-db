# Coffee Shop ERD (ENTITY RELATIONSHIP DIAGRAM)

```mermaid
erDiagram




    USERS ||--o{ TRANSACTIONS : makes
    USERS {
        string id pk 
         string name
         string  email
         string password
         string phone
         string addres 
         string role
         timestamp create_at
         timestamp update_at
    }

    TRANSACTIONS ||--o{ ORDER_DETAILS : contains
    TRANSACTIONS ||--o{ ORDER_HISTORY : has
    TRANSACTIONS {
        int id PK
        int user_id FK
        int total_price
        string status
        string payment_method
        timestamp created_at
    }

    ORDER_DETAILS {
        int id PK
        int transaction_id FK
        int product_id FK
        string size
        int quantity
        int price
        int subtotal
    }

    ORDER_HISTORY {
        int id PK
        int transaction_id FK
        string status
        timestamp changed_at
    }

    PRODUCTS ||--o{ PRODUCT_SIZES : has
    PRODUCTS ||--o{ ORDER_DETAILS : ordered
    PRODUCTS ||--o{ PRODUCT_IMAGES : has
    PRODUCTS ||--o{ PRODUCT_METHODS : available_in
    PRODUCTS {
        int id pk
        string name
        string catagory
        string description
        decimal rating
        int price
        decimal discount_persent
        int seles
        int stock
        timestapm create_at
        timestapm update_at
    }

    CATEGORIES ||--o{ PRODUCTS : has
    CATEGORIES {
        int id PK
        string name
    }
    
    METHODS  ||--o{ PRODUCT_METHODS : used_in
    METHODS {
        int id PK
        string name
    }
    PRODUCT_METHODS {
        int product_id FK
        int method_id FK
    }

    SIZES ||--o{ PRODUCT_SIZES : avaliable_at
    SIZES {
        int id PK
        string name 
    }
    PRODUCT_SIZES{
        int product_id FK
        int size_id FK
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
    TESTIMONY{
        int id PK
        string user_id FK
        desimal reting
        string message 
    }
```
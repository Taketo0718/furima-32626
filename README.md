# テーブル設計

## users テーブル

| Column               | Type    | Options     |
| -------------------- | ------- | ----------- |
| nickname             | string  | null: false |
| email                | string  | null: false |
| password             | string  | null: false |
| last_name_zenkaku    | string  | null: false |
| first_name_zenkaku   | string  | null: false |
| last_name_katakana   | string  | null: false |
| first_name_katakana  | string  | null: false |
| birth_year           | integer | null: false |
| birth_month          | integer | null: false |
| birth_day            | integer | null: false |

### Association

- has_many :items
- has_many :sales
- has_many :addresses

## items テーブル

| Column                 | Type    | Options     |
| -----------------------| ------- | ----------- |
| image                  | string  | null: false |
| name                   | string  | null: false |
| description            | text    | null: false |
| category_id            | integer | null: false |
| condition_id           | integer | null: false |
| fee_payer_id           | integer | null: false |
| deliver_from_id        | integer | null: false |
| days_until_delivery_id | integer | null: false |
| price                  | integer | null: false |

### Association

- belongs_to :user
- has_one :sale
- has_one :address

## sales テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| item_id  | references | null: false, foreign_key: true |
| buyer_id | integer    | null: false                    |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## addresses テーブル

| Column  | Type       | Options                        |
| ------- | -----------| ------------------------------ |
| sale_id | references | null: false, foreign_key: true |
| address | string     | null: false                    |

### Association

- belongs_to :user
- belongs_to :item
- belongs_to :sale
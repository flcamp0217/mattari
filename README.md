
## Users テーブル
| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: true  |
| income             | integer | null: true  |
| cost               | integer | null: true  |
| goal               | string  | null: true  |
| like_item          | string  | null: true  |
| like_price         | integer | null: true  |
| like_unit          | string  | null: true  |
### Association
- has_many : items


## Items テーブル
|Column                     |Type             |Options                          |
|---------------------------|-----------------|---------------------------------|
|day                        |string           |null : true                      |
|item_name                  |text             |null : true                      |
|category_id                |integer          |null : true                      |
|money                      |integer          |null : false                     |
- belongs_to: user
# アプリケーション名
まったり家計簿
# アプリケーション概要
家計簿を付けてみたいと思っているが敷居が高いと感じている人向けのアプリ。「初級」「中級」「上級」と書き込む内容を徐々に増やし、子供から大人まで幅広く挑戦してもらえるアプリを目指しています。(現在、初級編を作成中)
# URL
https://mattari.onrender.com
# ログインID.パスワード
ID：mattari
<br>PASS：Kake1bo

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
|day                        |date             |null : true                      |
|item_name                  |text             |null : true                      |
|category_id                |integer          |null : true                      |
|money                      |integer          |null : false                     |
|user                       |references       |null: false, foreign_key: true   |
- belongs_to: user
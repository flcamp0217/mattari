# アプリケーション名
まったり家計簿
# アプリケーション概要
家計簿を付けてみたいと思っているが敷居が高いと感じている人向けのアプリ。「初級」「中級」「上級」と書き込む内容を徐々に増やし、子供から大人まで幅広く挑戦してもらえるアプリを目指しています。(現在、初級編を作成中)
# 実装したい機能
・登録数に応じて、又はログインごとにランダムでひよこのサイズが変わる遊び心要素<br>
・ユーザーの好きなものとその金額を登録し、その金額で貯金額を表示する機能。(例、現在ラーメン10杯分(¥15000)貯金!)<br>
・登録数に応じてアイコンが変えられる要素。又、中級、上級難易度の家計簿のアンロック機能。
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
roomanager DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false ,unique: true|
|email|string|null: false , unique: true|
|password|string|null: false , unique: true|
### Association
- has_many :rooms
- has_many :items

## roomsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key :true|
|room_name|string|null: false|
|room_cost|integer|null:false|
|room_change|date|null:false|
|room_img|text||
### Association
- belongs_to :user
- has_many :items

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key :true|
|room_id|integer|foreign_key :true|
|item_name|string|null: false|
|item_cost|integer|null:false|
|item_change|date|null:false|
|item_img|text||
### Association
- belongs_to :user
- belongs_to :room
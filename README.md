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
|name|string|null: false|
|cost|integer|null:false|
|change|date|null:false|
|img|text||
### Association
- belongs_to :user
- has_many :items

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|foreign_key :true|
|room_id|integer|foreign_key :true|
|name|string|null: false|
|cost|integer|null:false|
|change|date|null:false|
|img|text||
### Association
- belongs_to :user
- belongs_to :room
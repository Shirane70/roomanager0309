roomanager DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false ,unique: true|
|buddget|integer|null: false|
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
### Association
- belongs_to :user
- belongs_to :room
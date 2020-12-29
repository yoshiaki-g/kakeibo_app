# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users テーブル

| Column             | Type    | Options                  |
| ------------------ | ------- | ------------------------ |
| name               | string  | null: false              |
| email              | string  | null: false unique: true |
| encrypted_password | string  | null: false              |
| birthday           | date    | null: false              |

### Association

- has_many :items


## items テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| date     | date       | null: false                    |
| value    | integer    | null: false                    |
| user     | references | null: false, foreign_key: true |
| type     | references | null: false, foreign_key: true |
| category | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :type
- belongs_to :category


##  type テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| spending      | string | null: false, foreign_key: true |
| income        | string | null: false, foreign_key: true |
| savings       | string | null: false, foreign_key: true |

### Association

- has_many :items


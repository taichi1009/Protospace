# Protospace DB設計

## products table
|カラム名|データ型|
|:--|:--|
|id|integer|
|title|string|
|text|text|
|concept|text|
|catchcopy|text|
|user_id|references|

### モデル間のアソシエーション
- product belongs_to :user <br>
- product has_many :comments <br>
- product has_many :images <br>
- product has_many :likes  <br>

## Users table
|カラム名|データ型|
|:--|:--|
|id|integer|
|nickname|string|
|email|string|
|password|string|
|avatar|string|
|member_of|string|
|profile|text|
|works|string|

### モデル間のアソシエーション
- user has_many :products <br>
- user has_many :comments <br>
- user has_many :likes <br>

## comments table
|カラム名|データ型|
|:--|:--|
|id|integer|
|user_id|references|
|product_id|references|
|text|text|

### モデル間のアソシエーション
- comment belongs_to :user <br>
- comment belongs_to :product <br>

## likes table
|カラム名|データ型|
|:--|:--|
|id|integer|
|user_id|references|
|product_id|references|

### モデル間のアソシエーション
- like belongs_to :user <br>
- like belongs_to :product <br>

## images table
|カラム名|データ型|
|:--|:--|
|id|integer|
|image|text|
|product_id|references|

### モデル間のアソシエーション
- image belongs_to :product <br>

## 機能 
会員登録機能<br>
ページ機能 <br>
comment 機能 <br>
tags機能 <br>
likes機能 <br>
投稿機能 <br>
投稿一覧機能 <br>


テーブル設計

## userテーブル
|・Column     |Type    |Options |
_______________________________
|・email      |string  |NOT NULL|
|・password   |string	 |NOT NULL|
|・name       |string  |NOT NULL|
|・profile    |text    |NOT NULL|
|・occupation |text    |NOT NULL|
|・position   |text    |NOT NULL|

## prototypeテーブル
|・Column        |Type                     |Options |
____________________________________________________
|・title         |string                   |NOT NULL|
|・catch_copy    |text                     |NOT NULL|
|・concept       |text                     |NOT NULL|
|・image         |(ActiveStorageで実装)    |NOT NULL|
|・user          |references               |NOT NULL|


## commentsテーブル
|・Column        |Type                     |Options |
____________________________________________________
|・text            |text                   |NOT NULL|
|・user            |references             |NOT NULL|
|・prototype       |references             |NOT NULL|


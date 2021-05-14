テーブル設計


## userテーブル
_______________________________
|・Column     |Type    |Options |
|・email      |string  |NOT NULL|
|・password   |string	 |NOT NULL|
|・name       |string  |NOT NULL|
|・profile    |text    |NOT NULL|
|・occupation |text    |NOT NULL|
|・position   |text    |NOT NULL|



## prototypeテーブル
____________________________________________________
|・Column        |Type                     |Options |
|・title         |string                   |NOT NULL|
|・catch_copy    |text                     |NOT NULL|
|・concept       |text                     |NOT NULL|
|・image         |(ActiveStorageで実装)    |NOT NULL|
|・user          |references               |NOT NULL|




## commentsテーブル
____________________________________________________
|・Column        |Type                     |Options |
|・text            |text                   |NOT NULL|
|・user            |references             |NOT NULL|
|・prototype       |references             |NOT NULL|


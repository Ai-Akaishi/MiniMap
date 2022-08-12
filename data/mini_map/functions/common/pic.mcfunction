#> mini_map:common/pic
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# data modify entity @s Item.tag.data set value ['{"text":"3"}']
data modify entity @s Item.tag.pic set value {}

data modify storage mini_map: pic[-1] append value '{"text":"3"}'
### 地下を追加
function mini_map:common/append_d0

### 影初期化
data modify storage mini_map: darken set value []
### 目線が小物なら追加
execute unless block ~ ~ ~ #mini_map:full positioned ~ ~01 ~ unless block ~ ~ ~ #mini_map:full run function mini_map:common/append
### もしもまだフルブロックなら地上を追加する
execute if block ~ ~ ~ #mini_map:full positioned ~ ~01 ~ run function mini_map:common/append_u1

### データを取り出す
data modify storage mini_map: tmp_pic set from entity @s Item.tag.pic

data modify storage mini_map: pic[-1] append from storage mini_map: tmp_pic.d6
data modify storage mini_map: pic[-1] append from storage mini_map: tmp_pic.d5
data modify storage mini_map: pic[-1] append from storage mini_map: tmp_pic.d4
data modify storage mini_map: pic[-1] append from storage mini_map: tmp_pic.d3
data modify storage mini_map: pic[-1] append from storage mini_map: tmp_pic.d2
data modify storage mini_map: pic[-1] append from storage mini_map: tmp_pic.d1
data modify storage mini_map: pic[-1] append from storage mini_map: tmp_pic.d0
data modify storage mini_map: pic[-1] append from storage mini_map: tmp_pic.u1
data modify storage mini_map: pic[-1] append from storage mini_map: tmp_pic.u2
data modify storage mini_map: pic[-1] append from storage mini_map: tmp_pic.u3
### 山の影をつける
data modify storage mini_map: pic[-1] append from storage mini_map: darken[]

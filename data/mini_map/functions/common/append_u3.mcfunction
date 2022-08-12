#> mini_map:common/append_u3
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

item modify entity @s container.0 mini_map:id_u3
# data modify storage mini_map: pic[-1] append from entity 0-0-29-0-9b Item.tag.display.Name
data modify storage mini_map: darken append value '{"text":",,,,1","color":"black"}'
### 最後までブロックたっぷりだったら周囲を確認し、埋まっていたら黒にする
execute if block ~ ~00 ~ #mini_map:full positioned ~-1 ~ ~ unless predicate mini_map:can_see_through positioned ~1 ~ ~-1 unless predicate mini_map:can_see_through positioned ~ ~ ~2 unless predicate mini_map:can_see_through positioned ~1 ~ ~-1 unless predicate mini_map:can_see_through positioned ~-1 ~1 ~ unless predicate mini_map:can_see_through run data modify storage mini_map: darken append value '{"text":",,,,×","color":"black"}'

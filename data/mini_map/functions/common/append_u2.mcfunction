#> mini_map:common/append_u2
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

item modify entity @s container.0 mini_map:id_u2
# data modify storage mini_map: pic[-1] append from entity 0-0-29-0-9b Item.tag.display.Name
data modify storage mini_map: darken append value '{"text":",,,,1","color":"black"}'
execute if block ~ ~00 ~ #mini_map:full positioned ~ ~01 ~ run function mini_map:common/append_u3

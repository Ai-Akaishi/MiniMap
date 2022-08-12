#> mini_map:common/append_d1
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute unless block ~ ~ ~ #mini_map:full positioned ~ ~-1 ~ run function mini_map:common/append_d2

item modify entity @s container.0 mini_map:id_d1
# data modify storage mini_map: pic[-1] append from entity 0-0-29-0-9b Item.tag.display.Name

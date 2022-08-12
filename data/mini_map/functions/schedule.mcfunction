#> mini_map:schedule
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

#define storage mini_map:

### 表示したそうなプレイヤーで未表示のプレイヤーがいなければ、表示済みを消す
execute unless entity @a[predicate=mini_map:show_map,tag=!mini_map.shown] run tag @a[predicate=mini_map:show_map,tag=mini_map.shown] remove mini_map.shown

schedule function mini_map:schedule 5t
execute as @a[predicate=mini_map:show_map,tag=!mini_map.shown,limit=1] if predicate mini_map:show_map_wide in minecraft:overworld run schedule function mini_map:schedule 10t replace

execute as @a[predicate=mini_map:show_map,tag=!mini_map.shown,limit=1] if predicate mini_map:show_map_normal at @s positioned ~ ~0.125 ~ run function mini_map:normal/y
execute as @a[predicate=mini_map:show_map,tag=!mini_map.shown,limit=1] if predicate mini_map:show_map_wide at @s positioned ~ ~0.125 ~ run function mini_map:wide/y

tag @a[predicate=mini_map:show_map,tag=!mini_map.shown,limit=1] add mini_map.shown

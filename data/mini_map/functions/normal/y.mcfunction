#> mini_map:normal/y
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon item_frame ~ 500 ~ {Item:{id:"stone",Count:1b},UUID:[I;0,41,0,155],Fixed:true,Silent:true,Invisible:true}

data modify storage mini_map: pic set value []

function mini_map:normal/z

execute if entity @s[y_rotation=-12..12] run data modify storage mini_map: player set value '{"text":"8"}'
execute if entity @s[y_rotation=12..34] run data modify storage mini_map: player set value '{"text":"9"}'
execute if entity @s[y_rotation=34..56] run data modify storage mini_map: player set value '{"text":"a"}'
execute if entity @s[y_rotation=56..78] run data modify storage mini_map: player set value '{"text":"b"}'
execute if entity @s[y_rotation=78..102] run data modify storage mini_map: player set value '{"text":"c"}'
execute if entity @s[y_rotation=102..124] run data modify storage mini_map: player set value '{"text":"d"}'
execute if entity @s[y_rotation=124..146] run data modify storage mini_map: player set value '{"text":"e"}'
execute if entity @s[y_rotation=146..168] run data modify storage mini_map: player set value '{"text":"f"}'
execute unless entity @s[y_rotation=-168..168] run data modify storage mini_map: player set value '{"text":"0"}'
execute if entity @s[y_rotation=-34..-12] run data modify storage mini_map: player set value '{"text":"7"}'
execute if entity @s[y_rotation=-56..-34] run data modify storage mini_map: player set value '{"text":"6"}'
execute if entity @s[y_rotation=-78..-56] run data modify storage mini_map: player set value '{"text":"5"}'
execute if entity @s[y_rotation=-102..-78] run data modify storage mini_map: player set value '{"text":"4"}'
execute if entity @s[y_rotation=-124..-102] run data modify storage mini_map: player set value '{"text":"3"}'
execute if entity @s[y_rotation=-146..-124] run data modify storage mini_map: player set value '{"text":"2"}'
execute if entity @s[y_rotation=-168..-146] run data modify storage mini_map: player set value '{"text":"1"}'

title @s actionbar [{"text":"","color":"#ffffff"},{"text":"--------<","font":"chip:bs"},["",{"nbt":"pic[0][]","storage":"mini_map:","font":"chip:3","interpret":true},{"text":"-","font":"chip:bs"},{"nbt":"pic[1][]","storage":"mini_map:","font":"chip:4","interpret":true},{"text":"-","font":"chip:bs"},{"nbt":"pic[2][]","storage":"mini_map:","font":"chip:5","interpret":true},{"text":"-","font":"chip:bs"},{"nbt":"pic[3][]","storage":"mini_map:","font":"chip:6","interpret":true},{"text":"-","font":"chip:bs"},{"nbt":"pic[4][]","storage":"mini_map:","font":"chip:7","interpret":true},{"text":"-","font":"chip:bs"},{"nbt":"pic[5][]","storage":"mini_map:","font":"chip:8","interpret":true},{"text":"-","font":"chip:bs"},{"nbt":"pic[6][]","storage":"mini_map:","font":"chip:9","interpret":true},{"text":"-","font":"chip:bs"},{"nbt":"pic[7][]","storage":"mini_map:","font":"chip:10","interpret":true},{"text":"-","font":"chip:bs"},{"nbt":"pic[8][]","storage":"mini_map:","font":"chip:11","interpret":true},{"text":"-","font":"chip:bs"},{"nbt":"pic[9][]","storage":"mini_map:","font":"chip:12","interpret":true},{"text":"-","font":"chip:bs"},{"nbt":"pic[10][]","storage":"mini_map:","font":"chip:13","interpret":true},{"text":"-","font":"chip:bs"}],["",{"text":">","font":"chip:bs"},{"nbt":"player","storage":"mini_map:","font":"chip:player","interpret":true},{"text":"<","font":"chip:bs"}]]

kill 0-0-29-0-9b

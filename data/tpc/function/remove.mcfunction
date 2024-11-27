scoreboard players operation #temp tpc.id = @s tpc.id
execute as @e[type=item_display,predicate=tpc:id/common] run kill @s
execute as @e[type=marker,predicate=tpc:id/common] run kill @s
execute as @e[predicate=tpc:id/common] run tag @s remove tpc.controlled
execute as @e[predicate=tpc:id/common] run scoreboard players reset @s tpc.id

tag @s remove tpc.controller
gamemode adventure @s

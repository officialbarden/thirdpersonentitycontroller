data remove storage tpc:temp cache.motion.list
data modify storage tpc:temp cache.motion.list set from entity @s Pos
execute as @n[type=!#tpc:can_fly,predicate=tpc:id/common,tag=tpc.controlled,predicate=!tpc:on_ground] run data modify storage tpc:temp cache.motion.list[1] set value 0d

data modify entity @n[tag=tpc.controlled,predicate=tpc:id/common] Motion set from storage tpc:temp cache.motion.list
rotate @n[tag=tpc.controlled,predicate=tpc:id/common] ~ ~

data remove storage tpc:temp cache.rotation
data remove storage tpc:temp cache.motion
kill @s
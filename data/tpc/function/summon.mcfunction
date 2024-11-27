# $(entity) 


#> summon entity
    $summon $(entity) ~ ~ ~ {Tags:["tpc.controlled","tpc.temp","tpc.entity"],Passengers:[{id:"marker",data:{name:"$(entity)"},Tags:["tpc.temp","tpc.controlled.info"]}]}
#> summon camera
    summon item_display ~ ~ ~ {Tags:["tpc.camera","tpc.temp"]}
#> give same ID
    scoreboard players operation @e[tag=tpc.temp] tpc.id = .global tpc.id
    scoreboard players operation @s tpc.id = .global tpc.id
#> prepare for control
    tag @s add tpc.controller
    gamemode spectator @s

#> remove temp tag
tag @e remove tpc.temp

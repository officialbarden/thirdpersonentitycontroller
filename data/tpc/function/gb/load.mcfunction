#> SCOREBOARDS
    scoreboard objectives add tpc.id dummy
    scoreboard objectives add tpc.extras dummy
    scoreboard objectives add tpc.math dummy

#> INIT VALUES:
    scoreboard players add .global tpc.id 1


#> DEFAULT VALUES:
    data modify storage tpc:config config.camera.teleport_duration set value 2
    data modify storage tpc:entities entity_type set value [\
        {"name":"creeper","type":"normal",camera:{x:1,y:15},movement:{walk:2,run:5,jump:5}},\
        {"name":"enderman","type":"tall",camera:{x:4,y:10},movement:{walk:1,run:6,jump:4}},\
        {"name":"warden","type":"huge",camera:{x:4,y:10},movement:{walk:1,run:4,jump:5}},\
        {"name":"ravager","type":"huge",camera:{x:2,y:20},movement:{walk:2,run:7,jump:5}},\
        {"name":"bee","type":"tiny",camera:{x:1,y:1},movement:{walk:2,run:7,jump:4}}\
    ]

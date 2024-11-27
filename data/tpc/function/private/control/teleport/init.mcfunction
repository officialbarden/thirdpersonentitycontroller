# SET VALUES TEMPORARILY
$data modify storage tpc:temp cache.teleport_offset.x set from storage tpc:entities entity_type[{"name":$(name)}].camera.x
$execute store result storage tpc:temp cache.teleport_offset.y double 1 run data get storage tpc:entities entity_type[{"name":$(name)}].camera.y 0.1


data modify storage tpc:temp cache.teleport_offset.smoothness set from storage tpc:config config.camera.teleport_duration
function tpc:private/control/teleport/offset with storage tpc:temp cache.teleport_offset
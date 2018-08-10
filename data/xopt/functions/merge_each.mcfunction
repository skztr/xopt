tag @s add xopt_primary
execute store result score @s xopt_value run data get entity @s Value 1.0

execute at @s run tag @e[type=minecraft:experience_orb,tag=!xopt_primary,distance=..0.5] add xopt_near
tag @s remove xopt_primary

execute as @e[tag=xopt_near] store result score @s xopt_value run data get entity @s Value 1.0
execute if entity @e[tag=xopt_near] store result entity @s Value short 1.0 run scoreboard players operation @s xopt_value += @e[tag=xopt_near] xopt_value

kill @e[tag=xopt_near]

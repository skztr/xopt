execute unless score #xopt_global xopt_disabled matches 1 as @e[type=minecraft:experience_orb,limit=1,sort=random] at @s if entity @e[type=minecraft:experience_orb,distance=0.0001..0.5] run function xopt:merge_each

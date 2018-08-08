# We assume that this function is always run "as" a detected xp orb with the appropriate Value

# -1s: detected. This prevents the orb from detecting "itself" in subsequent tests
data merge entity @s {Value:-1s}

# if there is another one within 0.5: -2s: friend
execute at @s run data merge entity @e[limit=1,sort=nearest,type=minecraft:experience_orb,nbt={Value:2048s},distance=..0.5] {Value:-2s}

# if a friend was detected, update the original orb to the merged value
execute if entity @e[type=minecraft:experience_orb,nbt={Value:-2s}] run data merge entity @s {Value:4096s}

# and kill the friend
kill @e[type=minecraft:experience_orb,nbt={Value:-2s}]

# reset now if the value was not merged
data merge entity @s[nbt={Value:-1s}] {Value:2048s}

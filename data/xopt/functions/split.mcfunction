# Split "Natural" XP Orbs into powers of 2
# Natural orbs can be found as:
# 1–11, 17, 37, 73, 149, 307, 617, 1237, or theoretically 2477
# cite: https://minecraft.gamepedia.com/Experience

# 1 and 2 are already powers of 2

# 3
execute as @e[type=minecraft:experience_orb,nbt={Value:3s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute as @e[type=minecraft:experience_orb,nbt={Value:3s}] run data merge entity @s {Value:2s}

# 4 is a power of 2

# 5
execute as @e[type=minecraft:experience_orb,nbt={Value:5s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute as @e[type=minecraft:experience_orb,nbt={Value:5s}] run data merge entity @s {Value:4s}

# 6
execute as @e[type=minecraft:experience_orb,nbt={Value:6s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:2s}
execute as @e[type=minecraft:experience_orb,nbt={Value:6s}] run data merge entity @s {Value:4s}

# 7
execute as @e[type=minecraft:experience_orb,nbt={Value:7s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute as @e[type=minecraft:experience_orb,nbt={Value:7s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:2s}
execute as @e[type=minecraft:experience_orb,nbt={Value:7s}] run data merge entity @s {Value:4s}

# 8 is a power of 2

# 9
execute as @e[type=minecraft:experience_orb,nbt={Value:9s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute as @e[type=minecraft:experience_orb,nbt={Value:9s}] run data merge entity @s {Value:8s}

# 10
execute as @e[type=minecraft:experience_orb,nbt={Value:10s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:2s}
execute as @e[type=minecraft:experience_orb,nbt={Value:10s}] run data merge entity @s {Value:8s}

# 11
execute as @e[type=minecraft:experience_orb,nbt={Value:11s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute as @e[type=minecraft:experience_orb,nbt={Value:11s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:2s}
execute as @e[type=minecraft:experience_orb,nbt={Value:11s}] run data merge entity @s {Value:8s}

# 17
execute as @e[type=minecraft:experience_orb,nbt={Value:17s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute as @e[type=minecraft:experience_orb,nbt={Value:17s}] run data merge entity @s {Value:16s}

# 37
execute as @e[type=minecraft:experience_orb,nbt={Value:37s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute as @e[type=minecraft:experience_orb,nbt={Value:37s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:4s}
execute as @e[type=minecraft:experience_orb,nbt={Value:37s}] run data merge entity @s {Value:32s}

# 73
execute as @e[type=minecraft:experience_orb,nbt={Value:73s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute as @e[type=minecraft:experience_orb,nbt={Value:73s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:8s}
execute as @e[type=minecraft:experience_orb,nbt={Value:73s}] run data merge entity @s {Value:64s}

# 149
execute as @e[type=minecraft:experience_orb,nbt={Value:149s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute as @e[type=minecraft:experience_orb,nbt={Value:149s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:4s}
execute as @e[type=minecraft:experience_orb,nbt={Value:149s}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:16s}
execute as @e[type=minecraft:experience_orb,nbt={Value:149s}] run data merge entity @s {Value:128s}

# 307
execute as @e[type=minecraft:experience_orb,nbt={Value:307}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute as @e[type=minecraft:experience_orb,nbt={Value:307}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:2s}
execute as @e[type=minecraft:experience_orb,nbt={Value:307}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:16s}
execute as @e[type=minecraft:experience_orb,nbt={Value:307}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:32s}
execute as @e[type=minecraft:experience_orb,nbt={Value:307}] run data merge entity @s {Value:256s}

# 617
execute as @e[type=minecraft:experience_orb,nbt={Value:617}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute as @e[type=minecraft:experience_orb,nbt={Value:617}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:8s}
execute as @e[type=minecraft:experience_orb,nbt={Value:617}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:32s}
execute as @e[type=minecraft:experience_orb,nbt={Value:617}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:64s}
execute as @e[type=minecraft:experience_orb,nbt={Value:617}] run data merge entity @s {Value:512s}

# 1237
execute as @e[type=minecraft:experience_orb,nbt={Value:1237}] run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute as @e[type=minecraft:experience_orb,nbt={Value:1237}] run summon minecraft:experience_orb ~ ~ ~ {Value:4s}
execute as @e[type=minecraft:experience_orb,nbt={Value:1237}] run summon minecraft:experience_orb ~ ~ ~ {Value:16s}
execute as @e[type=minecraft:experience_orb,nbt={Value:1237}] run summon minecraft:experience_orb ~ ~ ~ {Value:64s}
execute as @e[type=minecraft:experience_orb,nbt={Value:1237}] run summon minecraft:experience_orb ~ ~ ~ {Value:128s}
execute as @e[type=minecraft:experience_orb,nbt={Value:1237}] run data merge entity @s {Value:1024}

# 2477
execute as @e[type=minecraft:experience_orb,nbt={Value:2477}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute as @e[type=minecraft:experience_orb,nbt={Value:2477}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:4s}
execute as @e[type=minecraft:experience_orb,nbt={Value:2477}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:8s}
execute as @e[type=minecraft:experience_orb,nbt={Value:2477}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:32s}
execute as @e[type=minecraft:experience_orb,nbt={Value:2477}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:128s}
execute as @e[type=minecraft:experience_orb,nbt={Value:2477}] run execute at @s run summon minecraft:experience_orb ~ ~ ~ {Value:256s}
execute as @e[type=minecraft:experience_orb,nbt={Value:2477}] run data merge entity @s {Value:2048}

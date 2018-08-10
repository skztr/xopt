# you'd think we could just:
#
#     execute as @e[type=minecraft:experience_orb] \
#       run execute if entity @s[tag=!xopt_dead] \
#         run function xopt:merge_each
#
# from within merge.mcfunction. But merge_each was still *always* running,
# before we added this extra step of indirection. If this a bug in Minecraft?
# Maybe.
execute if entity @s[tag=!xopt_dead] run function xopt:merge_each

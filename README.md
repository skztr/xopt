# XOpt: XP Optimiser

Prevents lag caused by large amounts of XP Orbs, for example in mob grinders,
by merging `minecraft:experience_orb`s which are close together.

## Tweaks
To change the maximum distance before orbs will attempt to merge, search
for the word `distance` in the `merge_each.mcfunction` file. By default, the
distance defaults to `0.5` blocks, which may be too high for some uses.

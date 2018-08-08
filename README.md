# XOpt: XP Optimiser

Prevents lag caused by large amounts of XP Orbs, for example in mob
grinders, by combining "naturally generated" `minecraft:experience_orb`
entities into powers of two.

No commands to run, no set-up required. Just put the `xopt.zip` file
into your `datapacks` directory.

## Internals
Works in two passes, both of which should run within the same game tick:

 1. Splits orbs into powers of 2, for easier grouping
 2. Combines duplicate orbs, up to a single orb of 4096 XP

This usually results in a maximum of 13 orbs in a single space (ie, one
for each power of 2, from 1 to 4096), more than enough to go from level
to 0 to 58 without redundancy.

Merged orbs, as well as the "largest" power of two for any split orb, is
always created by updating an existing orb. This should help reduce
losses in momentum and rounding errors in positioning. That said, this
datapack has not been tested against farms which automatically move
experience orbs towards the player via pistons or similar.

Note that this works via a simple "distance" check, and so may result in
orbs on either side of a non-full block, for example a wall or trapdoor,
jumping across in order to merge together in a not-quite intuitive
manner.

## Tweaks
To change the maximum distance before orbs will attempt to merge, search
for the word `distance` in each of the `merge_each_*.mcfunction` files.
As of the time of this writing, this is currently set to `0.5` blocks,
which may be too high for some uses.

If you wish to increase the maximum orb size, copy a
`merge_each_*.mcfunction` file to one titled as the next power of two,
altering the powers of two within as needed. Then ensure the new
function is referenced appropriately within the `merge.mcfunction` file.
Or open an issue on GitHub requesting the feature, it doesn't take me
much effort to add, I only stopped at 4096 because I can't readily
imagine a scenario where more than that would be needed. Send pictures
of your farm, if you do!

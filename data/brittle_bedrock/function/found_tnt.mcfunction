# set hit variable to end raycast loop
scoreboard players set #hit find_tnt_raycast 1

# delete placed tnt and replace it with primed tnt
fill ~ ~ ~ ~ ~ ~ air
summon tnt ~ ~ ~ {fuse: 0}

# check surrounding blocks for bedrock and replace with obsidian
# top
execute if block ~ ~1 ~ bedrock run fill ~ ~1 ~ ~ ~1 ~ obsidian
# bottom
execute if block ~ ~-1 ~ bedrock run fill ~ ~-1 ~ ~ ~-1 ~ obsidian
# north
execute if block ~ ~ ~-1 bedrock run fill ~ ~ ~-1 ~ ~ ~-1 obsidian
# east
execute if block ~1 ~ ~ bedrock run fill ~1 ~ ~ ~1 ~ ~ obsidian
# south
execute if block ~ ~ ~1 bedrock run fill ~ ~ ~1 ~ ~ ~1 obsidian
# west
execute if block ~-1 ~ ~ bedrock run fill ~-1 ~ ~ ~-1 ~ ~ obsidian

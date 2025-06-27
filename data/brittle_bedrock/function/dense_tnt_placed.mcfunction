# executed when dense tnt is clicked against bedrock

# reset raycast scoreboards
scoreboard players set #hit find_tnt_raycast 0
scoreboard players set #distance find_tnt_raycast 0

# start raycast (find tnt)
# will execute "found_tnt.mcfunction" if tnt is found
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function brittle_bedrock:find_tnt_position

# reset trigger advancement
advancement revoke @s only brittle_bedrock:dense_tnt_placed_on_bedrock

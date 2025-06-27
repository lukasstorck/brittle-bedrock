# if current position is tnt execute found tnt function (which sets #found to true)
execute if block ~ ~ ~ tnt run function brittle_bedrock:found_tnt

# increase distance counter
scoreboard players add #distance find_tnt_raycast 1

# if tnt not yet found and distance is not more than 5 blocks (50 * 0.1) => loop with position moved one step further
execute if score #hit find_tnt_raycast matches 0 if score #distance find_tnt_raycast matches ..50 positioned ^ ^ ^0.1 run function brittle_bedrock:find_tnt_position

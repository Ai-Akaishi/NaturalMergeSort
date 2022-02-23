### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort_for_compound:sys/ascend/take1  
# @within
#   natural_merge_sort_for_compound:sys/ascend/loop

data modify storage natural_merge_sort_for_compound: ListAsc[-1] append from storage natural_merge_sort_for_compound: ListDesc[-1][-1]
data remove storage natural_merge_sort_for_compound: ListDesc[-1][-1]
execute store result score $Value1 _ run data get storage natural_merge_sort_for_compound: ListDesc[-1][-1].weight
execute unless data storage natural_merge_sort_for_compound: ListDesc[-1][-1] run scoreboard players set $Value1 _ 2147483647

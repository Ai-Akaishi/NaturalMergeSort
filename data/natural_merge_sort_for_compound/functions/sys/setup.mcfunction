### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort_for_compound:sys/setup  
# ソートする配列をListDescに設定します。  
# Set the list to sort to ListDesc.
# @within
#   natural_merge_sort_for_compound:sys/setup
#   natural_merge_sort_for_compound:sys/sort

execute store result score $Value1 _ run data get storage natural_merge_sort: List[-1].weight
execute if score $Value2 _ < $Value1 _ run data modify storage natural_merge_sort_for_compound: ListDesc append value []
data modify storage natural_merge_sort_for_compound: ListDesc[-1] append from storage natural_merge_sort: List[-1]
scoreboard players operation $Value2 _ = $Value1 _
data remove storage natural_merge_sort: List[-1]
execute if data storage natural_merge_sort: List[0] run function natural_merge_sort_for_compound:sys/setup

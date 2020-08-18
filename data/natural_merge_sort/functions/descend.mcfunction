### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

#> natural_merge_sort:descend  
# 渡された数値配列を、降順にソートします。  
# Sort the specified int list in descending order.
# @api
# @input storage natural_merge_sort: List
#   ソートする数値配列 / the int list to sort

function natural_merge_sort:sys/sort
execute unless data storage natural_merge_sort: ListDesc[0] run function natural_merge_sort:sys/descend
data modify storage natural_merge_sort: List set from storage natural_merge_sort: ListDesc[0]

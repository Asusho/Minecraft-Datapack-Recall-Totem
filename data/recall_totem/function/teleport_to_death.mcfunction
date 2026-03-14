# $ indique qu'il s'agit d'une macro utilisant les variables passées
$execute in $(dim) run tp @s $(x) $(y) $(z)
title @s actionbar {"text":"Retour sur les lieux de mort...","color":"yellow"}

particle portal ~ ~1 ~ 0.5 0.5 0.5 0.1 100
playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~
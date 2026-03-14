# On stocke les coordonnées X, Y, Z et la dimension dans le storage du joueur
execute store result storage recall:main last_death_loc.x double 1 run data get entity @s Pos[0]
execute store result storage recall:main last_death_loc.y double 1 run data get entity @s Pos[1]
execute store result storage recall:main last_death_loc.z double 1 run data get entity @s Pos[2]
data modify storage recall:main last_death_loc.dim set from entity @s Dimension

# On remet le score à 0
scoreboard players set @s last_death 0
tag @s add has_death_point
# 1. Vérifier si le joueur a un point de mort
execute if entity @s[tag=!has_death_point] run return run tellraw @s {"text":"Vous n'avez pas de point de recall !","color":"red"}

# On réinitialise l'avancement immédiatement
advancement revoke @s only recall_totem:use_totem

# 2. Lancer la téléportation via une Macro
function recall_totem:teleport_to_death with storage recall:main last_death_loc

# 3. Effets visuels et sonores
particle portal ~ ~1 ~ 0.5 0.5 0.5 0.1 100
playsound minecraft:item.chorus_fruit.teleport player @a ~ ~ ~

# 4. Consommer l'item (si on est en survie)
clear @s totem_of_undying[custom_data={recall_totem:1b}] 1
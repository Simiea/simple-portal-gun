kill @e[type=armor_stand,tag=portal.2]
particle dust 0.769 0.486 0.000 1 ~ ~ ~ 0.769 0.486 0.000 1 0 force
execute unless block ~ ~ ~ #portal_gun:ignore run summon armor_stand ~ ~.15 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["portal.2"],ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b,tag:{display:{Name:'{"text":"Portal"}'},CustomModelData:1345435}}]}
execute if entity @e[type=#portal_gun:hit,distance=..2] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["portal.2"],ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b,tag:{display:{Name:'{"text":"Portal"}'},CustomModelData:1345435}}]}
execute unless block ~ ~ ~ #portal_gun:ignore run particle flash ~ ~ ~ 0 0 0 0 0 force
execute if entity @s[distance=..256] unless entity @e[type=#portal_gun:hit,distance=..2] if block ~ ~ ~ #portal_gun:ignore positioned ^ ^ ^.25 run function portal_gun:shoot_portal2
###Portal Gun
execute as @e[tag=portal.1] run tag @s add portal.for.gun
execute as @e[tag=portal.2] run tag @s add portal.for.gun
execute as @a[scores={use.portal_gun=1},nbt={SelectedItemSlot:0,Inventory:[{Slot:-106b,tag:{portal:1b}}]}] at @s anchored eyes positioned ^ ^ ^ run function portal_gun:shoot_portal1
execute as @a[scores={use.portal_gun=1},nbt={SelectedItemSlot:1,Inventory:[{Slot:-106b,tag:{portal:1b}}]}] at @s anchored eyes positioned ^ ^ ^ run function portal_gun:shoot_portal2
execute as @a[scores={use.portal_gun=1},nbt={SelectedItemSlot:2,Inventory:[{Slot:-106b,tag:{portal:1b}}]}] at @s run kill @e[type=armor_stand,tag=portal.for.gun]
execute as @e[type=minecraft:armor_stand,tag=portal.2] at @s run function portal_gun:orange
execute as @e[type=minecraft:armor_stand,tag=portal.1] at @s run function portal_gun:blue
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{portal:1b}}]}] run function portal_gun:title

###Teleport
execute as @e[type=armor_stand,tag=portal.1] at @s run execute as @p[distance=..1,tag=!teleport1] run function portal_gun:teleport1
execute as @e[type=armor_stand,tag=portal.2] at @s run execute as @p[distance=..1,tag=!teleport2] run function portal_gun:teleport2

###Distancing
execute as @a at @s if entity @e[type=armor_stand,tag=portal.2,distance=1..] run tag @s remove teleport2
execute as @a at @s if entity @e[type=armor_stand,tag=portal.1,distance=1..] run tag @s remove teleport1

###Reset
scoreboard players set @a use.portal_gun 0


#summon item ~ ~ ~ {Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Portal Gun","color":"blue","italic":false}',Lore:['{"text":"Put In Offhand To Make Portals","color":"yellow","italic":false}']},HideFlags:127,Unbreakable:1b,CustomModelData:16041576,portal:1b}}}
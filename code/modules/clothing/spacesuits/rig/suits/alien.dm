/*
 *	UNATHI
 */

/obj/item/weapon/rig/breacher
	name = "\improper NT breacher chassis control module"
	desc = "A cheap NT knock-off of an Unathi battle-rig. Looks like a fish, moves like a fish, steers like a cow."
	suit_type = "\improper NT breacher"
	icon_state = "breacher_rig_cheap"
	armor = list(melee = 60, bullet = 60, laser = 60, energy = 60, bomb = 70, bio = 100, rad = 50)
	emp_protection = -20
	slowdown = 6
	offline_slowdown = 10
	vision_restriction = 1
	offline_vision_restriction = 2

	chest_type = /obj/item/clothing/suit/space/rig/breacher
	helm_type = /obj/item/clothing/head/helmet/space/rig/breacher
	boot_type = /obj/item/clothing/shoes/magboots/rig/breacher

/obj/item/weapon/rig/breacher/fancy
	name = "breacher chassis control module"
	desc = "An authentic Unathi breacher chassis. Huge, bulky and absurdly heavy. It must be like wearing a tank."
	suit_type = "breacher chassis"
	icon_state = "breacher_rig"
	armor = list(melee = 90, bullet = 90, laser = 90, energy = 90, bomb = 90, bio = 100, rad = 80) //Takes TEN TIMES as much damage to stop someone in a breacher. In exchange, it's slow.
	vision_restriction = 0

/obj/item/clothing/head/helmet/space/rig/breacher
	species_restricted = list("Unathi")
	force = 5

/obj/item/clothing/suit/space/rig/breacher
	species_restricted = list("Unathi")

/obj/item/clothing/shoes/magboots/rig/breacher
	species_restricted = list("Unathi")

/*
 *	VOX
 */

/obj/item/weapon/rig/vox	//Just to get the flags set up
	name = "alien control module"
	desc = "This metal box writhes and squirms as if it were alive..."
	suit_type = "alien"
	icon_state = "vox_rig"
	armor = list(melee = 60, bullet = 50, laser = 40, energy = 15, bomb = 30, bio = 30, rad = 30)
	item_flags = THICKMATERIAL
	siemens_coefficient = 0.2
	phoronproof = 1

	air_type = /obj/item/weapon/tank/vox

	helm_type = /obj/item/clothing/head/helmet/space/rig/vox
	boot_type = /obj/item/clothing/shoes/magboots/rig/vox
	chest_type = /obj/item/clothing/suit/space/rig/vox
	glove_type = /obj/item/clothing/gloves/gauntlets/rig/vox

/obj/item/clothing/head/helmet/space/rig/vox
	species_restricted = list("Vox")
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	phoronproof = 1

/obj/item/clothing/shoes/magboots/rig/vox
	name = "talons"
	species_restricted = list("Vox")
	sprite_sheets = list(
		"Vox" = 'icons/mob/species/vox/shoes.dmi'
		)
	phoronproof = 1

/obj/item/clothing/suit/space/rig/vox
	species_restricted = list("Vox")
	phoronproof = 1

/obj/item/clothing/gloves/gauntlets/rig/vox
	siemens_coefficient = 0
	species_restricted = list("Vox")
	sprite_sheets = list(
		"Vox" = 'icons/mob/species/vox/gloves.dmi'
		)
	phoronproof = 1

/obj/item/weapon/rig/vox/carapace
	name = "dense alien control module"
	suit_type = "dense alien"
	armor = list(melee = 60, bullet = 50, laser = 40, energy = 15, bomb = 30, bio = 30, rad = 30)
	emp_protection = 40 //change this to 30 if too high.
	phoronproof = 1

	req_access = list(access_syndicate)

	cell_type =  /obj/item/weapon/cell/hyper

	initial_modules = list(
		/obj/item/rig_module/mounted/energy_blade,
		/obj/item/rig_module/sprinter,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/vision,
		/obj/item/rig_module/power_sink,
		/obj/item/rig_module/self_destruct
		)

/obj/item/weapon/rig/vox/stealth
	name = "sinister alien control module"
	suit_type = "sinister alien"
	icon_state = "voxstealth_rig"
	armor = list(melee = 40, bullet = 30, laser = 30, energy = 15, bomb = 30, bio = 100, rad = 100)
	emp_protection = 40 //change this to 30 if too high.
	slowdown = 0
	phoronproof = 1

	req_access = list(access_syndicate)

	cell_type =  /obj/item/weapon/cell/hyper

	initial_modules = list(
		/obj/item/rig_module/stealth_field,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/vision,
		/obj/item/rig_module/power_sink,
		/obj/item/rig_module/self_destruct
		)
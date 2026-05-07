/*
//do a proc on the item to set the variables
//(the proc)

pick(
	prob(variable) //set to 0 beforehand if allergic, maybe variables for allergens like "grain_prob" or something
		//spawn the item
		,
)

*/

/obj/item/reagent_containers/cup/squeeze_tube
	name = "generic squeeze tube"
	desc = "You can't put the paste back inside."
	icon = 'modular_zubbers/icons/obj/squeeze_tube.dmi' //remember to actually implement all the sprites btw
	icon_state = "squeeze_tube"
	base_icon_state = "squeeze_tube"
	initial_reagent_flags = AMOUNT_VISIBLE|NO_SPLASH|OPENCONTAINER //I FUCKING HATE TG, WHY DOES IT NEED TO BE OPENCONTAINER??? WHY CANT I MAKE IT AN OUTPUT-ONLY THING????
	reagent_container_liquid_sound = null
	consumption_sound = 'sound/effects/chemistry/saturnx_fade.ogg' //passable sound effect
	volume = 50
	drink_type
	var/tube_color
	var/cap = "default"
	var/cap_color
	var/label
	var/label_color

/obj/item/reagent_containers/cup/squeeze_tube/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state][reagents.total_volume ? null : "_empty"]"
	cut_overlays()
	update_overlays()
	//return ..()

/obj/item/reagent_containers/cup/squeeze_tube/update_overlays()
	. = ..()
	if(tube_color) // yes, this is really dumb, but trying to color the item colors all the overlays
		var/mutable_appearance/tube_overlay = mutable_appearance(icon, "[icon_state]", FLOAT_LAYER-0.1,)
		tube_overlay.color = tube_color
		tube_overlay.alpha = 204
		. += tube_overlay
	if(cap && reagents.total_volume)
		var/mutable_appearance/cap_overlay = mutable_appearance(icon, "cap_[cap]")
		cap_overlay.color = cap_color
		. += cap_overlay
	if(label)
		if(reagents.total_volume)
			var/mutable_appearance/label_overlay = mutable_appearance(icon, "[base_icon_state]_[label]")
			label_overlay.color = label_color
			. += label_overlay
		else
			var/mutable_appearance/label_overlay = mutable_appearance(icon, "[base_icon_state]_[label]_empty")
			label_overlay.color = label_color
			. += label_overlay

//Issues: everything is dyed blue! even the overlays are dyed blue fully, fucksake
//also the cap doesnt disappear so... uhhhh...

/obj/item/reagent_containers/cup/squeeze_tube/galfed
	tube_color = "#385496" // galfed blue
	label = "labelgalfedlogo"
	list_reagents = list(/datum/reagent/water = 5) //testing purposes

/obj/item/reagent_containers/cup/squeeze_tube/galfed/honey
	cap_color = "#d3a308"
	label = "labelbigtext"
	label_color = "#d3a308"
	list_reagents = list(/datum/reagent/consumable/honey = 10)

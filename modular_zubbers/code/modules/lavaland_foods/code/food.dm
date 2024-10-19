// Pickled Cactus?
// pickled mushroom leaf?
// soaked "tall mushrooms"? in vodka? (the ones that make u choke)

// Lavaland Stock - most soups require a small amount of this, kinda like dashi concentrate
/datum/reagent/consumable/nutriment/soup/lavaland_stock
	name = "Lavaland Stock"
	description = "Flavourful stock made of lavaland flora, reinforced with collagen from boiling sinews of the local monsters."
	data = list("smooth mushrooms" = 1) // taste
	glass_price = FOOD_PRICE_NORMAL
	color = "#3e2d23"

/datum/glass_style/has_foodtype/soup/lavaland_stock
	required_drink_type = /datum/reagent/consumable/nutriment/soup/lavaland_stock
	// icon = 'modular_zubbers/modules/lavaland_foods/icons/REPLACE.dmi'
	// icon_state = "REPLACE"
	drink_type = VEGETABLES // not adding MEAT for the sinew going off the example of soups not adding MEAT for eggs

/obj/item/reagent_containers/cup/bowl/soup/lavaland_stock
	initial_reagent = /datum/reagent/consumable/nutriment/soup/lavaland_stock

/datum/chemical_reaction/food/soup/lavaland_stock
	required_reagents = list(
		/datum/reagent/water = 40,
		/datum/reagent/water/salt = 10,
	)
	required_ingredients = list(
		/obj/item/stack/sheet/sinew = 1,
		/obj/item/food/grown/ash_flora/seraka = 2,
		/obj/item/food/grown/ash_flora/mushroom_leaf = 2,
	)
	results = list(
		/datum/reagent/consumable/nutriment/soup/lavaland_stock = 30,
		// no water, it's boiled off - we are making potent stock after all
	)

/datum/crafting_recipe/food/reaction/soup/lavaland_stock
	reaction = /datum/chemical_reaction/food/soup/lavaland_stock

// bigos? lol
/datum/reagent/consumable/nutriment/soup/lavaland_bigos
	name = "Ash Bigos"
	description = "todo"
	data = list("A" = 1, "B" = 1,) // taste
	glass_price = FOOD_PRICE_NORMAL
	color = "#3e2d23"

/datum/glass_style/has_foodtype/soup/lavaland_bigos
	required_drink_type = /datum/reagent/consumable/nutriment/soup/lavaland_bigos
	// icon = 'modular_zubbers/modules/lavaland_foods/icons/REPLACE.dmi'
	// icon_state = "REPLACE"
	drink_type = VEGETABLES | MEAT

/obj/item/reagent_containers/cup/bowl/soup/lavaland_bigos
	initial_reagent = /datum/reagent/consumable/nutriment/soup/lavaland_bigos

/datum/chemical_reaction/food/soup/lavaland_bigos
	required_reagents = list(
		/datum/reagent/water = 50,
	)
	required_ingredients = list(
		/obj/item/food/grown/ash_flora/mushroom_leaf = 1,
		/obj/item/food/grown/ash_flora/cactus_fruit = 1, // ?
		/obj/item/food/grown/herbs = 1,
		/obj/item/food/meat/cutlet = 1,
		/obj/item/food/tiziran_sausage = 1,
	)
	results = list(
		/datum/reagent/consumable/nutriment/soup/lavaland_bigos = 30,
		/datum/reagent/water = 9,
	)

/datum/crafting_recipe/food/reaction/soup/lavaland_bigos
	reaction = /datum/chemical_reaction/food/soup/lavaland_bigos

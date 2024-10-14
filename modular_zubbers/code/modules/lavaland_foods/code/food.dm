// Blah blah...
// Foods here should mostly stick to stuff that uses lavaland flora/fauna + stuff ashwalkers start with - could add some miner dishes too
// Structure: Food, Crafting Recipe(s), Next Food

/obj/item/food/REPLACE
	name = "REPLACE"
	desc = "REPLACE"
	icon = 'modular_zubbers/modules/lavaland_foods/icons/REPLACE.dmi'
	icon_state = ""
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/mayonnaise = 3,
		/datum/reagent/consumable/nutriment/protein = 7,
		/datum/reagent/consumable/nutriment/vitamin = 1,
		/datum/reagent/consumable/nutriment/fat/oil = 2,
	)
	tastes = list("bun" = 2, "chikun" = 4, "Against God and Nature" = 1)
	foodtypes = GRAIN | MEAT | FRIED | GORE // bongus
	crafting_complexity = FOOD_COMPLEXITY_3
	venue_value = FOOD_PRICE_CHEAP // need to figure this one out

/datum/crafting_recipe/food/REPLACE
	name = "REPLACE"
	reqs = list(
			/obj/item/food/patty/human/chicken = 1,
			/datum/reagent/consumable/mayonnaise = 5,
			/obj/item/food/bun = 1
	)
	result = /obj/item/food/REPLACE
	category = CAT_LIZARD

// Lavaland Stock - most soups require a small amount of this, kinda like dashi concentrate
/datum/reagent/consumable/nutriment/soup/lavaland_stock
	name = "Lavaland Stock"
	description = "Flavourful stock made of lavaland flora, reinforced with collagen from boiling sinews of the local monsters."
	data = list("smooth mushrooms" = 1) // taste
	glass_price = FOOD_PRICE_NORMAL
	color = "#3e2d23"

/datum/glass_style/has_foodtype/soup/lavaland_stock
	required_drink_type = /datum/reagent/consumable/nutriment/soup/lavaland_stock
	icon_state = "REPLACE"
	drink_type = VEGETABLES // not adding MEAT for the sinew going off the example of soups not adding MEAT for eggs

/obj/item/reagent_containers/cup/bowl/soup/lavaland_stock
	initial_reagent = /datum/reagent/consumable/nutriment/soup/lavaland_stock

/datum/chemical_reaction/food/soup/lavaland_stock
	required_reagents = list(/datum/reagent/water = 50)
	required_ingredients = list(
		/obj/item/stack/sheet/sinew = 1,
		/obj/item/food/grown/ash_flora/seraka = 2,
		/obj/item/food/grown/ash_flora/mushroom_leaf = 2,
	)
	results = list(
		/datum/reagent/consumable/nutriment/soup/lavaland_stock = 30,
		// no water, it's boiled off - we are making concentrated stock after all
	)

/datum/crafting_recipe/food/reaction/soup/lavaland_stock
	reaction = /datum/chemical_reaction/food/soup/lavaland_stock

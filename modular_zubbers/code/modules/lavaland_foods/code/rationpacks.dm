// Blah blah...
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
	result = /obj/item/food/burger/human/chicken
	category = CAT_BURGER

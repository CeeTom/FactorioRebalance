# CeeTom Vanilla Rebalance

## About

This is a mod for Factorio. It is intended to tweak some balance in the game, as well as rework recipes and research to eliminate iron sticks and stone bricks (bricks are replaced by concrete in recipes). The mod also changes a few other things that are personal nitpicks of mine.

## Changes

### 0.0.1

#### Recipes

* Disable crafting recipes for "iron-stick" and "stone-brick"
* Change "concrete" recipe to require "stone" rather than "stone-brick"
* Replace all "stone-brick" in crafting recipes with "concrete" ("electric-furnace", "oil-refinery", "steel-furnace", "stone-wall")
* Remove "iron-stick" from "iron-axe", "steel-axe", and "small-lamp" recipes
* Change "rail" recipe to 1 "concrete" + 1 "steel-plate"
* Change "pumpjack" recipe to use "concrete" rather than "electronic-circuit"
* Change "power-armor-mk2" recipe to use "productivity-module-3" rather than "effectivity-module-3"

#### Research

* "concrete": Remove "advanced-material-processing" prereq and add "automation-2" (concrete can't be made without automation 2). Reduce unit cost to 50.
* "advanced-material-processing", "oil-processing", "railway", "stone-walls": Add "concrete" prereq as unlocked technologies need it now.
* "stone-walls": add "science-pack-2" to unit ingredients (felt weird to need green science for prereqs only)
* "flying": reduce unit cost to 150
* "robotics", "rocket-silo": add "flying" prereq
* "construction-robotics", "logistic-robotics": remove now-redundant "flying" prereq
* "military-3": remove pointless "laser" prereq
* "laser": add "miltary-2" prereq
* "laser-turrets": remove now-redundant "miltary-2" prereq
* "nuclear-power": remove now-redundant "concrete" prereq
* "power-armor-2": change "effectivity-module-3" prereq to "productivity-module-3" to match new recipe

#### Other Tweaks

* Increase portable solar panel power output to 150kW
* Increase Assembly Machine 1 craft speed to 0.75
* Increase Assembly Machine 2 craft speed to 1.0
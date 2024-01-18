// -----------------------------------------------------------------------------
// 	Copyright (C) 2013-2024 TwinDrills, All Rights Reserved
// -----------------------------------------------------------------------------
// This file is used to define the specifics on our item and how it will work in-game.
// A file like this is required for every Item, whether it be Headgear, Heads, Weapons, or Accessories.

// Import required classes from runtime. For items, this is usually math, log
using runtime.math;
using runtime.log;

// Import required item_archetype class. We're going to use this to define the item!
using game.items.item_archetype;

// The public class of the item we would like to add. Please have the filename and Class name the same, with the class utilizing Uppercase_And_Underscores.
public class Item_Example_Head : Item_Archetype
{
	// This needs to be the same as the public class name or you will recieve an error.
	Item_Example_Head()
	{
		// Let's define the basics - Name, Description, and Category. This is how the items will display in-game.
		Name 					= "Oh Face - An Example!";
		Description 			= "Whn you are in shock, all you can say is 'oh'!";
		Category				= "Head";
		
		// Now we get more technical...
		Slot					= Item_Slot.Head;	 	// Item_Slot defines how the player will wear this. Since it's a head, add it as Head.
		Cost					= 1000; 				// If available in the shop, how much will it cost?
		
		Is_Stackable			= false;				// Can this item be stacked? Our wearables ar never stacked, so false is correct.
		Is_Buyable				= true;					// Can this item be purchased from the store? If yes, make this true!
		Is_Tintable				= true;					// Can you apply a Skin Spray tint to this item? If you have tint animation frames defined in the Atlas, set this to true.
		Is_Sellable				= true;					// Can players refund this item if they obtain it? Keep this true so players don't complain about inventory space pls.
		Is_Tradable				= true;					// Can players trade it?
		Is_Dropable				= true;					// Is it possible for the player to obtain this through a drop?
		Is_PVP_Usable			= true;					// Can the player use this in a PVP map? Since our head is clearly visible and gives no advantage/disadvantage, this is true.
		Is_Inventory_Droppable	= false;				// Keep this false - modded items do not benefit from it being either true or false.
		
		Unlock_Criteria_Threshold	= 0;				// At which level will the player unlock this item from the shop? If you want it unlockable for everyone, set this to 0.
		
		
		Rarity					= Item_Rarity.Common;	// What rarity should the item be shown as in-game? Valid options are: Common, Uncommon, Rare, Legendary
		
		// Define the default color the tint layer should display. This will be a number between 0-255 and follows RGBA (Red, Green, Blue, Alpha) formatting.
		// If you would like your item to not have a tint from the get-go, set the Alpha value to 0. 
		Default_Tint			= Vec4(245, 235, 210, 255);

		// The defined name of our image and associated animation frames set up in our Atlas.xml file. This will not include the _#.
		// If this is not correct, the mod will compile but you will recieve an error on the games launch. Make sure there are no misspellings!
		Icon_Animation			= "item_example_head";
		
		// This should be close to the center of one frame in our image file. Since the grid is 64x64, we have it near center with a slightly higher position for the player.
		Icon_Offset				= Vec2(32, 34);
		
		Is_Icon_Direction_Based	= true;
		Is_Icon_Overlay			= true;
		
		// Combine name
		Combine_Name			= "Example Head";
		
		// This should match the Category value.
		Combine_Group			= "Head";
		
		// Define combinations for our item. Since this is a modded item, we don't need to worry about durability, which would be defined below otherwise.
		// Heads use a different tint item - the Skin Spray. This item is just like the Paint Bucket, but gives players better options closer to skin colors.
		// Due to this, our Item_Combination value should be Skintone instead of Paints
		Combinations 			= new Item_Combination[1];
		Combinations[0] 		= Item_Combination("Skintone", Item_Combine_Method.Tint, "Nothing");
	}
}

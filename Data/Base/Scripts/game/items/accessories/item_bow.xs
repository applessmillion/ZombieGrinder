// -----------------------------------------------------------------------------
// 	Copyright (C) 2013-2014 TwinDrills, All Rights Reserved
// -----------------------------------------------------------------------------
using runtime.math;
using runtime.log;
using game.items.item_archetype;

public class Item_Bow : Item_Archetype
{
	Item_Bow()
	{
		Name 					= "#item_bow_name";
		Description 			= "#item_bow_description";
		Category				= "#item_bow_category";
		
		Slot					= Item_Slot.Accessory;
		Cost					= 20000;
		Unlock_Criteria_Threshold			= 3;

		Is_Stackable			= false;
		Is_Buyable				= true;
		Is_Tintable				= true;
		Is_Sellable				= true;
		Is_Tradable				= true;
		Is_Dropable				= true;
		Is_PVP_Usable			= true;
		Is_Inventory_Droppable	= true;
		Is_Premium_Only			= false;
		Premium_Price			= "1;VLV150";
		
		Rarity					= Item_Rarity.Common;
		
		Default_Tint			= Vec4(255, 188, 58, 255);
		
		Icon_Animation			= "item_accessory_bow";
		Icon_Offset				= Vec2(32, 28);
		
		Is_Icon_Direction_Based	= true;
		Is_Icon_Overlay			= true;
		
		Combine_Name			= "Bow";
		Combine_Group			= "Hats";
		Combinations 			= new Item_Combination[2];
		Combinations[0] 		= Item_Combination("Paints", Item_Combine_Method.Tint, "Nothing");
		Combinations[1] 		= Item_Combination("Spanner", Item_Combine_Method.Repair, "Nothing");
	}
}

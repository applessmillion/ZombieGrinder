// -----------------------------------------------------------------------------
// 	Copyright (C) 2013-2014 TwinDrills, All Rights Reserved
// -----------------------------------------------------------------------------
using runtime.math;
using runtime.log;
using game.items.item_archetype;

public class Item_Aqua_Gem_3 : Item_Archetype
{
	Item_Aqua_Gem_3()
	{
		Name 					= "#item_aqua_gem_3_name";
		Description 			= "#item_aqua_gem_3_description";
		Category				= "#item_aqua_gem_3_category";
		
		Slot					= Item_Slot.All;
		Cost					= 80000;
		Unlock_Criteria_Threshold			= 10;
		
		Is_Stackable			= true;
		Max_Stack 				= 99;
		Is_Buyable				= false;
		Is_Tintable				= false;
		Is_Sellable				= true;
		Is_Tradable				= true;
		Is_Dropable				= true;
		Is_PVP_Usable			= true;
		Is_Inventory_Droppable	= false;
		Is_Premium_Only			= false;
		Premium_Price			= "1;VLV100";
		
		Rarity					= Item_Rarity.Rare;
		
		Default_Tint			= Vec4(48, 189, 243, 255);
		
		Icon_Animation			= "item_gem_xp_3";
		Icon_Offset				= Vec2(8, 8);
		
		Is_Icon_Direction_Based	= false;
		Is_Icon_Overlay			= false;
		
		Combine_Name			= "Neat Aquamarine";
		Combine_Group			= "Gems";
		Combinations 			= new Item_Combination[1];
		Combinations[0] 		= Item_Combination("Neat Aquamarine", Item_Combine_Method.Merge, "Sweet Aquamarine");
	}
}
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

local ALCHEMY = GetSpellInfo(2259);
local BLACKSMITHING = GetSpellInfo(2018);
local ARMORSMITH = GetSpellInfo(9788);
local WEAPONSMITH = GetSpellInfo(9787);
local AXESMITH = GetSpellInfo(17041);
local HAMMERSMITH = GetSpellInfo(17040);
local SWORDSMITH = GetSpellInfo(17039);
local COOKING = GetSpellInfo(2550);
local ENCHANTING = GetSpellInfo(7411);
local ENGINEERING = GetSpellInfo(4036);
local GNOMISH = GetSpellInfo(20220);
local GOBLIN = GetSpellInfo(20221);
local FIRSTAID = GetSpellInfo(3273);
local FISHING = GetSpellInfo(63275);
local INSCRIPTION = GetSpellInfo(45357);
local JEWELCRAFTING = GetSpellInfo(25229);
local LEATHERWORKING = GetSpellInfo(2108);
local DRAGONSCALE = GetSpellInfo(10656);
local ELEMENTAL = GetSpellInfo(10658);
local TRIBAL = GetSpellInfo(10660);
local MINING = GetSpellInfo(2575);
local TAILORING = GetSpellInfo(3908);
local MOONCLOTH = GetSpellInfo(26798);
local SHADOWEAVE = GetSpellInfo(26801);
local SPELLFIRE = GetSpellInfo(26797);


local APPRENTICE = select(2, GetSpellInfo(2259));
local JOURNEYMAN = select(2, GetSpellInfo(3101));
local EXPERT = select(2, GetSpellInfo(3464));
local ARTISAN = select(2, GetSpellInfo(11611));
local MASTER = select(2, GetSpellInfo(28596));

-- Index
--- Tradeskill List
---- Alchemy
----- Battle Elixirs
----- Guardian Elixirs
----- Potions
----- Flasks
----- Transmutes
----- Miscellaneous
---- Blacksmithing
----- Armor
----- Weapons
----- Enhancements
----- Miscellaneous
----- Armorsmith
----- Weaponsmith
----- Axesmith
----- Hammersmith
----- Swordsmith
---- Cooking
---- Enchanting
----- Boots
----- Bracers
----- Chest
----- Cloaks
----- Gloves
----- Rings
----- Shields
----- 2 Hand Weapons
----- 1 Hand Weapons
----- Staves
----- Miscellaneous
---- Engineering
---- First Aid
---- Inscription
---- Jewelcrafting
---- Leatherworking
---- Mining
---- Tailoring
--- Profession Sets
---- Blacksmithing Mail Sets
---- Blacksmithing Plate Sets
---- Leatherworking Leather Sets
---- Leatherworking Mail Sets
---- Tailoring Sets
--- Other
---- Crafted Epic Weapons
--- Daily Profession Rewards
---- Cooking
---- Fishing
---- Jewelcrafting

-----------------------
--- Tradeskill List ---
-----------------------

---------------
--- Alchemy ---
---------------

AtlasLoot_Data["AlchemyWRATH"] = {
	Name = ALCHEMY;
	Type = "CraftingNoBF";
	{
		Name = AL["Battle Elixirs"];
		{ 1, "s60365", "44330", "=q1=Elixir of Armor Piercing", "=ds=" };
		{ 2, "s60355", "44327", "=q1=Elixir of Deadly Strikes", "=ds=" };
		{ 3, "s60357", "44329", "=q1=Elixir of Expertise", "=ds=" };
		{ 4, "s60366", "44331", "=q1=Elixir of Lightning Speed", "=ds=" };
		{ 5, "s60354", "44325", "=q1=Elixir of Accuracy", "=ds=" };
		{ 6, "s53840", "39666", "=q1=Elixir of Mighty Agility", "=ds=" .. AL["Trainer"] };
		{ 7, "s54218", "40073", "=q1=Elixir of Mighty Strength", "=ds=" .. AL["Trainer"] };
		{ 8, "s53848", "40076", "=q1=Guru's Elixir", "=ds=" .. AL["Trainer"] };
		{ 9, "s53842", "40070", "=q1=Spellpower Elixir", "=ds=" .. AL["Trainer"] };
		{ 10, "s53841", "40068", "=q1=WRATH Elixir", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Guardian Elixirs"];
		{ 1, "s60356", "44328", "=q1=Elixir of Mighty Defense", "=ds=" .. AL["Discovery"] };
		{ 2, "s56519", "40109", "=q1=Elixir of Mighty Mageblood", "=ds=" .. AL["Discovery"] };
		{ 3, "s54220", "40097", "=q1=Elixir of Protection", "=ds=" .. AL["Discovery"] };
		{ 4, "s62410", "8827", "=q1=Elixir of Water Walking", "=ds=" .. AL["Discovery"] };
		{ 5, "s53898", "40078", "=q1=Elixir of Mighty Fortitude", "=ds=" .. AL["Trainer"] };
		{ 6, "s60367", "44332", "=q1=Elixir of Mighty Thoughts", "=ds=" .. AL["Trainer"] };
		{ 7, "s53847", "40072", "=q1=Elixir of Spirit", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Potions"];
		{ 1, "s54221", "40211", "=q1=Potion of Speed", "=ds=" };
		{ 2, "s54222", "40212", "=q1=Potion of Wild Magic", "=ds=" };
		{ 3, "s53904", "40087", "=q1=Powerful Rejuvenation Potion", "=ds=" };
		{ 4, "s58868", "43570", "=q1=Endless Mana Potion", "=ds=" .. AL["Trainer"] };
		{ 5, "s53837", "33448", "=q1=Runic Mana Potion", "=ds=" .. AL["Trainer"] };
		{ 6, "s58871", "43569", "=q1=Endless Healing Potion", "=ds=" .. AL["Trainer"] };
		{ 7, "s53836", "33447", "=q1=Runic Healing Potion", "=ds=" .. AL["Trainer"] };
		{ 8, "s53936", "40213", "=q1=Mighty Arcane Protection Potion", "=ds=" };
		{ 9, "s53939", "40214", "=q1=Mighty Fire Protection Potion", "=ds=" .. AL["Drop"] };
		{ 10, "s53937", "40215", "=q1=Mighty Frost Protection Potion", "=ds=" .. AL["Drop"] };
		{ 11, "s53942", "40216", "=q1=Mighty Nature Protection Potion", "=ds=" .. AL["Drop"] };
		{ 12, "s53938", "40217", "=q1=Mighty Shadow Protection Potion", "=ds=" };
		{ 13, "s53905", "40093", "=q1=Indestructible Potion", "=ds=" .. AL["Trainer"] };
		{ 14, "s53900", "40081", "=q1=Potion of Nightmares", "=ds=" .. AL["Trainer"] };
		{ 15, "s53895", "40077", "=q1=Crazy Alchemist's Potion", "=ds=" .. AL["Trainer"] };
		{ 16, "s53839", "40067", "=q1=Icy Mana Potion", "=ds=" .. AL["Trainer"] };
		{ 17, "s53838", "39671", "=q1=Resurgent Healing Potion", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Flasks"];
		{ 1, "s67025", "47499", "=q3=Flask of the North", "=ds=" .. AL["Trainer"] };
		{ 2, "s53903", "46377", "=q1=Flask of Endless Rage", "=ds=" .. AL["Trainer"] };
		{ 3, "s54213", "46378", "=q1=Flask of Pure Mojo", "=ds=" .. AL["Trainer"] };
		{ 4, "s53902", "46379", "=q1=Flask of Stoneblood", "=ds=" .. AL["Trainer"] };
		{ 5, "s53901", "46376", "=q1=Flask of the Frost Wyrm", "=ds=" .. AL["Trainer"] };
		{ 6, "s62213", "44939", "=q1=Lesser Flask of Resistance", "=ds=" .. AL["Trainer"] };
		{ 7, "s53899", "40079", "=q1=Lesser Flask of Toughness", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Transmutes"];
		{ 1, "s53777", "35624", "=q2=Transmute: Eternal Air to Earth", "=ds=" };
		{ 2, "s53776", "35622", "=q2=Transmute: Eternal Air to Water", "=ds=" };
		{ 3, "s53781", "35623", "=q2=Transmute: Eternal Earth to Air", "=ds=" };
		{ 4, "s53782", "35627", "=q2=Transmute: Eternal Earth to Shadow", "=ds=" };
		{ 5, "s53775", "35625", "=q2=Transmute: Eternal Fire to Life", "=ds=" };
		{ 6, "s53774", "35622", "=q2=Transmute: Eternal Fire to Water", "=ds=" };
		{ 7, "s53773", "36860", "=q2=Transmute: Eternal Life to Fire", "=ds=" };
		{ 8, "s53771", "35627", "=q2=Transmute: Eternal Life to Shadow", "=ds=" };
		{ 9, "s53779", "35624", "=q2=Transmute: Eternal Shadow to Earth", "=ds=" };
		{ 10, "s53780", "35625", "=q2=Transmute: Eternal Shadow to Life", "=ds=" };
		{ 11, "s53783", "35623", "=q2=Transmute: Eternal Water to Air", "=ds=" };
		{ 12, "s53784", "36860", "=q2=Transmute: Eternal Water to Fire", "=ds=" };
		{ 13, "s60350", "41163", "=q2=Transmute: Titanium", "=ds=" .. AL["Trainer"] };
		{ 16, "s66659", "36919", "=q4=Transmute: Cardinal Ruby", "=ds=" .. AL["Quest Reward"] };
		{ 17, "s66658", "36931", "=q4=Transmute: Ametrine", "=ds=" .. AL["Trainer"] };
		{ 18, "s66662", "36928", "=q4=Transmute: Dreadstone", "=ds=" .. AL["Trainer"] };
		{ 19, "s66664", "36934", "=q4=Transmute: Eye of Zul", "=ds=" .. AL["Trainer"] };
		{ 20, "s66660", "36922", "=q4=Transmute: King's Amber", "=ds=" .. AL["Trainer"] };
		{ 21, "s66663", "36925", "=q4=Transmute: Majestic Zircon", "=ds=" .. AL["Trainer"] };
		{ 22, "s54020", "40248", "=q3=Transmute: Eternal Might", "=ds=" .. AL["Trainer"] };
		{ 23, "s57427", "41334", "=q3=Transmute: Earthsiege Diamond", "=ds=" .. AL["Trainer"] };
		{ 24, "s57425", "41266", "=q3=Transmute: Skyflare Diamond", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Miscellaneous"];
		{ 1, "s47050", "35751", "=q4=Assassin's Alchemist Stone","=ds=" .. BabbleFaction["Exalted"] .. ": " .. BabbleFaction["Shattered Sun Offensive"] };
		{ 2, "s47046", "35748", "=q4=Guardian's Alchemist Stone","=ds=" .. BabbleFaction["Exalted"] .. ": " .. BabbleFaction["Shattered Sun Offensive"] };
		{ 3, "s47049", "35750", "=q4=Redeemer's Alchemist Stone","=ds=" .. BabbleFaction["Exalted"] .. ": " .. BabbleFaction["Shattered Sun Offensive"] };
		{ 4, "s47048", "35749", "=q4=Sorcerer's Alchemist Stone","=ds=" .. BabbleFaction["Exalted"] .. ": " .. BabbleFaction["Shattered Sun Offensive"] };
		{ 5, "s17632", "13503", "=q4=Alchemist's Stone", "=ds=" .. BabbleFaction["Revered"] ..": " .. BabbleFaction["The Sha'tar"] };
		{ 6, "s60403", "44323", "=q3=Indestructible Alchemist Stone", "=ds=" .. AL["Trainer"] };
		{ 7, "s60396", "44322", "=q3=Mercurial Alchemist Stone", "=ds=" .. AL["Trainer"] };
		{ 8, "s60405", "44324", "=q3=Mighty Alchemist Stone", "=ds=" .. AL["Trainer"] };
		{ 10, "s38070", "31080", "=q2=Mercurial Stone", "=ds=" .. AL["Trainer"] };
		{ 11, "s62409", "44958", "=q1=Ethereal Oil", "=ds=" .. AL["Trainer"] };
		{ 12, "s53812", "40195", "=q1=Pygmy Oil", "=ds=" .. AL["Trainer"] };
	};
};

---------------------
--- Blacksmithing ---
---------------------

AtlasLoot_Data["SmithingWRATH"] = {
	Name = BLACKSMITHING;
	Type = "Crafting";
	{
		Name = BabbleInventory["Armor"] .. " - Chest";
		{ 1, "s67130", "47592", "=q4=Breastplate of the White Knight", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 2, "s67091", "47591", "=q4=Breastplate of the White Knight", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 3, "s67095", "47593", "=q4=Sunforged Breastplate", "=ds=" .. AL["Drop"] .. ", " ..BabbleZone["Trial of the Crusader"] };
		{ 4, "s67134", "47594", "=q4=Sunforged Breastplate", "=ds=" .. AL["Drop"] .. ", " ..BabbleZone["Trial of the Crusader"] };
		{ 5, "s67093", "47589", "=q4=Titanium Razorplate", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 6, "s67132", "47590", "=q4=Titanium Razorplate", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 7, "s61008", "43586", "=q4=Icebane Chestguard", "=ds=" .. AL["Trainer"] };
		{ 8, "s56555", "42725", "=q3=Ornate Saronite Hauberk", "=ds=" .. AL["Trainer"] };
		{ 9, "s55311", "41353", "=q3=Savage Saronite Hauberk", "=ds=" .. AL["Trainer"] };
		{ 10, "s55058", "41129", "=q3=Brilliant Saronite Breastplate", "=ds=" .. AL["Trainer"] };
		{ 11, "s54553", "40672", "=q3=Tempered Saronite Breastplate", "=ds=" .. AL["Trainer"] };
		{ 12, "s54944", "40951", "=q2=Spiked Cobalt Chestpiece", "=ds=" .. AL["Trainer"] };
		{ 13, "s54981", "40959", "=q2=Reinforced Cobalt Chestpiece", "=ds=" .. AL["Drop"] .. ": " ..BabbleZone["Sholazar Basin"] };
		{ 14, "s52570", "39085", "=q2=Cobalt Chestpiece", "=ds=" .. AL["Trainer"] };
	};
	{ Name = BabbleInventory["Armor"] .. " - Feet";
		{ 1, "s70568", "49907", "=q4=Boots of Kingly Upheaval", "=ds=" .. AL["Vendor"] .. "" };
		{ 2, "s70566", "49906", "=q4=Hellfrozen Bonegrinders", "=ds=" .. AL["Vendor"] .. "" };
		{ 3, "s63188", "45559", "=q4=Battlelord's Plate Boots", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 4, "s63192", "45560", "=q4=Spiked Deathdealers", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 5, "s63190", "45561", "=q4=Treads of Destiny", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 6, "s55377", "41394", "=q4=Brilliant Titansteel Treads", "=ds=" .. AL["Trainer"] };
		{ 7, "s55375", "41391", "=q4=Spiked Titansteel Treads", "=ds=" .. AL["Trainer"] };
		{ 8, "s55376", "41392", "=q4=Tempered Titansteel Treads", "=ds=" .. AL["Trainer"] };
		{ 9, "s61010", "43588", "=q4=Icebane Treads", "=ds=" .. AL["Trainer"] };
		{ 10, "s56552", "42730", "=q3=Ornate Saronite Walkers", "=ds=" .. AL["Trainer"] };
		{ 11, "s55308", "41348", "=q3=Savage Saronite Walkers", "=ds=" .. AL["Trainer"] };
		{ 12, "s55057", "41128", "=q3=Brilliant Saronite Boots", "=ds=" .. AL["Trainer"] };
		{ 13, "s54552", "40671", "=q3=Tempered Saronite Boots", "=ds=" .. AL["Trainer"] };
		{ 14, "s54918", "40949", "=q2=Spiked Cobalt Boots", "=ds=" .. AL["Trainer"] };
		{ 15, "s52569", "39088", "=q2=Cobalt Boots", "=ds=" .. AL["Trainer"] };
		{ 16, "s70563", "49905", "=q4=Protectors of Life", "=ds=" .. AL["Vendor"] .. "" };
	};
	{
		Name = BabbleInventory["Armor"] .. " - Hands";
		{ 1, "s55301", "41357", "=q3=Daunting Handguards", "=ds=" .. AL["Trainer"] };
		{ 2, "s56553", "42724", "=q3=Ornate Saronite Gauntlets", "=ds=" .. AL["Trainer"] };
		{ 3, "s55300", "41356", "=q3=Righteous Gauntlets", "=ds=" .. AL["Trainer"] };
		{ 4, "s55309", "41349", "=q3=Savage Saronite Gauntlets", "=ds=" .. AL["Trainer"] };
		{ 5, "s55015", "41114", "=q3=Tempered Saronite Gauntlets", "=ds=" .. AL["Trainer"] };
		{ 6, "s55056", "41127", "=q3=Brilliant Saronite Gauntlets", "=ds=" .. AL["Trainer"] };
		{ 7, "s54945", "40952", "=q2=Spiked Cobalt Gauntlets", "=ds=" .. AL["Trainer"] };
		{ 8, "s55835", "41975", "=q2=Cobalt Gauntlets", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = BabbleInventory["Armor"] .. " - Head";
		{ 1, "s55374", "41388", "=q4=Brilliant Titansteel Helm", "=ds=" .. AL["Trainer"] };
		{ 2, "s55372", "41386", "=q4=Spiked Titansteel Helm", "=ds=" .. AL["Trainer"] };
		{ 3, "s55373", "41387", "=q4=Tempered Titansteel Helm", "=ds=" .. AL["Trainer"] };
		{ 4, "s55302", "41344", "=q3=Helm of Command", "=ds=" .. AL["Trainer"] };
		{ 5, "s56556", "42728", "=q3=Ornate Saronite Skullshield", "=ds=" .. AL["Trainer"] };
		{ 6, "s55312", "41350", "=q3=Savage Saronite Skullshield", "=ds=" .. AL["Trainer"] };
		{ 7, "s59441", "43870", "=q3=Brilliant Saronite Helm", "=ds=" .. AL["Trainer"] };
		{ 8, "s54555", "40673", "=q3=Tempered Saronite Helm", "=ds=" .. AL["Trainer"] };
		{ 9, "s54949", "40955", "=q2=Horned Cobalt Helm", "=ds=" .. AL["Trainer"] };
		{ 10, "s54979", "40957", "=q2=Reinforced Cobalt Helm", "=ds=" .. AL["Drop"] .. ": " .. BabbleZone["Grizzly Hills"] };
		{ 11, "s54917", "40942", "=q2=Spiked Cobalt Helm", "=ds=" .. AL["Trainer"] };
		{ 12, "s52571", "39084", "=q2=Cobalt Helm", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = BabbleInventory["Armor"] .. " - Legs";
		{ 1, "s70565", "49903", "=q4=Legplates of Painful Death", "=ds=" .. AL["Vendor"] .. "" };
		{ 2, "s70567", "49904", "=q4=Pillars of Might", "=ds=" .. AL["Vendor"] .. "" };
		{ 3, "s70562", "49902", "=q4=Puresteel Legplates", "=ds=" .. AL["Vendor"] .. "" };
		{ 4, "s55303", "41345", "=q3=Daunting Legplates", "=ds=" .. AL["Trainer"] };
		{ 5, "s56554", "42726", "=q3=Ornate Saronite Legplates", "=ds=" .. AL["Trainer"] };
		{ 6, "s55304", "41346", "=q3=Righteous Greaves", "=ds=" .. AL["Trainer"] };
		{ 7, "s55310", "41347", "=q3=Savage Saronite Legplates", "=ds=" .. AL["Trainer"] };
		{ 8, "s55187", "41190", "=q3=Legplates of Conquest", "=ds=" .. AL["Trainer"] };
		{ 9, "s55055", "41126", "=q3=Brilliant Saronite Legplates", "=ds=" .. AL["Trainer"] };
		{ 10, "s54554", "40674", "=q3=Tempered Saronite Legplates", "=ds=" .. AL["Trainer"] };
		{ 11, "s54947", "40943", "=q2=Spiked Cobalt Legplates", "=ds=" .. AL["Trainer"] };
		{ 12, "s54980", "40958", "=q2=Reinforced Cobalt Legplates", "=ds=" .. AL["Drop"] .. ": " .. BabbleZone["Zul'Drak"] };
		{ 13, "s52567", "39086", "=q2=Cobalt Legplates", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = BabbleInventory["Armor"] .. " - Shoulder";
		{ 1, "s56550", "42727", "=q3=Ornate Saronite Pauldrons", "=ds=" .. AL["Trainer"] };
		{ 2, "s55306", "41351", "=q3=Savage Saronite Pauldrons", "=ds=" .. AL["Trainer"] };
		{ 3, "s59440", "43865", "=q3=Brilliant Saronite Pauldrons", "=ds=" .. AL["Trainer"] };
		{ 4, "s54556", "40675", "=q3=Tempered Saronite Shoulders", "=ds=" .. AL["Trainer"] };
		{ 5, "s54941", "40950", "=q2=Spiked Cobalt Shoulders", "=ds=" .. AL["Trainer"] };
		{ 6, "s54978", "40956", "=q2=Reinforced Cobalt Shoulders", "=ds=" .. AL["Drop"] .. ": " .. BabbleZone["Dragonblight"] };
		{ 7, "s52572", "39083", "=q2=Cobalt Shoulders", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = BabbleInventory["Armor"] .. " - Waist";
		{ 1, "s63187", "45550", "=q4=Belt of the Titans", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 2, "s63191", "45551", "=q4=Indestructible Plate Girdle", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 3, "s63189", "45552", "=q4=Plate Girdle of Righteousness", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 4, "s61009", "43587", "=q4=Icebane Girdle", "=ds=" .. AL["Trainer"] };
		{ 5, "s56551", "42729", "=q3=Ornate Saronite Waistguard", "=ds=" .. AL["Trainer"] };
		{ 6, "s55307", "41352", "=q3=Savage Saronite Waistguard", "=ds=" .. AL["Trainer"] };
		{ 7, "s59436", "43860", "=q3=Brilliant Saronite Belt", "=ds=" .. AL["Trainer"] };
		{ 8, "s54551", "40669", "=q3=Tempered Saronite Belt", "=ds=" .. AL["Trainer"] };
		{ 9, "s54946", "40953", "=q2=Spiked Cobalt Belt", "=ds=" .. AL["Trainer"] };
		{ 10, "s52568", "39087", "=q2=Cobalt Belt", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = BabbleInventory["Armor"] .. " - Wrist";
		{ 1, "s67131", "47571", "=q4=Saronite Swordbreakers", "=ds=" .. AL["Drop"] .. ", " ..BabbleZone["Trial of the Crusader"] };
		{ 2, "s67092", "47570", "=q4=Saronite Swordbreakers", "=ds=" .. AL["Drop"] .. ", " ..BabbleZone["Trial of the Crusader"] };
		{ 3, "s67096", "47574", "=q4=Sunforged Bracers", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 4, "s67135", "47575", "=q4=Sunforged Bracers", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 5, "s67094", "47572", "=q4=Titanium Spikeguards", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 6, "s67133", "47573", "=q4=Titanium Spikeguards", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 7, "s56549", "42723", "=q3=Ornate Saronite Bracers", "=ds=" .. AL["Trainer"] };
		{ 8, "s55305", "41354", "=q3=Savage Saronite Bracers", "=ds=" .. AL["Trainer"] };
		{ 9, "s55298", "41355", "=q3=Vengeance Bindings", "=ds=" .. AL["Trainer"] };
		{ 10, "s55017", "41116", "=q3=Tempered Saronite Bracers", "=ds=" .. AL["Trainer"] };
		{ 11, "s59438", "43864", "=q3=Brilliant Saronite Bracers", "=ds=" .. AL["Trainer"] };
		{ 12, "s54948", "40954", "=q2=Spiked Cobalt Bracers", "=ds=" .. AL["Trainer"] };
		{ 13, "s55834", "41974", "=q2=Cobalt Bracers", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = "Weapon - OneHanded";
		{ 1, "s63182", "45085", "=q4=Titansteel Spellblade", "=ds=" .. AL["Trainer"] };
		{ 2, "s55370", "41383", "=q4=Titansteel Bonecrusher", "=ds=" .. AL["Trainer"] };
		{ 3, "s55371", "41384", "=q4=Titansteel Guardian", "=ds=" .. AL["Trainer"] };
		{ 4, "s56234", "42435", "=q4=Titansteel Shanker", "=ds=" .. AL["Trainer"] };
		{ 5, "s55183", "41186", "=q3=Corroded Saronite Edge", "=ds=" .. AL["Trainer"] };
		{ 6, "s55184", "41187", "=q3=Corroded Saronite Woundbringer", "=ds=" .. AL["Trainer"] };
		{ 7, "s56280", "42443", "=q3=Cudgel of Saronite Justice", "=ds=" .. AL["Trainer"] };
		{ 8, "s55182", "41185", "=q3=Furious Saronite Beatstick", "=ds=" .. AL["Trainer"] };
		{ 9, "s59442", "43871", "=q3=Saronite Spellblade", "=ds=" .. AL["Trainer"] };
		{ 10, "s55181", "41184", "=q3=Saronite Shiv", "=ds=" .. AL["Trainer"] };
		{ 11, "s55179", "41183", "=q3=Saronite Ambusher", "=ds=" .. AL["Trainer"] };
		{ 12, "s55177", "41182", "=q3=Savage Cobalt Slicer", "=ds=" .. AL["Trainer"] };
		{ 13, "s55204", "41243", "=q2=Notched Cobalt War Axe", "=ds=" .. AL["Trainer"] };
		{ 14, "s55201", "41240", "=q2=Cobalt Tenderizer", "=ds=" .. AL["Trainer"] };
		{ 15, "s55200", "41239", "=q2=Sturdy Cobalt Quickblade", "=ds=" .. AL["Trainer"] };

	};
	{
		Name = "Weapon - TwoHanded";
		{ 1, "s55369", "41257", "=q4=Titansteel Destroyer", "=ds=" .. AL["Trainer"] };
		{ 2, "s55185", "41188", "=q3=Saronite Mindcrusher", "=ds=" .. AL["Trainer"] };
		{ 3, "s55174", "41181", "=q3=Honed Cobalt Cleaver", "=ds=" .. AL["Trainer"] };
		{ 4, "s55203", "41242", "=q2=Forged Cobalt Claymore", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = "Weapon - Thrown";
		{ 1, "s55206", "41245", "=q3=Deadly Saronite Dirk", "=ds=" .. AL["Trainer"] };
		{ 2, "s55202", "41241", "=q2=Sure-fire Shuriken", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = "Shield";
		{ 1, "s56400", "42508", "=q4=Titansteel Shield Wall", "=ds=" .. AL["Trainer"] };
		{ 2, "s55014", "41113", "=q3=Saronite Bulwark", "=ds=" .. AL["Trainer"] };
		{ 3, "s54557", "40670", "=q3=Saronite Defender", "=ds=" .. AL["Trainer"] };
		{ 4, "s54550", "40668", "=q2=Cobalt Triangle Shield", "=ds=" .. AL["Trainer"] };
		{ 5, "s55013", "41117", "=q3=Saronite Protector", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Item Enhancements"];
		{ 1, "s55628", "INV_Jewelcrafting_ThoriumSetting", "=ds=Socket Bracer", "=ds=" .. AL["Trainer"] };
		{ 2, "s55641", "INV_GAUNTLETS_61", "=ds=Socket Gloves", "=ds=" .. AL["Trainer"] };
		{ 3, "s55656", "41611", "=q3=Eternal Belt Buckle", "=ds=" .. AL["Trainer"] };
		{ 4, "s62202", "44936", "=q3=Titanium Plating", "=ds=" .. AL["Vendor"] };
		{ 5, "s56357", "42500", "=q2=Titanium Shield Spike", "=ds=" .. AL["Trainer"] };
		{ 6, "s55839", "41976", "=q2=Titanium Weapon Chain", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Miscellaneous"];
		{ 1, "s59406", "43853", "=q2=Titanium Skeleton Key", "=ds=" .. AL["Trainer"] };
		{ 2, "s59405", "43854", "=q2=Cobalt Skeleton Key", "=ds=" .. AL["Trainer"] };
		{ 3, "s55732", "41745", "=q1=Titanium Rod", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = ARMORSMITH;
		{ 1, "s55186", "41189", "=q3=Chestplate of Conquest", "=ds=" .. AL["Trainer"] };
		{ 2, "s55187", "41190", "=q3=Legplates of Conquest", "=ds=#sr# 415" };
		{ 3, "s55186", "41189", "=q3=Chestplate of Conquest", "=ds=#sr# 415" };
		{ 4, "s34530", "23564", "=q4=Twisting Nether Chain Shirt", "=ds=#sr# 375" };
		{ 5, "s34534", "28484", "=q4=Bulwark of Kings", "=ds=#sr# 375" };
		{ 6, "s36257", "28485", "=q4=Bulwark of the Ancient Kings", "=ds=#sr# 375" };
		{ 7, "s36256", "23565", "=q4=Embrace of the Twisting Nether", "=ds=#sr# 375" };
		{ 8, "s36129", "30074", "=q3=Heavy Earthforged Breastplate", "=ds=#sr# 330" };
		{ 9, "s36130", "30076", "=q3=Stormforged Hauberk", "=ds=#sr# 330" };
		{ 10, "s34533", "28483", "=q4=Breastplate of Kings", "=ds=#sr# 350" };
		{ 11, "s34529", "23563", "=q4=Nether Chain Shirt", "=ds=#sr# 350" };
		{ 12, "s36122", "30069", "=q3=Earthforged Leggings", "=ds=#sr# 260" };
		{ 13, "s36124", "30070", "=q3=Windforged Leggings", "=ds=#sr# 260" };

	};
	{
		Name = WEAPONSMITH;
		Name = "Weapon - Twohanded";
		{ 1, "s36125", "30071", "=q3=Light Earthforged Blade", "=ds=#sr# 260" };
		{ 2, "s36128", "30073", "=q3=Light Emberforged Hammer", "=ds=#sr# 260" };
		{ 3, "s36126", "30072", "=q3=Light Skyforged Axe", "=ds=#sr# 260" };
		{ 4, "s55183", "41186", "=q3=Corroded Saronite Edge", "=ds=#sr# 415" };
		{ 5, "s55184", "41187", "=q3=Corroded Saronite Woundbringer", "=ds=#sr# 415" };
		{ 6, "s55185", "41188", "=q3=Saronite Mindcrusher", "=ds=#sr# 415" };
	};
	{
		Name = AXESMITH;
		{ 1, "s36135", "30088", "=q3=Skyforged Great Axe", "=ds=#sr# 330" };
		{ 2, "s36134", "30087", "=q3=Stormforged Axe", "=ds=#sr# 330" };
		{ 3, "s34543", "28434", "=q4=Lunar Crescent", "=ds=#sr# 350" };
		{ 4, "s34541", "28431", "=q4=The Planar Edge", "=ds=#sr# 350" };
		{ 5, "s34542", "28432", "=q4=Black Planar Edge", "=ds=#sr# 375" };
		{ 6, "s36261", "28436", "=q4=Bloodmoon", "=ds=#sr# 375" };
		{ 7, "s34544", "28435", "=q4=Mooncleaver", "=ds=#sr# 375" };
		{ 8, "s36260", "28433", "=q4=Wicked Edge of the Planes", "=ds=#sr# 375" };
	};
	{
		Name = HAMMERSMITH;
		{ 1, "s36137", "30093", "=q3=Great Earthforged Hammer", "=ds=#sr# 330" };
		{ 2, "s36136", "30089", "=q3=Lavaforged Warhammer", "=ds=#sr# 330" };
		{ 3, "s34545", "28437", "=q4=Drakefist Hammer", "=ds=#sr# 350" };
		{ 4, "s34547", "28440", "=q4=Thunder", "=ds=#sr# 350" };
		{ 5, "s34548", "28441", "=q4=Deep Thunder", "=ds=#sr# 375" };
		{ 6, "s34546", "28438", "=q4=Dragonmaw", "=ds=#sr# 375" };
		{ 7, "s36262", "28439", "=q4=Dragonstrike", "=ds=#sr# 375" };
		{ 8, "s36263", "28442", "=q4=Stormherald", "=ds=#sr# 375" };
	};
	{
		Name = SWORDSMITH;
		{ 1, "s36133", "30086", "=q3=Stoneforged Claymore", "=ds=#sr# 330" };
		{ 2, "s36131", "30077", "=q3=Windforged Rapier", "=ds=#sr# 330" };
		{ 3, "s34535", "28425", "=q4=Fireguard", "=ds=#sr# 350" };
		{ 4, "s34538", "28428", "=q4=Lionheart Blade", "=ds=#sr# 350" };
		{ 5, "s36258", "28427", "=q4=Blazefury", "=ds=#sr# 375" };
		{ 6, "s34537", "28426", "=q4=Blazeguard", "=ds=#sr# 375" };
		{ 7, "s34540", "28429", "=q4=Lionheart Champion", "=ds=#sr# 375" };
		{ 8, "s36259", "28430", "=q4=Lionheart Executioner", "=ds=#sr# 375" };
	};
};

---------------
--- Cooking ---
---------------

AtlasLoot_Data["CookingWRATH"] = {
	Name = COOKING;
	Type = "CraftingNoBF";
	{
		Name = COOKING;
		{ 1, "s57423", "43015", "=q1=Fish Feast", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s58527", "43478", "=q1=Gigantic Feast", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s58528", "43480", "=q1=Small Feast", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s57441", "42999", "=q1=Blackened Dragonfin", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s57438", "42997", "=q1=Blackened Worg Steak", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s64358", "45932", "=q1=Black Jelly", "=ds=" .. AL["Trainer"] };
		{ 7, "s57435", "43004", "=q1=Critter Bites", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 8, "s57439", "42998", "=q1=Cuttlesteak", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 9, "s57442", "43000", "=q1=Dragonfin Filet", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 10, "s45568", "34767", "=q1=Firecracker Salmon", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 11, "s57436", "42995", "=q1=Hearty Rhino", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 12, "s45570", "34769", "=q1=Imperial Manta Steak", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 13, "s45555", "34754", "=q1=Mega Mammoth Meal", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 14, "s45559", "34758", "=q1=Mighty Rhino Dogs", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 15, "s45567", "34766", "=q1=Poached Northern Sculpin", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 16, "s57434", "42994", "=q1=Rhinolicious Wyrmsteak", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 17, "s57437", "42996", "=q1=Snapper Extreme", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 18, "s57440", "43005", "=q1=Spiced Mammoth Treats", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 19, "s45557", "34756", "=q1=Spiced Wyrm Burger", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 20, "s45571", "34768", "=q1=Spicy Blue Nettlefish", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 21, "s57433", "42993", "=q1=Spicy Fried Herring", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 22, "s45556", "34755", "=q1=Tender Shoveltusk Steak", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 23, "s57443", "43001", "=q1=Tracker Snacks", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 24, "s45558", "34757", "=q1=Very Burnt Worg", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 25, "s62350", "44953", "=q1=Worg Tartare", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 26, "s45554", "34753", "=q1=Great Feast", "=ds=" .. AL["Trainer"] };
		{ 27, "s53056", "39520", "=q1=Kungaloosh", "=ds=" .. AL["Quest"] .. "" };
		{ 28, "s58523", "43491", "=q1=Bad Clams", "=ds=" .. AL["Drop"] .. "" };
		{ 29, "s45569", "42942", "=q1=Baked Manta Ray", "=ds=" .. AL["Trainer"] };
		{ 30, "s58065", "43268", "=q1=Dalaran Clam Chowder", "=ds=" .. AL["Trainer"] };
	};
};

------------------
--- Enchanting ---
------------------

AtlasLoot_Data["EnchantingWRATH"] = {
	Name = ENCHANTING;
	{
		Name = AL["Enchant Boots"];
		{ 1, "s60763", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Greater Assault","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s47901", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Tuskarr's Vitality","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s44589", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Superior Agility", "=ds=" .. AL["Trainer"] };
		{ 4, "s44508", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Greater Spirit", "=ds=" .. AL["Trainer"] };
		{ 5, "s44584", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Greater Vitality", "=ds=" .. AL["Trainer"] };
		{ 6, "s60606", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Assault", "=ds=" .. AL["Trainer"] };
		{ 7, "s44528", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Greater Fortitude", "=ds=" .. AL["Trainer"] };
		{ 8, "s60623", "Spell_Holy_GreaterHeal", "=ds=Enchant Boots - Icewalker", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Enchant Bracer"];
		{ 1, "s62256", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracers - Major Stamina","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s60767", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracers - Superior Spellpower","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s44575", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracers - Greater Assault","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s44593", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracers - Major Spirit", "=ds=" .. AL["Trainer"] .. "" };
		{ 5, "s44598", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracers - Expertise", "=ds=" .. AL["Trainer"] };
		{ 6, "s44616", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracers - Greater Stats", "=ds=" .. AL["Trainer"] };
		{ 7, "s44635", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracers - Greater Spellpower", "=ds=" .. AL["Trainer"] };
		{ 8, "s44555", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracers - Exceptional Intellect", "=ds=" .. AL["Trainer"] };
		{ 9, "s60616", "Spell_Holy_GreaterHeal", "=ds=Enchant Bracers - Striking", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Enchant Chest"];
		{ 1, "s27958", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Exceptional Mana", "=ds=" .. AL["Trainer"] .. "" };
		{ 2, "s44588", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Exceptional Resilience","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s60692", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Powerful Stats","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s47900", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Super Health", "=ds=" .. AL["Trainer"] };
		{ 5, "s44509", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Greater Mana Restoration", "=ds=" .. AL["Trainer"] };
		{ 6, "s47766", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Greater Defense", "=ds=" .. AL["Trainer"] };
		{ 7, "s44492", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Mighty Health", "=ds=" .. AL["Trainer"] };
		{ 8, "s44623", "Spell_Holy_GreaterHeal", "=ds=Enchant Chest - Super Stats", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Enchant Cloak"];
		{ 1, "s60609", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Speed", "=ds=" .. AL["Trainer"] .. "" };
		{ 2, "s44631", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Shadow Armor","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s47899", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Wisdom","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s44591", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Titanweave","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s47898", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Greater Speed","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s47672", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Mighty Armor","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s60663", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Major Agility", "=ds=" .. AL["Trainer"] };
		{ 8, "s44596", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Superior Arcane Resistance", "=ds=" .. AL["Drop"] };
		{ 9, "s44556", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Superior Fire Resistance", "=ds=" .. AL["Drop"] };
		{ 10, "s44483", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Superior Frost Resistance", "=ds=" .. AL["Drop"] };
		{ 11, "s44494", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Superior Nature Resistance", "=ds=" .. AL["Drop"] };
		{ 12, "s44590", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Superior Shadow Resistance", "=ds=" .. AL["Drop"] };
		{ 13, "s44500", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Superior Agility", "=ds=" .. AL["Trainer"] };
		{ 14, "s44582", "Spell_Holy_GreaterHeal", "=ds=Enchant Cloak - Spell Piercing", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Enchant Gloves"];
		{ 1, "s71692", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Angler", "=ds=" .. AL["Drop"] .. "" };
		{ 2, "s44625", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Armsman","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s60668", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Crusher", "=ds=" .. AL["Trainer"] };
		{ 4, "s44529", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Major Agility", "=ds=" .. AL["Trainer"] .. "" };
		{ 5, "s44488", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Precision", "=ds=" .. AL["Trainer"] };
		{ 6, "s44484", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Expertise", "=ds=" .. AL["Trainer"] };
		{ 7, "s44513", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Greater Assault", "=ds=" .. AL["Trainer"] };
		{ 8, "s44506", "Spell_Holy_GreaterHeal", "=ds=Enchant Gloves - Gatherer", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Enchant Ring"];
		{ 1, "s44645", "Spell_Holy_GreaterHeal", "=ds=Enchant Ring - Assault", "=ds=" .. AL["Trainer"] };
		{ 2, "s44636", "Spell_Holy_GreaterHeal", "=ds=Enchant Ring - Greater Spellpower", "=ds=" .. AL["Trainer"] };
		{ 3, "s59636", "Spell_Holy_GreaterHeal", "=ds=Enchant Ring - Stamina", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Enchant Shield"];
		{ 1, "s44489", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Defense", "=ds=" .. AL["Trainer"] };
		{ 2, "s60653", "Spell_Holy_GreaterHeal", "=ds=Enchant Shield - Greater Intellect", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Enchant 2H Weapon"];
		{ 1, "s60691", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Massacre","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s44595", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Scourgebane","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s44630", "Spell_Holy_GreaterHeal", "=ds=Enchant 2H Weapon - Greater Savagery", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Enchant Weapon"];
		{ 1, "s64441", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Blade Ward", "=ds=#sr# 450" };
		{ 2, "s64579", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Blood Draining", "=ds=#sr# 450" };
		{ 3, "s59619", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Accuracy","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s59621", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Berserking","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s59625", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Black Magic","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s44576", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Lifeward","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s60714", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Mighty Spellpower","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 8, "s60707", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Superior Potency","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 9, "s44621", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Giant Slayer","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 10, "s44524", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Icebreaker","=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 11, "s44633", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Exceptional Agility", "=ds=" .. AL["Trainer"] };
		{ 12, "s44510", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Exceptional Spirit", "=ds=" .. AL["Trainer"] };
		{ 13, "s44629", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Exceptional Spellpower", "=ds=" .. AL["Trainer"] };
		{ 14, "s60621", "Spell_Holy_GreaterHeal", "=ds=Enchant Weapon - Greater Potency", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = "Enchant Staff";
		{ 1, "s62948", "Spell_Holy_GreaterHeal", "=ds=Enchant Staff - Greater Spellpower", "=ds=" };
		{ 2, "s62959", "Spell_Holy_GreaterHeal", "=ds=Enchant Staff - Spellpower", "=ds=" };
	};
	{
		Name = AL["Miscellaneous"];
		{ 1, "s28028", "22459", "=q4=Void Sphere", "=ds=#sr# 350" };
		{ 2, "s60619", "44452", "=q3=Runed Titanium Rod", "=ds=" .. AL["Trainer"] };
	};
};

-------------------
--- Engineering ---
-------------------

AtlasLoot_Data["EngineeringWRATH"] = {
	Name = ENGINEERING;
	Type = "Crafting";
	{
		Name = "Ammo";
		{ 1, "s72953", "52021", "=q4=Iceblade Arrow", "=ds=#p17#" };
		{ 2, "s72952", "52020", "=q4=Shatter Rounds", "=ds=#p18#" };
		{ 3, "s56475", "41165", "=q1=Saronite Arrow Maker", "=ds=#sr# 415" };
		{ 4, "s56474", "41164", "=q1=Ultrasafe Bullet Machine", "=ds=#sr# 410" };
	};
	{
		Name = BabbleInventory["Armor"];
		{ 1, "s56480", "42549", "=q4=Armored Titanium Goggles", "=ds=#sr# 440" };
		{ 2, "s56483", "42552", "=q4=Charged Titanium Specs", "=ds=#sr# 440" };
		{ 3, "s56487", "42555", "=q4=Electroflux Sight Enhancers", "=ds=#sr# 440" };
		{ 4, "s56486", "42554", "=q4=Greensight Gogs", "=ds=#sr# 440" };
		{ 5, "s56574", "42551", "=q4=Truesight Ice Blinders", "=ds=#sr# 440" };
		{ 6, "s56484", "42553", "=q4=Visage Liquification Goggles", "=ds=#sr# 440" };
		{ 7, "s56481", "42550", "=q4=Weakness Spectralizers", "=ds=#sr# 440" };
		{ 8, "s62271", "44949", "=q4=Unbreakable Healing Amplifiers", "=ds=#sr# 440" };
		{ 9, "s56469", "41121", "=q3=Gnomish Lightning Generator", "=ds=#sr# 425" };
		{ 10, "s56473", "40895", "=q3=Gnomish X-Ray Specs", "=ds=#sr# 425" };
		{ 11, "s61483", "44742", "=q3=Mechanized Snow Goggles", "=ds=#sr# 420" };
		{ 12, "s56467", "40865", "=q3=Noise Machine", "=ds=#sr# 420" };
		{ 13, "s56466", "40767", "=q3=Sonic Booster", "=ds=#sr# 420" };
	};
	{
		Name = AL["Explosives"];
		{ 1, "s56514", "42641", "=q1=Global Thermal Sapper Charge", "=ds=#sr# 425" };
		{ 2, "s56468", "44951", "=q1=Box of Bombs", "=ds=#sr# 405" };
		{ 3, "s56463", "40536", "=q1=Explosive Decoy", "=ds=#sr# 375" };
		{ 4, "s56460", "40771", "=q1=Cobalt Frag Bomb", "=ds=#sr# 350" };
	};
	{
		Name = AL["Item Enhancements"];
		{ 1, "s56478", "41167", "=q3=Heartseeker Scope", "=ds=#sr# 430" };
		{ 2, "s56470", "41146", "=q3=Sun Scope", "=ds=#sr# 425" };
		{ 3, "s61471", "44739", "=q1=Diamond-cut Refractor Scope", "=ds=#sr# 390" };
		{ 16, "s55016", "Trade_Engineering", "=ds=Nitro Boosts", "=ds=#sr# 405" };
		{ 17, "s54998", "Trade_Engineering", "=ds=Hand-Mounted Pyro Rocket", "=ds=#sr# 400" };
		{ 18, "s54999", "Trade_Engineering", "=ds=Hyperspeed Accelerators", "=ds=#sr# 400" };
		{ 19, "s63770", "Trade_Engineering", "=ds=Reticulated Armor Webbing", "=ds=#sr# 400" };
		{ 20, "s54736", "Trade_Engineering", "=ds=Personal Electromagnetic Pulse Generator", "=ds=#sr# 390" };
		{ 21, "s54793", "Trade_Engineering", "=ds=Belt-Clipped Spynoculars", "=ds=#sr# 380" };
		{ 22, "s55002", "Trade_Engineering", "=ds=Flexweave Underlay", "=ds=#sr# 380" };
		{ 23, "s63765", "Trade_Engineering", "=ds=Springy Arachnoweave", "=ds=#sr# 380" };
	};
	{
		Name = BabbleInventory["Weapon"];
		{ 1, "s56479", "41168", "=q4=Armor Plated Combat Shotgun", "=ds=#sr# 450" };
		{ 2, "s60874", "44504", "=q4=Nesingwary 4000", "=ds=#sr# 450" };
		{ 3, "s54353", "39688", "=q3=Mark \"S\" Boomstick", "=ds=#sr# 400" };
	};
	{
		Name = AL["Miscellaneous"];
		{ 1, "s68067", "49040", "=q4=Jeeves", "=ds=#sr# 450" };
		{ 2, "s60866", "41508", "=q4=Mechano-hog", "=ds=#sr# 450" };
		{ 3, "s60867", "44413", "=q4=Mekgineer's Chopper", "=ds=#sr# 450" };
		{ 4, "s56472", "40768", "=q3=MOLL-E", "=ds=#sr# 425" };
		{ 5, "s67920", "48933", "=q3=Wormhole Generator: Northrend", "=ds=#sr# 415" };
		{ 6, "s30349", "23775", "=q3=Titanium Toolbox", "=ds=#sr# 405" };
	};
	{
		Name = AL["Reagents"];
		{ 1, "s56349", "39681", "=q1=Handful of Cobalt Bolts", "=ds=" .. AL["Trainer"] .. "" };
		{ 2, "s56471", "39683", "=q1=Froststeel Tube", "=ds=#sr# 390" };
		{ 3, "s56464", "39682", "=q1=Overcharged Capacitor", "=ds=#sr# 375" };
		{ 4, "s53281", "39690", "=q1=Volatile Blasting Trigger", "=ds=" .. AL["Trainer"] .. "" };
	};
	{
		Name = GNOMISH;
		{ 1, "s72953", "52021", "=q4=Iceblade Arrow", "=ds=#sr# 450" };
		{ 2, "s30575", "23829", "=q4=Gnomish Battle Goggles", "=ds=#sr# 375" };
		{ 3, "s30574", "23828", "=q4=Gnomish Power Goggles", "=ds=#sr# 375" };
		{ 4, "s56473", "40895", "=q3=Gnomish X-Ray Specs", "=ds=#sr# 425" };
		{ 5, "s30570", "23825", "=q3=Nigh-Invulnerability Belt", "=ds=#sr# 350" };
		{ 6, "s30569", "23835", "=q3=Gnomish Poultryizer", "=ds=#sr# 340" };
		{ 7, "s36955", "30544", "=q2=Ultrasafe Transporter - Toshley's Station", "=ds=#sr# 350" };
		{ 8, "s23489", "18986", "=q2=Ultrasafe Transporter - Gadgetzan", "=ds=#sr# 260" };
		{ 9, "s23129", "18660", "=q2=World Enlarger", "=ds=#sr# 260" };
		{ 10, "s12907", "10726", "=q2=Gnomish Mind Control Cap", "=ds=#sr# 235" };
		{ 11, "s12905", "10724", "=q2=Gnomish Rocket Boots", "=ds=#sr# 225" };
		{ 12, "s12903", "10721", "=q2=Gnomish Harm Prevention Belt", "=ds=#sr# 215" };
		{ 13, "s12897", "10545", "=q2=Gnomish Goggles", "=ds=#sr# 210" };
		{ 14, "s30568", "23841", "=q1=Gnomish Flame Turret", "=ds=#sr# 325" };
		{ 15, "s23096", "18645", "=q1=Alarm-O-Bot", "=ds=#sr# 265" };
		{ 16, "s12759", "10645", "=q1=Gnomish Death Ray", "=ds=#sr# 240" };
		{ 17, "s12906", "10725", "=q1=Gnomish Battle Chicken", "=ds=#sr# 230" };
		{ 18, "s12902", "10720", "=q1=Gnomish Net-o-Matic Projector", "=ds=#sr# 210" };
		{ 19, "s12899", "10716", "=q1=Gnomish Shrink Ray", "=ds=#sr# 205" };
		{ 20, "s12895", "10713", "=q1=Inlaid Mithril Cylinder Plans", "=ds=#sr# 205" };
	};
	{
		Name = GOBLIN;
		{ 1, "s72952", "52020", "=q4=Shatter Rounds", "=ds=#sr# 450" };
		{ 2, "s30565", "23838", "=q4=Foreman's Enchanted Helmet", "=ds=#sr# 375" };
		{ 3, "s30566", "23839", "=q4=Foreman's Reinforced Helmet", "=ds=#sr# 375" };
		{ 4, "s30563", "23836", "=q3=Goblin Rocket Launcher", "=ds=#sr# 350" };
		{ 5, "s36954", "30542", "=q2=Dimensional Ripper - Area 52", "=ds=#sr# 350" };
		{ 6, "s23486", "18984", "=q2=Dimensional Ripper - Everlook", "=ds=#sr# 260" };
		{ 7, "s12758", "10588", "=q2=Goblin Rocket Helmet", "=ds=#sr# 245" };
		{ 8, "s8895", "7189", "=q2=Goblin Rocket Boots", "=ds=#sr# 225" };
		{ 9, "s12718", "10543", "=q2=Goblin Construction Helmet", "=ds=#sr# 205" };
		{ 10, "s12717", "10542", "=q2=Goblin Mining Helmet", "=ds=#sr# 205" };
		{ 11, "s56514", "42641", "=q1=Global Thermal Sapper Charge", "=ds=#sr# 425" };
		{ 12, "s30560", "23827", "=q1=Super Sapper Charge", "=ds=#sr# 340" };
		{ 13, "s30558", "23826", "=q1=The Bigger One", "=ds=#sr# 325" };
		{ 14, "s23078", "18587", "=q1=Goblin Jumper Cables XL", "=ds=#sr# 265" };
		{ 15, "s12908", "10727", "=q1=Goblin Dragon Gun", "=ds=#sr# 240" };
		{ 16, "s12754", "10586", "=q1=The Big One", "=ds=#sr# 235" };
		{ 17, "s12755", "10587", "=q1=Goblin Bomb Dispenser", "=ds=#sr# 230" };
		{ 18, "s12716", "10577", "=q1=Goblin Mortar", "=ds=#sr# 205" };
		{ 19, "s12715", "10644", "=q1=Goblin Rocket Fuel Recipe", "=ds=#sr# 205" };
		{ 20, "s12760", "10646", "=q1=Goblin Sapper Charge", "=ds=#sr# 205" };
		{ 21, "s13240", "10577", "=q1=The Mortar: Reloaded", "=ds=#sr# 205" };
	};
};

---------------------
--- Jewelcrafting ---
---------------------


AtlasLoot_Data["JewelcraftingWRATH"] = {
	Name = JEWELCRAFTING;
	Type = "CraftingNoBF";
	{
		Name = AL["Red Gems"];
		{ 1, "s66447", "40111", "=q4=Bold Cardinal Ruby", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s66449", "40114", "=q4=Bright Cardinal Ruby", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s66448", "40112", "=q4=Delicate Cardinal Ruby", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s66453", "40116", "=q4=Flashing Cardinal Ruby", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s66451", "40117", "=q4=Fractured Cardinal Ruby", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s66450", "40118", "=q4=Precise Cardinal Ruby", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s66446", "40113", "=q4=Runed Cardinal Ruby", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 8, "s66452", "40115", "=q4=Subtle Cardinal Ruby", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 9, "s53830", "39996", "=q3=Bold Scarlet Ruby", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 10, "s53947", "39999", "=q3=Bright Scarlet Ruby", "=ds=" .. AL["Trainer"] };
		{ 11, "s53945", "39997", "=q3=Delicate Scarlet Ruby", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 12, "s53949", "40001", "=q3=Flashing Scarlet Ruby", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 13, "s53950", "40002", "=q3=Fractured Scarlet Ruby", "=ds=" .. AL["Drop"] .. " - " .. BabbleZone["The Storm Peaks"] };
		{ 14, "s53951", "40003", "=q3=Precise Scarlet Ruby", "=ds=" .. BabbleBoss["Herald Volazj"] .. " (" .. AL["Heroic"] ..")" };
		{ 15, "s53946", "39998", "=q3=Runed Scarlet Ruby", "=ds=" .. BabbleFaction["Kirin Tor"] ..": " .. BabbleFaction["Exalted"] };
		{ 16, "s53843", "39907", "=q2=Subtle Bloodstone", "=ds=" .. AL["Trainer"] };
		{ 17, "s53831", "39900", "=q2=Bold Bloodstone", "=ds=" .. AL["Trainer"] };
		{ 18, "s53835", "39906", "=q2=Bright Bloodstone", "=ds=" .. AL["Trainer"] };
		{ 19, "s53832", "39905", "=q2=Delicate Bloodstone", "=ds=" .. AL["Trainer"] };
		{ 20, "s53844", "39908", "=q2=Flashing Bloodstone", "=ds=" .. AL["Trainer"] };
		{ 21, "s53845", "39909", "=q2=Fractured Bloodstone", "=ds=" .. AL["Trainer"] };
		{ 22, "s54017", "39910", "=q2=Precise Bloodstone", "=ds=" .. AL["Trainer"] };
		{ 23, "s53834", "39911", "=q2=Runed Bloodstone", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Blue Gems"];
		{ 1, "s66500", "40121", "=q4=Lustrous Majestic Zircon", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s66497", "40119", "=q4=Solid Majestic Zircon", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s66498", "40120", "=q4=Sparkling Majestic Zircon", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s66499", "40122", "=q4=Stormy Majestic Zircon", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s53954", "40010", "=q3=Lustrous Sky Sapphire", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s53952", "40008", "=q3=Solid Sky Sapphire", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s53953", "40009", "=q3=Sparkling Sky Sapphire", "=ds=" .. AL["Trainer"] };
		{ 8, "s53955", "40011", "=q3=Stormy Sky Sapphire", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 9, "s53941", "39927", "=q2=Lustrous Chalcedony", "=ds=" .. AL["Trainer"] };
		{ 10, "s53934", "39919", "=q2=Solid Chalcedony", "=ds=" .. AL["Trainer"] };
		{ 11, "s53940", "39920", "=q2=Sparkling Chalcedony", "=ds=" .. AL["Trainer"] };
		{ 12, "s53943", "39932", "=q2=Stormy Chalcedony", "=ds=1250 #faction#" };
	};
	{
		Name = AL["Yellow Gems"];
		{ 1, "s66503", "40123", "=q4=Brilliant King's Amber", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s66505", "40127", "=q4=Mystic King's Amber", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s66506", "40128", "=q4=Quick King's Amber", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s66501", "40125", "=q4=Rigid King's Amber", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s66502", "40124", "=q4=Smooth King's Amber", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s66504", "40126", "=q4=Thick King's Amber", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s53956", "40012", "=q3=Brilliant Autumn's Glow", "=ds=" .. AL["Trainer"] };
		{ 8, "s53960", "40016", "=q3=Mystic Autumn's Glow", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 9, "s53961", "40017", "=q3=Quick Autumn's Glow", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 10, "s53958", "40014", "=q3=Rigid Autumn's Glow", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 11, "s53957", "40013", "=q3=Smooth Autumn's Glow","=ds=" .. BabbleFaction["The Sons of Hodir"] .. ": " .. BabbleFaction["Exalted"] };
		{ 12, "s53959", "40015", "=q3=Thick Autumn's Glow", "=ds=" .. BabbleBoss["Cyanigosa"] .. " (" .. AL["Heroic"] .. ")" };
		{ 16, "s53852", "39912", "=q2=Brilliant Sun Crystal", "=ds=" .. AL["Trainer"] };
		{ 17, "s53857", "39917", "=q2=Mystic Sun Crystal", "=ds=1250 #faction#" };
		{ 18, "s53856", "39918", "=q2=Quick Sun Crystal", "=ds=" .. AL["Trainer"] };
		{ 19, "s53854", "39915", "=q2=Rigid Sun Crystal", "=ds=" .. AL["Trainer"] };
		{ 20, "s53853", "39914", "=q2=Smooth Sun Crystal", "=ds=" .. AL["Trainer"] };
		{ 21, "s53855", "39916", "=q2=Thick Sun Crystal", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Green Gems"];
		{ 1, "s66430", "40175", "=q4=Dazzling Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s66338", "40167", "=q4=Enduring Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s66442", "40179", "=q4=Energized Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s66434", "40169", "=q4=Forceful Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s66440", "40174", "=q4=Intricate Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s66431", "40165", "=q4=Jagged Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s66439", "40177", "=q4=Lambent Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 8, "s66435", "40171", "=q4=Misty Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 9, "s66444", "40178", "=q4=Opaque Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 10, "s66441", "40180", "=q4=Radiant Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 11, "s66433", "40170", "=q4=Seer's Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 12, "s66443", "40182", "=q4=Shattered Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 13, "s66437", "40172", "=q4=Shining Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 14, "s66428", "40168", "=q4=Steady Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 15, "s66436", "40176", "=q4=Sundered Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 16, "s66438", "40181", "=q4=Tense Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 17, "s66432", "40164", "=q4=Timeless Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 18, "s66445", "40173", "=q4=Turbid Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 19, "s66429", "40166", "=q4=Vivid Eye of Zul", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 20, "s54007", "40094", "=q3=Dazzling Forest Emerald", "=ds=" .. AL["Trainer"] };
		{ 21, "s53998", "40089", "=q3=Enduring Forest Emerald", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 22, "s54011", "40105", "=q3=Energized Forest Emerald", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 23, "s54001", "40091", "=q3=Forceful Forest Emerald", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 24, "s54006", "40104", "=q3=Intricate Forest Emerald", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 25, "s53996", "40086", "=q3=Jagged Forest Emerald","=ds=" .. BabbleFaction["Frenzyheart Tribe"] .. ": " .. BabbleFaction["Revered"] };
		{ 26, "s54009", "40100", "=q3=Lambent Forest Emerald", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 27, "s54003", "40095", "=q3=Misty Forest Emerald", "=ds=" .. AL["Drop"] .. "" };
		{ 28, "s54010", "40103", "=q3=Opaque Forest Emerald", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 29, "s54012", "40098", "=q3=Radiant Forest Emerald", "=ds=" .. AL["Drop"] .. " - " .. BabbleZone["The Storm Peaks"] };
		{ 30, "s54002", "40092", "=q3=Seer's Forest Emerald", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
	};
	{
		Name = AL["Green Gems"];
		{ 1, "s54014", "40106", "=q3=Shattered Forest Emerald", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 2, "s54004", "40099", "=q3=Shining Forest Emerald", "=ds=" .. AL["Drop"] .. "" };
		{ 3, "s54000", "40090", "=q3=Steady Forest Emerald", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 4, "s54008", "40096", "=q3=Sundered Forest Emerald","=ds=" .. BabbleFaction["The Oracles"] .. ": " .. BabbleFaction["Revered"] };
		{ 5, "s54013", "40101", "=q3=Tense Forest Emerald", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 6, "s53995", "40085", "=q3=Timeless Forest Emerald","=ds=" .. BabbleBoss["The Prophet Tharon'ja"] .. " (" .. AL["Heroic"] .. ")" };
		{ 7, "s54005", "40102", "=q3=Turbid Forest Emerald", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 8, "s53997", "40088", "=q3=Vivid Forest Emerald", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 9, "s53926", "39984", "=q2=Dazzling Dark Jade", "=ds=" .. AL["Trainer"] };
		{ 10, "s53918", "39976", "=q2=Enduring Dark Jade", "=ds=" .. AL["Trainer"] };
		{ 11, "s53930", "39989", "=q2=Energized Dark Jade", "=ds=" .. AL["Trainer"] };
		{ 12, "s53920", "39978", "=q2=Forceful Dark Jade", "=ds=" .. AL["Trainer"] };
		{ 13, "s53925", "39983", "=q2=Intricate Dark Jade", "=ds=" .. AL["Trainer"] };
		{ 14, "s53916", "39974", "=q2=Jagged Dark Jade", "=ds=" .. AL["Trainer"] };
		{ 15, "s53928", "39986", "=q2=Lambent Dark Jade", "=ds=" .. AL["Trainer"] };
		{ 16, "s53922", "39980", "=q2=Misty Dark Jade", "=ds=" .. AL["Trainer"] };
		{ 17, "s53929", "39988", "=q2=Opaque Dark Jade", "=ds=1250 #faction#" };
		{ 18, "s53931", "39990", "=q2=Radiant Dark Jade", "=ds=" .. AL["Trainer"] };
		{ 19, "s53921", "39979", "=q2=Seer's Dark Jade", "=ds=" ..BabbleFaction["The Kalu'ak"] .. ": " .. BabbleFaction["Friendly"] };
		{ 20, "s53933", "39992", "=q2=Shattered Dark Jade", "=ds=1250 #faction#" };
		{ 21, "s53923", "39981", "=q2=Shining Dark Jade", "=ds=" .. AL["Trainer"] };
		{ 22, "s53919", "39977", "=q2=Steady Dark Jade", "=ds=1250 #faction#" };
		{ 23, "s53927", "39985", "=q2=Sundered Dark Jade", "=ds=" .. AL["Trainer"] };
		{ 24, "s53932", "39991", "=q2=Tense Dark Jade", "=ds=1250 #faction#" };
		{ 25, "s53894", "39968", "=q2=Timeless Dark Jade", "=ds=" .. AL["Trainer"] };
		{ 26, "s53924", "39982", "=q2=Turbid Dark Jade", "=ds=1250 #faction#" };
		{ 27, "s53917", "39975", "=q2=Vivid Dark Jade", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Orange Gems"];
		{ 1, "s66576", "40162", "=q4=Accurate Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s66579", "40144", "=q4=Champion's Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s66568", "40147", "=q4=Deadly Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s66584", "40150", "=q4=Deft Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s66571", "40154", "=q4=Durable Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s66580", "40158", "=q4=Empowered Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s66572", "40143", "=q4=Etched Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 8, "s66583", "40146", "=q4=Fierce Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 9, "s66578", "40161", "=q4=Glimmering Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 10, "s66575", "40148", "=q4=Glinting Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 11, "s66567", "40142", "=q4=Inscribed Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 12, "s66585", "40149", "=q4=Lucent Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 13, "s66566", "40151", "=q4=Luminous Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 14, "s66569", "40152", "=q4=Potent Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 15, "s66573", "40157", "=q4=Pristine Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 16, "s66574", "40155", "=q4=Reckless Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 17, "s66586", "40163", "=q4=Resolute Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 18, "s66582", "40145", "=q4=Resplendent Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 19, "s66581", "40160", "=q4=Stalwart Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 20, "s66587", "40159", "=q4=Stark Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 21, "s66570", "40153", "=q4=Veiled Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 22, "s66577", "40156", "=q4=Wicked Ametrine", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
	};
	{
		Name = AL["Orange Gems"];
		{ 1, "s53994", "40058", "=q3=Accurate Monarch Topaz", "=ds=" .. AL["Drop"] };
		{ 2, "s53977", "40039", "=q3=Champion's Monarch Topaz", "=ds=" .. AL["Drop"] .. "" };
		{ 3, "s53979", "40043", "=q3=Deadly Monarch Topaz", "=ds=" .. BabbleBoss["Keristrasza"] .. " (" .. AL["Heroic"] .. ")" };
		{ 4, "s53982", "40046", "=q3=Deft Monarch Topaz", "=ds=" ..BabbleBoss["Sjonnir The Ironshaper"] .. " (" .. AL["Heroic"] .. ")" };
		{ 5, "s53986", "40050", "=q3=Durable Monarch Topaz", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 6, "s53990", "40054", "=q3=Empowered Monarch Topaz", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 7, "s53976", "40038", "=q3=Etched Monarch Topaz", "=ds=" .. AL["Drop"] .. "" };
		{ 8, "s54019", "40041", "=q3=Fierce Monarch Topaz", "=ds=" ..BabbleBoss["Ingvar the Plunderer"] .. " (" .. AL["Heroic"] .. ")" };
		{ 9, "s53993", "40057", "=q3=Glimmering Monarch Topaz","=ds=" .. BabbleFaction["The Wyrmrest Accord"] .. ": " .. BabbleFaction["Exalted"] };
		{ 10, "s53980", "40044", "=q3=Glinting Monarch Topaz", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 11, "s53975", "40037", "=q3=Inscribed Monarch Topaz", "=ds=" .. AL["Drop"] .. "" };
		{ 12, "s53981", "40045", "=q3=Lucent Monarch Topaz", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 13, "s53983", "40047", "=q3=Luminous Monarch Topaz", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 14, "s53984", "40048", "=q3=Potent Monarch Topaz", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 15, "s53989", "40053", "=q3=Pristine Monarch Topaz", "=ds=" .. AL["Trainer"] };
		{ 16, "s53987", "40051", "=q3=Reckless Monarch Topaz", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 17, "s54023", "40059", "=q3=Resolute Monarch Topaz", "=ds=" .. AL["Drop"] .. "" };
		{ 18, "s53978", "40040", "=q3=Resplendent Monarch Topaz", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 19, "s53992", "40056", "=q3=Stalwart Monarch Topaz", "=ds=" .. AL["Drop"] .. "" };
		{ 20, "s53991", "40055", "=q3=Stark Monarch Topaz", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 21, "s53985", "40049", "=q3=Veiled Monarch Topaz", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 22, "s53988", "40052", "=q3=Wicked Monarch Topaz",
			"=ds=" .. BabbleFaction["Knights of the Ebon Blade"] .. ": " .. BabbleFaction["Revered"] };
	};
	{
		Name = AL["Orange Gems"];
		{ 1, "s53891", "39965", "=q2=Glimmering Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 2, "s53892", "39966", "=q2=Accurate Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 3, "s53874", "39949", "=q2=Champion's Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 4, "s53877", "39952", "=q2=Deadly Huge Citrine","=ds=" .. BabbleFaction["Knights of the Ebon Blade"] .. ": " .. BabbleFaction["Friendly"] };
		{ 5, "s53880", "39955", "=q2=Deft Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 6, "s53884", "39958", "=q2=Durable Huge Citrine", "=ds=1250 #faction#" };
		{ 7, "s53888", "39962", "=q2=Empowered Huge Citrine", "=ds=1250 #faction#" };
		{ 8, "s53873", "39948", "=q2=Etched Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 9, "s53876", "39951", "=q2=Fierce Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 10, "s53878", "39953", "=q2=Glinting Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 11, "s53872", "39947", "=q2=Inscribed Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 12, "s53879", "39954", "=q2=Lucent Huge Citrine", "=ds=1250 #faction#" };
		{ 13, "s53881", "39946", "=q2=Luminous Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 14, "s53882", "39956", "=q2=Potent Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 15, "s53887", "39961", "=q2=Pristine Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 16, "s53885", "39959", "=q2=Reckless Huge Citrine","=ds=" .. BabbleFaction["Frenzyheart Tribe"] .. ": " .. BabbleFaction["Friendly"] };
		{ 17, "s53893", "39967", "=q2=Resolute Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 18, "s53875", "39950", "=q2=Resplendent Huge Citrine", "=ds=1250 #faction#" };
		{ 19, "s53890", "39964", "=q2=Stalwart Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 20, "s53889", "39963", "=q2=Stark Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 21, "s53883", "39957", "=q2=Veiled Huge Citrine", "=ds=" .. AL["Trainer"] };
		{ 22, "s53886", "39960", "=q2=Wicked Huge Citrine", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Purple Gems"];
		{ 1, "s66553", "40136", "=q4=Balanced Dreadstone", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s66560", "40139", "=q4=Defender's Dreadstone", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s66555", "40132", "=q4=Glowing Dreadstone", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s66561", "40141", "=q4=Guardian's Dreadstone", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s66564", "40137", "=q4=Infused Dreadstone", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s66562", "40135", "=q4=Mysterious Dreadstone", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s66563", "40140", "=q4=Puissant Dreadstone", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 8, "s66556", "40133", "=q4=Purified Dreadstone", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 9, "s66559", "40138", "=q4=Regal Dreadstone", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 10, "s66558", "40134", "=q4=Royal Dreadstone", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 11, "s66557", "40130", "=q4=Shifting Dreadstone", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 12, "s66554", "40129", "=q4=Sovereign Dreadstone", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 13, "s66565", "40131", "=q4=Tenuous Dreadstone", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 27, "s53969", "40029", "=q3=Balanced Twilight Opal", "=ds=" .. AL["Trainer"] };
		{ 28, "s53972", "40032", "=q3=Defender's Twilight Opal", "=ds=" .. AL["Drop"] .. " - " .. BabbleZone["The Storm Peaks"] };
		{ 16, "s53965", "40025", "=q3=Glowing Twilight Opal","=ds=" .. BabbleFaction["Knights of the Ebon Blade"] .. ": " .. BabbleFaction["Exalted"] };
		{ 17, "s53974", "40034", "=q3=Guardian's Twilight Opal","=ds=" .. BabbleFaction["Argent Crusade"] .. ": " .. BabbleFaction["Revered"] };
		{ 18, "s53970", "40030", "=q3=Infused Twilight Opal", "=ds=" .. BabbleBoss["Anub'arak"] .. " (" .. AL["Heroic"] .. ")" };
		{ 19, "s53968", "40028", "=q3=Mysterious Twilight Opal", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 20, "s53973", "40033", "=q3=Puissant Twilight Opal", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 21, "s53966", "40026", "=q3=Purified Twilight Opal", "=ds=" .. AL["Drop"] .. "" };
		{ 22, "s53971", "40031", "=q3=Regal Twilight Opal", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 23, "s53967", "40027", "=q3=Royal Twilight Opal", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 24, "s53963", "40023", "=q3=Shifting Twilight Opal", "=ds=" .. AL["Drop"] };
		{ 25, "s53962", "40022", "=q3=Sovereign Twilight Opal", "=ds=" .. AL["Drop"] };
		{ 26, "s53964", "40024", "=q3=Tenuous Twilight Opal", "=ds=" .. AL["Drop"] .. "" };
	};
	{
		Name = AL["Purple Gems"];
		{ 1, "s53871", "39940", "=q2=Guardian's Shadow Crystal", "=ds=" .. AL["Trainer"] };
		{ 2, "s53867", "39944", "=q2=Infused Shadow Crystal", "=ds=" .. AL["Trainer"] };
		{ 3, "s53865", "39945", "=q2=Mysterious Shadow Crystal", "=ds=1250 #faction#" };
		{ 4, "s53870", "39933", "=q2=Puissant Shadow Crystal", "=ds=" .. AL["Trainer"] };
		{ 5, "s53863", "39941", "=q2=Purified Shadow Crystal", "=ds=" .. AL["Trainer"] };
		{ 6, "s53864", "39943", "=q2=Royal Shadow Crystal", "=ds=" .. AL["Trainer"] };
		{ 7, "s53860", "39935", "=q2=Shifting Shadow Crystal", "=ds=" .. AL["Trainer"] };
		{ 8, "s53859", "39934", "=q2=Sovereign Shadow Crystal", "=ds=" .. AL["Trainer"] };
		{ 9, "s53861", "39942", "=q2=Tenuous Shadow Crystal", "=ds=" .. AL["Trainer"] };
		{ 10, "s53868", "39938", "=q2=Regal Shadow Crystal", "=ds=" .. AL["Trainer"] };
		{ 11, "s53866", "39937", "=q2=Balanced Shadow Crystal", "=ds=" .. AL["Trainer"] };
		{ 12, "s53869", "39939", "=q2=Defender's Shadow Crystal","=ds=" .. BabbleFaction["The Kalu'ak"] .. ": " .. BabbleFaction["Honored"] };
		{ 13, "s53862", "39936", "=q2=Glowing Shadow Crystal", "=ds=" .. AL["Trainer"] };
		{ 14, "s41420", "32833", "=q2=Purified Jaggal Pearl", "=ds=#sr# 325" };
	};
	{
		Name = AL["Meta Gems"];
		{ 1, "s55389", "41285", "=q3=Chaotic Skyflare Diamond", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s55390", "41307", "=q3=Destructive Skyflare Diamond", "=ds=" .. AL["Drop"] .. "" };
		{ 3, "s55384", "41377", "=q3=Effulgent Skyflare Diamond", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s55392", "41333", "=q3=Ember Skyflare Diamond", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s55393", "41335", "=q3=Enigmatic Skyflare Diamond", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 6, "s55387", "41378", "=q3=Forlorn Skyflare Diamond", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 7, "s55388", "41379", "=q3=Impassive Skyflare Diamond", "=ds=" .. BabbleZone["Wintergrasp"] .. " 12 #wintergrasp#" };
		{ 8, "s55394", "41339", "=q3=Swift Skyflare Diamond", "=ds=" .. AL["Trainer"] };
		{ 9, "s55395", "41400", "=q3=Thundering Skyflare Diamond", "=ds=" .. AL["Drop"] .. "" };
		{ 10, "s55386", "41375", "=q3=Tireless Skyflare Diamond", "=ds=" .. AL["Trainer"] };
		{ 16, "s55401", "41380", "=q3=Austere Earthsiege Diamond", "=ds=" .. BabbleBoss["King Ymiron"] };
		{ 17, "s55405", "41389", "=q3=Beaming Earthsiege Diamond", "=ds=" .. AL["Drop"] .. "" };
		{ 18, "s55397", "41395", "=q3=Bracing Earthsiege Diamond", "=ds=" .. BabbleBoss["Ley-Guardian Eregos"] };
		{ 19, "s55398", "41396", "=q3=Eternal Earthsiege Diamond", "=ds=" .. BabbleBoss["Loken"] };
		{ 20, "s55396", "41401", "=q3=Insightful Earthsiege Diamond", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 21, "s55404", "41385", "=q3=Invigorating Earthsiege Diamond", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 22, "s55402", "41381", "=q3=Persistant Earthsiege Diamond", "=ds=" .. AL["Trainer"] };
		{ 23, "s55399", "41397", "=q3=Powerful Earthsiege Diamond", "=ds=" .. AL["Trainer"] };
		{ 24, "s55400", "41398", "=q3=Relentless Earthsiege Diamond", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 25, "s55403", "41382", "=q3=Trenchant Earthsiege Diamond", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
	};
	{
		Name = AL["Prismatic Gems"];
		{ 1, "s68253", "49110", "=q4=Nightmare Tear", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s28028", "22459", "=q4=Void Sphere", "=ds=" .. GetSpellInfo(7411) };
		{ 3, "s56531", "42702", "=q3=Enchanted Tear", "=ds=" .. AL["Trainer"] };
		{ 4, "s28027", "22460", "=q3=Prismatic Sphere", "=ds=" .. GetSpellInfo(7411) };
		{ 5, "s56530", "42701", "=q2=Enchanted Pearl", "=ds=" .. AL["Trainer"] };
		{ 6, "s62941", "42701", "=q2=Prismatic Black Diamond", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = "Dragon's Eyes";
		{ 1, "s56049", "42142", "=q4=Bold Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s56054", "36766", "=q4=Bright Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s56074", "42148", "=q4=Brilliant Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s56052", "42143", "=q4=Delicate Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s56056", "42152", "=q4=Flashing Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s56076", "42153", "=q4=Fractured Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s56077", "42146", "=q4=Lustrous Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 8, "s56079", "42158", "=q4=Mystic Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 9, "s56081", "42154", "=q4=Precise Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 10, "s56083", "42150", "=q4=Quick Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 11, "s56084", "42156", "=q4=Rigid Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 12, "s56053", "42144", "=q4=Runed Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 13, "s56085", "42149", "=q4=Smooth Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 14, "s56086", "36767", "=q4=Solid Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 15, "s56087", "42145", "=q4=Sparkling Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 16, "s56088", "42155", "=q4=Stormy Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 17, "s56055", "42151", "=q4=Subtle Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 18, "s56089", "42157", "=q4=Thick Dragon's Eye", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 20, 42225, "", "=q3=Dragon's Eye", "=ds=#e8#" };
	};
	{
		Name = AL["Trinkets"];
		{ 1, "s56203", "42418", "=q3=Figurine - Emerald Boar", "=ds=" .. AL["Trainer"] };
		{ 2, "s59759", "44063", "=q3=Figurine - Monarch Crab", "=ds=" .. AL["Trainer"] };
		{ 3, "s56199", "42341", "=q3=Figurine - Ruby Hare", "=ds=" .. AL["Trainer"] };
		{ 4, "s56202", "42413", "=q3=Figurine - Sapphire Owl", "=ds=" .. AL["Trainer"] };
		{ 5, "s56201", "42395", "=q3=Figurine - Twilight Serpent", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Rings"];
		{ 1, "s56497", "42643", "=q4=Titanium Earthguard Ring", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s56496", "42642", "=q4=Titanium Impact Band", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s56498", "42644", "=q4=Titanium Spellshock Ring", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s58954", "43582", "=q4=Titanium Frostguard Ring", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s38503", "31398", "=q4=The Frozen Eye", "=ds=#sr# 375" };
		{ 6, "s38504", "31399", "=q4=The Natural Ward", "=ds=#sr# 375" };
		{ 7, "s46124", "34361", "=q4=Hard Khorium Band", "=ds=#sr# 365" };
		{ 8, "s46122", "34362", "=q4=Loop of Forged Power", "=ds=#sr# 365" };
		{ 9, "s46123", "34363", "=q4=Ring of Flowing Life", "=ds=#sr# 365" };
		{ 10, "s64727", "45808", "=q3=Runed Mana Band", "=ds=" };
		{ 11, "s64728", "45809", "=q3=Scarlet Signet", "=ds=" };
		{ 12, "s58147", "43250", "=q3=Ring of Earthern Might", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 13, "s58150", "43253", "=q3=Ring of Northern Tears", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 14, "s58148", "43251", "=q3=Ring of Scarlet Shadows", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 15, "s58507", "43498", "=q3=Savage Titanium Band", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 16, "s58492", "43482", "=q3=Savage Titanium Ring", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 17, "s58149", "43252", "=q3=Windfire Band", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 18, "s56197", "42340", "=q3=Dream Signet", "=ds=" .. AL["Trainer"] };
		{ 19, "s58143", "43246", "=q3=Earthshadow Ring", "=ds=" .. AL["Trainer"] };
		{ 20, "s58144", "43247", "=q3=Jade Ring of Slaying", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Necks"];
		{ 1, "s56500", "42646", "=q4=Titanium Earthguard Chain", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s56499", "42645", "=q4=Titanium Impact Choker", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s56501", "42647", "=q4=Titanium Spellshock Necklace", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s46126", "34360", "=q4=Amulet of Flowing Life", "=ds=#sr# 365" };
		{ 5, "s46127", "34358", "=q4=Hard Khorium Choker", "=ds=#sr# 365" };
		{ 6, "s46125", "34359", "=q4=Pendant of Sunfire", "=ds=#sr# 365" };
		{ 7, "s64725", "45812", "=q3=Emerald Choker", "=ds=" };
		{ 8, "s64726", "45813", "=q3=Sky Sapphire Amulet", "=ds=" };
		{ 9, "s56196", "42339", "=q3=Blood Sun Necklace", "=ds=" .. AL["Trainer"] };
		{ 10, "s56195", "42338", "=q3=Jade Dagger Pendant", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Miscellaneous"];
		{ 1, "s31078", "24123", "=q4=Circlet of Arcane Might", "=ds=#sr# 370" };
		{ 2, "s31077", "24122", "=q4=Coronet of the Verdant Flame", "=ds=#sr# 370" };
		{ 3, "s62242", "44943", "=q3=Icy Prism", "=ds=" .. AL["Trainer"] };
	};
};


----------------------
--- Leatherworking ---
----------------------

AtlasLoot_Data["LeatherworkingWRATH"] = {
	Name = LEATHERWORKING;
	Type = "Crafting";
	{
		Name = AL["Leather Armor"] .. " - Back";
		{ 1, "s60640", "43565", "=q4=Durable Nerubhide Cape", "=ds=" .. AL["Trainer"] };
		{ 2, "s60637", "43566", "=q4=Ice Striker's Cloak", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Leather Armor"] .. " - Chest";
		{ 1, "s67142", "47600", "=q4=Knightbane Carapace", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 2, "s67086", "47599", "=q4=Knightbane Carapace", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 3, "s67084", "47602", "=q4=Lunar Eclipse Chestguard", "=ds=" .. AL["Drop"] ..", " .. BabbleZone["Trial of the Crusader"] };
		{ 4, "s67140", "47601", "=q4=Lunar Eclipse Chestguard", "=ds=" .. AL["Drop"] ..", " .. BabbleZone["Trial of the Crusader"] };
		{ 5, "s60996", "43590", "=q4=Polar Vest", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s60703", "43434", "=q3=Eviscerator's Chestguard", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s60718", "43263", "=q3=Overcast Chestguard", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 8, "s60669", "43257", "=q3=Wildscale Breastplate", "=ds=" .. AL["Trainer"] };
		{ 9, "s51570", "38592", "=q3=Dark Arctic Chestpiece", "=ds=" .. AL["Trainer"] };
		{ 10, "s60613", "44441", "=q3=Dark Iceborne Chestguard", "=ds=" .. AL["Trainer"] };
		{ 11, "s50944", "38400", "=q2=Arctic Chestpiece", "=ds=" .. AL["Trainer"] };
		{ 12, "s50938", "38408", "=q2=Iceborne Chestguard", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Leather Armor"] .. " - Feet";
		{ 1, "s70555", "49894", "=q4=Blessed Cenarion Boots", "=ds=" .. AL["Vendor"] .. "" };
		{ 2, "s70557", "49895", "=q4=Footpads of Impending Death", "=ds=" .. AL["Vendor"] .. "" };
		{ 3, "s63201", "45565", "=q4=Boots of Wintry Endurance", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 4, "s63199", "45564", "=q4=Footpads of Silence", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 5, "s60761", "43502", "=q4=Earthgiving Boots", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s60998", "43592", "=q4=Polar Boots", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s62176", "44930", "=q4=Windripper Boots", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 8, "s60712", "43439", "=q3=Eviscerator's Treads", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 9, "s60727", "43273", "=q3=Overcast Boots", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 10, "s60666", "43256", "=q3=Jormscale Footpads", "=ds=" .. AL["Trainer"] };
		{ 11, "s51568", "38590", "=q3=Black Chitinguard Boots", "=ds=" .. AL["Trainer"] };
		{ 12, "s60620", "44442", "=q3=Bugsquashers", "=ds=" .. AL["Trainer"] };
		{ 13, "s50948", "38404", "=q2=Arctic Boots", "=ds=" .. AL["Trainer"] };
		{ 14, "s50942", "38407", "=q2=Iceborne Boots", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Leather Armor"] .. " - Hands";
		{ 1, "s60705", "43436", "=q3=Eviscerator's Gauntlets", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s60721", "43265", "=q3=Overcast Handwraps", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s60665", "43255", "=q3=Seafoam Gauntlets", "=ds=" .. AL["Trainer"] };
		{ 4, "s50947", "38403", "=q2=Arctic Gloves", "=ds=" .. AL["Trainer"] };
		{ 5, "s50941", "38409", "=q2=Iceborne Gloves", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Leather Armor"] .. " - Head";
		{ 1, "s60697", "43260", "=q3=Eviscerator's Facemask", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s60715", "43261", "=q3=Overcast Headguard", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s51572", "38437", "=q2=Arctic Helm", "=ds=" .. AL["Trainer"] };
		{ 4, "s60608", "38438", "=q2=Iceborne Helm", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Leather Armor"] .. " - Legs";
		{ 1, "s70556", "49899", "=q4=Bladeborn Leggings", "=ds=" .. AL["Vendor"] .. "" };
		{ 2, "s70554", "49898", "=q4=Legwraps of Unleashed Nature", "=ds=" .. AL["Vendor"] .. "" };
		{ 3, "s60760", "43495", "=q4=Earthgiving Legguards", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s62177", "44931", "=q4=Windripper Leggings", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s60711", "43438", "=q3=Eviscerator's Legguards", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s60725", "43271", "=q3=Overcast Leggings", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s60660", "42731", "=q3=Leggings of Visceral Strikes", "=ds=" .. AL["Trainer"] };
		{ 8, "s51569", "38591", "=q3=Dark Arctic Leggings", "=ds=" .. AL["Trainer"] };
		{ 9, "s60611", "44440", "=q3=Dark Iceborne Leggings", "=ds=" .. AL["Trainer"] };
		{ 10, "s50945", "38401", "=q2=Arctic Leggings", "=ds=" .. AL["Trainer"] };
		{ 11, "s50939", "38410", "=q2=Iceborne Leggings", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Leather Armor"] .. " - Shoulder";
		{ 1, "s60758", "43481", "=q4=Trollwoven Spaulders", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s60702", "43433", "=q3=Eviscerator's Shoulderpads", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s60716", "43262", "=q3=Overcast Spaulders", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s60671", "43258", "=q3=Purehorn Spaulders", "=ds=" .. AL["Trainer"] };
		{ 5, "s50946", "38402", "=q2=Arctic Shoulderpads", "=ds=" .. AL["Trainer"] };
		{ 6, "s50940", "38411", "=q2=Iceborne Shoulderpads", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Leather Armor"] .. " - Waist";
		{ 1, "s63200", "45556", "=q4=Belt of Arctic Life", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 2, "s63198", "45555", "=q4=Death-warmed Belt", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 3, "s60759", "43484", "=q4=Trollwoven Girdle", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s60997", "43591", "=q4=Polar Cord", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s60706", "43437", "=q3=Eviscerator's Waistguard", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s60723", "43266", "=q3=Overcast Belt", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s50949", "38405", "=q2=Arctic Belt", "=ds=" .. AL["Trainer"] };
		{ 8, "s50943", "38406", "=q2=Iceborne Belt", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Leather Armor"] .. " - Wrist";
		{ 1, "s67087", "47581", "=q4=Bracers of Swift Death", "=ds=" .. AL["Drop"] .. ", " ..BabbleZone["Trial of the Crusader"] };
		{ 2, "s67139", "47582", "=q4=Bracers of Swift Death", "=ds=" .. AL["Drop"] .. ", " ..BabbleZone["Trial of the Crusader"] };
		{ 3, "s67085", "47583", "=q4=Moonshadow Armguards", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 4, "s67141", "47584", "=q4=Moonshadow Armguards", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 5, "s60704", "43435", "=q3=Eviscerator's Bindings", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s60607", "38434", "=q2=Iceborne Wristguards", "=ds=" .. AL["Trainer"] };
		{ 7, "s60720", "43264", "=q3=Overcast Bracers", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 8, "s51571", "38433", "=q2=Arctic Wristguards", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Mail Armor"] .. " - Chest";
		{ 1, "s67138", "47596", "=q4=Crusader's Dragonscale Breastplate","=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 2, "s67082", "47595", "=q4=Crusader's Dragonscale Breastplate","=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 3, "s67080", "47597", "=q4=Ensorcelled Nerubian Breastplate","=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 4, "s67136", "47598", "=q4=Ensorcelled Nerubian Breastplate","=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 5, "s60756", "43461", "=q4=Revenant's Breastplate", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s60999", "43593", "=q4=Icy Scale Chestguard", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s60730", "43445", "=q3=Swiftarrow Hauberk", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 8, "s60747", "43453", "=q3=Stormhide Hauberk", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 9, "s60649", "43129", "=q3=Razorstrike Breastplate", "=ds=" .. AL["Trainer"] };
		{ 10, "s60604", "44437", "=q3=Dark Frostscale Breastplate", "=ds=" .. AL["Trainer"] };
		{ 11, "s60629", "44444", "=q3=Dark Nerubian Chestpiece", "=ds=" .. AL["Trainer"] };
		{ 12, "s50950", "38414", "=q2=Frostscale Chestguard", "=ds=" .. AL["Trainer"] };
		{ 13, "s50956", "38420", "=q2=Nerubian Chestguard", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Mail Armor"] .. " - Feet";
		{ 1, "s70559", "49896", "=q4=Earthsoul Boots", "=ds=" .. AL["Vendor"] .. "" };
		{ 2, "s70561", "49897", "=q4=Rock-Steady Treads", "=ds=" .. AL["Vendor"] .. "" };
		{ 3, "s63195", "45562", "=q4=Boots of Living Scale", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 4, "s63197", "45563", "=q4=Lightning Grounded Boots", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 5, "s61002", "43595", "=q4=Icy Scale Boots", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s60737", "43443", "=q3=Swiftarrow Boots", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s60752", "43451", "=q3=Stormhide Stompers", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 8, "s60757", "43469", "=q4=Revenant's Treads", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 9, "s60605", "44438", "=q3=Dragonstompers", "=ds=" .. AL["Trainer"] };
		{ 10, "s60630", "44445", "=q3=Scaled Icewalkers", "=ds=" .. AL["Trainer"] };
		{ 11, "s50954", "38413", "=q2=Frostscale Boots", "=ds=" .. AL["Trainer"] };
		{ 12, "s50960", "38419", "=q2=Nerubian Boots", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Mail Armor"] .. " - Hands";
		{ 1, "s60732", "43446", "=q3=Swiftarrow Gauntlets", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s60749", "43454", "=q3=Stormhide Grips", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s50953", "38415", "=q2=Frostscale Gloves", "=ds=" .. AL["Trainer"] };
		{ 4, "s50959", "38421", "=q2=Nerubian Gloves", "=ds=" .. AL["Trainer"] };

	};
	{
		Name = AL["Mail Armor"] .. " - Head";
		{ 1, "s60728", "43447", "=q3=Swiftarrow Helm", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s60743", "43455", "=q3=Stormhide Crown", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s60655", "43132", "=q3=Nightshock Hood", "=ds=" .. AL["Trainer"] };
		{ 4, "s60600", "38440", "=q2=Frostscale Helm", "=ds=" .. AL["Trainer"] };
		{ 5, "s60624", "38439", "=q2=Nerubian Helm", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Mail Armor"] .. " - Legs";
		{ 1, "s70560", "49901", "=q4=Draconic Bonesplinter Legguards", "=ds=" .. AL["Vendor"] .. "" };
		{ 2, "s70558", "49900", "=q4=Lightning-Infused Leggings", "=ds=" .. AL["Vendor"] .. "" };
		{ 3, "s60754", "43458", "=q4=Giantmaim Legguards", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s60735", "43448", "=q3=Swiftarrow Leggings", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s60751", "43456", "=q3=Stormhide Legguards", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s60601", "44436", "=q3=Dark Frostscale Leggings", "=ds=" .. AL["Trainer"] };
		{ 7, "s60627", "44443", "=q3=Dark Nerubian Leggings", "=ds=" .. AL["Trainer"] };
		{ 8, "s50951", "38416", "=q2=Frostscale Leggings", "=ds=" .. AL["Trainer"] };
		{ 9, "s50957", "38422", "=q2=Nerubian Legguards", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Mail Armor"] .. " - Shoulder";
		{ 1, "s60729", "43449", "=q3=Swiftarrow Shoulderguards", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 2, "s60746", "43457", "=q3=Stormhide Shoulders", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 3, "s60651", "43130", "=q3=Virulent Spaulders", "=ds=" .. AL["Trainer"] };
		{ 4, "s50952", "38424", "=q2=Frostscale Shoulders", "=ds=" .. AL["Trainer"] };
		{ 5, "s50958", "38417", "=q2=Nerubian Shoulders", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Mail Armor"] .. " - Waist";
		{ 1, "s63194", "45553", "=q4=Belt of Dragons", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 2, "s63196", "45554", "=q4=Blue Belt of Chaos", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 3, "s61000", "43594", "=q4=Icy Scale Belt", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 4, "s60734", "43442", "=q3=Swiftarrow Belt", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 5, "s60750", "43450", "=q3=Stormhide Belt", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s60658", "43133", "=q3=Nightshock Girdle", "=ds=" .. AL["Trainer"] };
		{ 7, "s50955", "38412", "=q2=Frostscale Belt", "=ds=" .. AL["Trainer"] };
		{ 8, "s50961", "38418", "=q2=Nerubian Belt", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Mail Armor"] .. " - Wrist";
		{ 1, "s67137", "47580", "=q4=Black Chitin Bracers", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 2, "s67081", "47579", "=q4=Black Chitin Bracers", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 3, "s67083", "47576", "=q4=Crusader's Dragonscale Bracers","=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 4, "s67143", "47577", "=q4=Crusader's Dragonscale Bracers","=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 5, "s60755", "43459", "=q4=Giantmaim Bracers", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 6, "s60731", "43444", "=q3=Swiftarrow Bracers", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 7, "s60748", "43452", "=q3=Stormhide Wristguards", "=ds=" .. AL["Vendor"] .. ", " .. BabbleZone["Dalaran"] };
		{ 8, "s60652", "43131", "=q3=Eaglebane Bracers", "=ds=" .. AL["Trainer"] };
		{ 9, "s60599", "38436", "=q2=Frostscale Bracers", "=ds=" .. AL["Trainer"] };
		{ 10, "s60622", "38435", "=q2=Nerubian Bracers", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Item Enhancements"];
		{ 1, "s62448", "44963", "=q4=Earthen Leg Armor", "=ds=" .. AL["Trainer"] };
		{ 2, "s50965", "38373", "=q4=Frosthide Leg Armor", "=ds=" .. AL["Trainer"] };
		{ 3, "s50967", "38374", "=q4=Icescale Leg Armor", "=ds=" .. AL["Trainer"] };
		{ 4, "s35557", "29536", "=q4=Nethercleft Leg Armor", "=ds=#sr# 365" };
		{ 5, "s35554", "29535", "=q4=Nethercobra Leg Armor", "=ds=#sr# 365" };
		{ 6, "s50964", "38371", "=q3=Jormungar Leg Armor", "=ds=" .. AL["Trainer"] };
		{ 7, "s50966", "38372", "=q3=Nerubian Leg Armor", "=ds=" .. AL["Trainer"] };
		{ 8, "s35555", "29534", "=q3=Clefthide Leg Armor", "=ds=#sr# 335" };
		{ 9, "s35549", "29533", "=q3=Cobrahide Leg Armor", "=ds=#sr# 335" };
		{ 10, "s22727", "18251", "=q3=Core Armor Kit", "=ds=#sr# 300" };
		{ 11, "s50963", "38376", "=q2=Heavy Borean Armor Kit", "=ds=" .. AL["Trainer"] };
		{ 16, "s57683", "Trade_LeatherWorking", "=ds=Fur Lining - Attack Power", "=ds=" .. AL["Trainer"] };
		{ 17, "s57701", "Trade_LeatherWorking", "=ds=Fur Lining - Arcane Resist", "=ds=" .. AL["Drop"] };
		{ 18, "s57692", "Trade_LeatherWorking", "=ds=Fur Lining - Fire Resist", "=ds=" .. AL["Drop"] };
		{ 19, "s57694", "Trade_LeatherWorking", "=ds=Fur Lining - Frost Resist", "=ds=" .. AL["Drop"] };
		{ 20, "s57699", "Trade_LeatherWorking", "=ds=Fur Lining - Nature Resist", "=ds=" .. AL["Drop"] };
		{ 21, "s57696", "Trade_LeatherWorking", "=ds=Fur Lining - Shadow Resist", "=ds=" .. AL["Drop"] };
		{ 22, "s57691", "Trade_LeatherWorking", "=ds=Fur Lining - Spell Power", "=ds=" .. AL["Trainer"] };
		{ 23, "s57690", "Trade_LeatherWorking", "=ds=Fur Lining - Stamina", "=ds=" .. AL["Trainer"] };
		{ 24, "s60583", "Trade_LeatherWorking", "=ds=Jormungar Leg Reinforcements", "=ds=" .. AL["Trainer"] };
		{ 25, "s60584", "Trade_LeatherWorking", "=ds=Nerubian Leg Reinforcements", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Quivers and Ammo Pouches"];
		{ 1, "s60645", "44447", "=q3=Dragonscale Ammo Pouch","=ds=" .. BabbleFaction["The Kalu'ak"] .. ": " .. BabbleFaction["Honored"] };
		{ 2, "s60647", "44448", "=q3=Nerubian Reinforced Quiver","=ds=" .. BabbleFaction["Knights of the Ebon Blade"] .. ": " .. BabbleFaction["Honored"] };
	};
	{
		Name = AL["Drums, Bags and Misc."];
		{ 1, "s60643", "44446", "=q3=Pack of Endless Pockets", "=ds=" .. AL["Trainer"] };
		{ 2, "s50970", "38399", "=q3=Trapper's Traveling Pack","=ds=" .. BabbleFaction["The Kalu'ak"] .. ": " .. BabbleFaction["Revered"] };
		{ 3, "s50971", "38347", "=q3=Mammoth Mining Bag","=ds=" .. BabbleFaction["The Sons of Hodir"] .. ": " .. BabbleFaction["Honored"] };
		{ 4, "s69386", "49633", "=q1=Drums of Forgotten Kings", "=ds=#sr# 450" };
		{ 5, "s69388", "49634", "=q1=Drums of the Wild", "=ds=#sr# 450" };

	};
	{
		Name = BabbleInventory["Leather"];
		{ 1, "s50936", "38425", "=q1=Heavy Borean Leather", "=ds=" .. AL["Trainer"] };
		{ 2, "s64661", "33568", "=q1=Borean Leather", "=ds=" .. AL["Trainer"] };
	};
};


AtlasLoot_Data["MiningWRATH"] = {
	Name = MINING;
	{
		Name = MINING;
		{ 1, "s55208", "37663", "=q2=Smelt Titansteel", "=ds=#sr# 450" };
		{ 2, "s55211", "41163", "=q2=Smelt Titanium", "=ds=#sr# 450" };
		{ 3, "s49258", "36913", "=q1=Smelt Saronite", "=ds=#sr# 400" };
		{ 4, "s49252", "36916", "=q1=Smelt Cobalt", "=ds=#sr# 350" };
	};
};

AtlasLoot_Data["FirstAidWRATH"] = {
	Name = FIRSTAID;
	{
		Name = FIRSTAID;
		{ 1, "s45546", "34722", "=q1=Heavy Frostweave Bandage", "=ds=#sr# 400" };
		{ 2, "s45545", "34721", "=q1=Frostweave Bandage", "=ds=#sr# 375" };
	};
};
-----------------
--- Tailoring ---
-----------------

AtlasLoot_Data["TailoringWRATH"] = {
	Name = TAILORING;
	Type = "Crafting";
	{
		Name = AL["Cloth Armor"] .. " - Back";
		{ 1, "s56017", "41610", "=q4=Deathchill Cloak", "=ds=" .. AL["Achievement"] };
		{ 2, "s56016", "41609", "=q4=Wispcloak", "=ds=" .. AL["Achievement"] };
		{ 3, "s64730", "45810", "=q3=Cloak of Crimson Snow", "=ds=" };
		{ 4, "s64729", "45811", "=q3=Frostguard Drape", "=ds=" };
		{ 5, "s56015", "41608", "=q3=Cloak of Frozen Spirits", "=ds=" .. AL["Trainer"] };
		{ 6, "s56014", "41607", "=q3=Cloak of the Moon", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Cloth Armor"] .. " - Chest";
		{ 1, "s67066", "47603", "=q4=Merlin's Robe", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 2, "s67146", "47604", "=q4=Merlin's Robe", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 3, "s67064", "47605", "=q4=Royal Moonshroud Robe", "=ds=" .. AL["Drop"] .. ", " ..BabbleZone["Trial of the Crusader"] };
		{ 4, "s67144", "47606", "=q4=Royal Moonshroud Robe", "=ds=" .. AL["Drop"] .. ", " ..BabbleZone["Trial of the Crusader"] };
		{ 5, "s56026", "42101", "=q4=Ebonweave Robe", "=ds=" .. AL["Trainer"] };
		{ 6, "s56024", "42100", "=q4=Moonshroud Robe", "=ds=" .. AL["Trainer"] };
		{ 7, "s56028", "42102", "=q4=Spellweave Robe", "=ds=" .. AL["Trainer"] };
		{ 8, "s60993", "43583", "=q4=Glacial Robe", "=ds=" .. AL["Trainer"] };
		{ 9, "s59587", "43972", "=q3=Frostsavage Robe", "=ds=" .. AL["Trainer"] };
		{ 10, "s55941", "41554", "=q3=Black Duskweave Robe", "=ds=" .. AL["Trainer"] };
		{ 11, "s55911", "41525", "=q3=Mystic Frostwoven Robe", "=ds=" .. AL["Trainer"] };
		{ 12, "s55921", "41549", "=q2=Duskweave Robe", "=ds=" .. AL["Trainer"] };
		{ 13, "s55903", "41515", "=q2=Frostwoven Robe", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Cloth Armor"] .. " - Feet";
		{ 1, "s70551", "49890", "=q4=Deathfrost Boots", "=ds=" .. AL["Vendor"] .. "" };
		{ 2, "s70553", "49893", "=q4=Sandals of Consecration", "=ds=" .. AL["Vendor"] .. "" };
		{ 3, "s63206", "45567", "=q4=Savior's Slippers", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 4, "s63204", "45566", "=q4=Spellslinger's Slippers", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 5, "s60994", "43585", "=q4=Glacial Slippers", "=ds=" .. AL["Trainer"] };
		{ 6, "s56023", "42096", "=q3=Aurora Slippers", "=ds=" .. AL["Trainer"] };
		{ 7, "s59585", "43970", "=q3=Frostsavage Boots", "=ds=" .. AL["Trainer"] };
		{ 8, "s55924", "41544", "=q2=Duskweave Boots", "=ds=" .. AL["Trainer"] };
		{ 9, "s55906", "41520", "=q2=Frostwoven Boots", "=ds=" .. AL["Trainer"] };
		{ 10, "s56019", "41985", "=q3=Silky Iceshard Boots", "=ds=" .. AL["Trainer"] };

	};
	{
		Name = AL["Cloth Armor"] .. " - Hands";
		{ 1, "s56027", "42111", "=q4=Ebonweave Gloves", "=ds=" .. AL["Trainer"] };
		{ 2, "s56025", "42103", "=q4=Moonshroud Gloves", "=ds=" .. AL["Trainer"] };
		{ 3, "s56029", "42113", "=q4=Spellweave Gloves", "=ds=" .. AL["Trainer"] };
		{ 4, "s59586", "41516", "=q3=Frostsavage Gloves", "=ds=" .. AL["Trainer"] };
		{ 5, "s56022", "42095", "=q3=Light Blessed Mittens", "=ds=" .. AL["Trainer"] };
		{ 6, "s55922", "41545", "=q2=Duskweave Gloves", "=ds=" .. AL["Trainer"] };
		{ 7, "s55904", "44211", "=q2=Frostwoven Gloves", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Cloth Armor"] .. " - Head";
		{ 1, "s56018", "41984", "=q3=Hat of Wintry Doom", "=ds=" .. AL["Trainer"] };
		{ 2, "s59589", "43971", "=q3=Frostsavage Cowl", "=ds=" .. AL["Trainer"] };
		{ 3, "s55919", "41546", "=q2=Duskweave Cowl", "=ds=" .. AL["Trainer"] };
		{ 4, "s55907", "41521", "=q2=Frostwoven Cowl", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Cloth Armor"] .. " - Legs";
		{ 1, "s70550", "49891", "=q4=Leggings of Woven Death", "=ds=" .. AL["Vendor"] .. "" };
		{ 2, "s70552", "49892", "=q4=Lightweave Leggings", "=ds=" .. AL["Vendor"] .. "" };
		{ 3, "s56021", "42093", "=q3=Frostmoon Pants", "=ds=" .. AL["Trainer"] };
		{ 4, "s59588", "43975", "=q3=Frostsavage Leggings", "=ds=" .. AL["Trainer"] };
		{ 5, "s55925", "41553", "=q3=Black Duskweave Leggings", "=ds=" .. AL["Trainer"] };
		{ 6, "s55901", "41548", "=q2=Duskweave Leggings", "=ds=" .. AL["Trainer"] };
		{ 7, "s56030", "41519", "=q2=Frostwoven Leggings", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Cloth Armor"] .. " - Shoulder";
		{ 1, "s59584", "43973", "=q3=Frostsavage Shoulders", "=ds=" .. AL["Trainer"] };
		{ 2, "s55910", "41523", "=q3=Mystic Frostwoven Shoulders", "=ds=" .. AL["Trainer"] };
		{ 3, "s55923", "41550", "=q2=Duskweave Shoulders", "=ds=" .. AL["Trainer"] };
		{ 4, "s55902", "41513", "=q2=Frostwoven Shoulders", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Cloth Armor"] .. " - Waist";
		{ 1, "s63205", "45558", "=q4=Cord of the White Dawn", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 2, "s63203", "45557", "=q4=Sash of Ancient Power", "=ds=" .. AL["Drop"] .. ", " .. BabbleZone["Ulduar"] };
		{ 3, "s60990", "43584", "=q4=Glacial Waistband", "=ds=" .. AL["Trainer"] };
		{ 4, "s56020", "41986", "=q3=Deep Frozen Cord", "=ds=" .. AL["Trainer"] };
		{ 5, "s59582", "43969", "=q3=Frostsavage Belt", "=ds=" .. AL["Trainer"] };
		{ 6, "s55914", "41543", "=q2=Duskweave Belt", "=ds=" .. AL["Trainer"] };
		{ 7, "s55908", "41522", "=q2=Frostwoven Belt", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Cloth Armor"] .. " - Wrist";
		{ 1, "s67145", "47586", "=q4=Bejeweled Wizard's Bracers", "=ds=" ..AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 2, "s67079", "47585", "=q4=Bejeweled Wizard's Bracers", "=ds=" ..AL["Drop"] .. ", " .. BabbleZone["Trial of the Crusader"] };
		{ 3, "s67065", "47587", "=q4=Royal Moonshroud Bracers", "=ds=" .. AL["Drop"] ..", " .. BabbleZone["Trial of the Crusader"] };
		{ 4, "s67147", "47588", "=q4=Royal Moonshroud Bracers", "=ds=" .. AL["Drop"] ..", " .. BabbleZone["Trial of the Crusader"] };
		{ 5, "s55943", "41555", "=q3=Black Duskweave Wristwraps", "=ds=" .. AL["Trainer"] };
		{ 6, "s59583", "43974", "=q3=Frostsavage Bracers", "=ds=" .. AL["Trainer"] };
		{ 7, "s55913", "41528", "=q3=Mystic Frostwoven Wriststraps", "=ds=" .. AL["Trainer"] };
		{ 8, "s55920", "41551", "=q2=Duskweave Wriststraps", "=ds=" .. AL["Trainer"] };
		{ 9, "s56031", "41512", "=q2=Frostwoven Wriststraps", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Bags"];
		{ 1, "s56005", "41600", "=q3=Glacial Bag", "=ds=" .. BabbleFaction["The Sons of Hodir"] ..": " .. BabbleFaction["Exalted"] };
		{ 2, "s56006", "41598", "=q3=Mysterious Bag","=ds=" .. BabbleFaction["The Wyrmrest Accord"] .. ": " .. BabbleFaction["Revered"] };
		{ 3, "s56004", "41597", "=q3=Abyssal Bag","=ds=" .. BabbleFaction["Knights of the Ebon Blade"] .. ": " .. BabbleFaction["Revered"] };
		{ 4, "s63924", "45773", "=q3=Emerald Bag", "=ds=" };
	};
	{
		Name = AL["Item Enhancements"];
		{ 1, "s56009", "41602", "=q4=Brilliant Spellthread","=ds=" .. BabbleFaction["Argent Crusade"] .. ": " .. BabbleFaction["Exalted"] };
		{ 2, "s56011", "41604", "=q4=Sapphire Spellthread", "=ds=" ..BabbleFaction["Kirin Tor"] .. ": " .. BabbleFaction["Exalted"] };
		{ 3, "s56010", "41603", "=q3=Azure Spellthread", "=ds=" .. AL["Trainer"] };
		{ 4, "s56008", "41601", "=q3=Shining Spellthread", "=ds=" .. AL["Trainer"] };
		{ 16, "s56034", "Spell_Nature_AstralRecalGroup", "=ds=Master's Spellthread", "=ds=" .. AL["Trainer"] };
		{ 17, "s56039", "Spell_Nature_AstralRecalGroup", "=ds=Sanctified Spellthread", "=ds=" .. AL["Trainer"] };
		{ 19, "s55769", "INV_Misc_Thread_01", "=ds=Darkglow Embroidery", "=ds=" .. AL["Trainer"] };
		{ 20, "s55642", "INV_Misc_Thread_01", "=ds=Lightweave Embroidery", "=ds=" .. AL["Trainer"] };
		{ 21, "s55777", "INV_Misc_Thread_01", "=ds=Swordguard Embroidery", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = "Cloth/" .. AL["Miscellaneous"];
		{ 1, "s56002", "41593", "=q3=Ebonweave", "=ds=" .. AL["Trainer"] };
		{ 2, "s56001", "41594", "=q3=Moonshroud", "=ds=" .. AL["Trainer"] };
		{ 3, "s56003", "41595", "=q3=Spellweave", "=ds=" .. AL["Trainer"] };
		{ 4, "s55900", "41511", "=q2=Bolt of Imbued Frostweave", "=ds=" .. AL["Trainer"] };
		{ 5, "s55899", "41510", "=q1=Bolt of Frostweave", "=ds=" .. AL["Trainer"] };
		{ 7, "s75597", "54797", "=q4=Frosty Flying Carpet", "=ds=" };
		{ 8, "s60971", "44558", "=q4=Magnificent Flying Carpet", "=ds=" .. AL["Trainer"] };
		{ 10, "s55898", "41509", "=q1=Frostweave Net", "=ds=" .. AL["Trainer"] };
	};
	{
		Name = AL["Shirts"];
		{ 1, "s55994", "41249", "=q1=Blue Lumberjack Shirt", "=ds=" .. AL["Drop"] };
		{ 2, "s55998", "41253", "=q1=Blue Workman's Shirt", "=ds=" .. AL["Drop"] };
		{ 3, "s55996", "41250", "=q1=Green Lumberjack Shirt", "=ds=" .. AL["Drop"] };
		{ 4, "s56000", "41255", "=q1=Green Workman's Shirt", "=ds=" .. AL["Trainer"] };
		{ 5, "s55993", "41248", "=q1=Red Lumberjack Shirt", "=ds=" .. AL["Drop"] };
		{ 6, "s55997", "41252", "=q1=Red Workman's Shirt", "=ds=" .. AL["Drop"] };
		{ 7, "s55999", "41254", "=q1=Rustic Workman's Shirt", "=ds=" .. AL["Drop"] };
		{ 8, "s55995", "41251", "=q1=Yellow Lumberjack Shirt", "=ds=" .. AL["Trainer"] };
		{ 9, "s12085", "10034", "=q1=Tuxedo Shirt", "=ds=#sr# 240" };
		{ 10, "s12080", "10055", "=q1=Pink Mageweave Shirt", "=ds=#sr# 235" };
		{ 11, "s12075", "10054", "=q1=Lavender Mageweave Shirt", "=ds=#sr# 230" };
		{ 12, "s12064", "10052", "=q1=Orange Martial Shirt", "=ds=#sr# 220" };
		{ 13, "s12061", "10056", "=q1=Orange Mageweave Shirt", "=ds=#sr# 215" };
		{ 14, "s3873", "4336", "=q1=Black Swashbuckler's Shirt", "=ds=#sr# 200" };
		{ 15, "s21945", "17723", "=q1=Green Holiday Shirt", "=ds=#sr# 190" };
		{ 16, "s3872", "4335", "=q1=Rich Purple Silk Shirt", "=ds=#sr# 185" };
		{ 17, "s8489", "6796", "=q1=Red Swashbuckler's Shirt", "=ds=#sr# 175" };
		{ 18, "s3871", "4334", "=q1=Formal White Shirt", "=ds=#sr# 170" };
		{ 19, "s8483", "6795", "=q1=White Swashbuckler's Shirt", "=ds=#sr# 160" };
		{ 20, "s3870", "4333", "=q1=Dark Silk Shirt", "=ds=#sr# 155" };
		{ 21, "s3869", "4332", "=q1=Bright Yellow Shirt", "=ds=#sr# 135" };
		{ 22, "s7892", "6384", "=q1=Stylish Blue Shirt", "=ds=#sr# 120" };
		{ 23, "s7893", "6385", "=q1=Stylish Green Shirt", "=ds=#sr# 120" };
		{ 24, "s3866", "4330", "=q1=Stylish Red Shirt", "=ds=#sr# 110" };
		{ 25, "s2406", "2587", "=q1=Gray Woolen Shirt", "=ds=#sr# 100" };
		{ 26, "s2396", "2579", "=q1=Green Linen Shirt", "=ds=#sr# 70" };
		{ 27, "s2394", "2577", "=q1=Blue Linen Shirt", "=ds=#sr# 40" };
		{ 28, "s2392", "2575", "=q1=Red Linen Shirt", "=ds=#sr# 40" };
		{ 29, "s2393", "2576", "=q1=White Linen Shirt", "=ds=#sr# 1" };
		{ 30, "s3915", "4344", "=q1=Brown Linen Shirt", "=ds=#sr# 1" };
	};
};
--------------------------------
--- Daily Profession Rewards ---
--------------------------------

---------------
--- Cooking ---
---------------

AtlasLoot_Data["CookingDaily1"] = {
	{ 1, 33925, "", "=q3=Recipe: Delicious Chocolate Cake", "=ds=#p3# (1)", "", "" };
	{ 2, 33871, "", "=q3=Recipe: Stormchops", "=ds=#p3# (300)", "", "" };
	{ 3, 33869, "", "=q3=Recipe: Broiled Bloodfin", "=ds=#p3# (300)", "", "" };
	{ 4, 33875, "", "=q2=Recipe: Kibler's Bits", "=ds=#p3# (300)", "", "" };
	{ 5, 33870, "", "=q2=Recipe: Skullfish Soup", "=ds=#p3# (325)", "", "" };
	{ 6, 33873, "", "=q2=Recipe: Spicy Hot Talbuk", "=ds=#p3# (300)", "", "" };
	Next = "CookingDaily2";
	Back = "COOKINGDAILYMENU";
};

AtlasLoot_Data["CookingDaily2"] = {
	{ 1, 43035, "", "=q2=Recipe: Blackened Dragonfin", "=ds=#p3# (400)" };
	{ 2, 43032, "", "=q2=Recipe: Blackened Worg Steak", "=ds=#p3# (400)" };
	{ 3, 43029, "", "=q2=Recipe: Critter Bites", "=ds=#p3# (400)" };
	{ 4, 43033, "", "=q2=Recipe: Cuttlesteak", "=ds=#p3# (400)" };
	{ 5, 43036, "", "=q2=Recipe: Dragonfin Filet", "=ds=#p3# (400)" };
	{ 6, 43024, "", "=q2=Recipe: Firecracker Salmon", "=ds=#p3# (400)" };
	{ 7, 43030, "", "=q2=Recipe: Hearty Rhino", "=ds=#p3# (400)" };
	{ 8, 43026, "", "=q2=Recipe: Imperial Manta Steak", "=ds=#p3# (400)" };
	{ 9, 43018, "", "=q2=Recipe: Mega Mammoth Meal", "=ds=#p3# (400)" };
	{ 10, 43022, "", "=q2=Recipe: Mighty Rhino Dogs", "=ds=#p3# (400)" };
	{ 11, 43023, "", "=q2=Recipe: Poached Northern Sculpin", "=ds=#p3# (400)" };
	{ 12, 43028, "", "=q2=Recipe: Rhinolicious Wyrmsteak", "=ds=#p3# (400)" };
	{ 13, 43031, "", "=q2=Recipe: Snapper Extreme", "=ds=#p3# (400)" };
	{ 14, 43034, "", "=q2=Recipe: Spiced Mammoth Treats", "=ds=#p3# (400)" };
	{ 15, 43020, "", "=q2=Recipe: Spiced Wyrm Burger", "=ds=#p3# (400)" };
	{ 16, 43025, "", "=q2=Recipe: Spicy Blue Nettlefish", "=ds=#p3# (400)" };
	{ 17, 43027, "", "=q2=Recipe: Spicy Fried Herring", "=ds=#p3# (400)" };
	{ 18, 43019, "", "=q2=Recipe: Tender Shoveltusk Steak", "=ds=#p3# (400)" };
	{ 19, 43037, "", "=q2=Recipe: Tracker Snacks", "=ds=#p3# (400)" };
	{ 20, 43021, "", "=q2=Recipe: Very Burnt Worg", "=ds=#p3# (400)" };
	{ 22, 46349, "", "=q3=Chef's Hat", "=ds=#s1#" };
	{ 23, 43007, "", "=q1=Northern Spices", "=ds=#e8#" };
	{ 25, 0, "inv_misc_bag_11", "=q6=" .. AL["Small Spice Bag"], "" };
	{ 26, 33925, "", "=q3=Recipe: Delicious Chocolate Cake", "=ds=#p3# (1)", "", "" };
	{ 27, 33871, "", "=q3=Recipe: Stormchops", "=ds=#p3# (300)", "", "" };
	{ 28, 44228, "", "=q1=Baby Spice", "=ds=", "", "" };
	{ 29, 44114, "", "=q1=Old Spices", "=ds=", "", "" };
	Prev = "CookingDaily1";
	Back = "COOKINGDAILYMENU";
};

---------------
--- Fishing ---
---------------

AtlasLoot_Data["FishingDaily1"] = {
	{ 1, 34837, "", "=q4=The 2 Ring", "=ds=#s13#", "", "" };
	{ 2, 33820, "", "=q3=Weather-Beaten Fishing Hat", "=ds=#s1#, #a1#", "", "" };
	{ 3, 35350, "", "=q3=Chuck's Bucket", "=ds=#e13#", "", "" };
	{ 4, 33818, "", "=q3=Muckbreath's Bucket", "=ds=#e13#", "", "" };
	{ 5, 35349, "", "=q3=Snarly's Bucket", "=ds=#e13#", "", "" };
	{ 6, 33816, "", "=q3=Toothy's Bucket", "=ds=#e13#", "", "" };
	{ 7, 34831, "", "=q3=Eye of the Sea", "=ds=#e7#", "", "" };
	{ 8, 34834, "", "=q2=Recipe: Captain Rumsey's Lager", "=ds=#p3# (100)", "", "" };
	{ 9, 34836, "", "=q2=Spun Truesilver Fishing Line", "=ds=#p24# #e17#", "", "" };
	{ 16, 34827, "", "=q1=Noble's Monocle", "=ds=#s1#", "", "" };
	{ 17, 34828, "", "=q1=Antique Silver Cufflinks", "=ds=#s8#", "", "" };
	{ 18, 34826, "", "=q1=Gold Wedding Band", "=ds=#s13#", "", "" };
	{ 19, 34829, "", "=q1=Ornate Drinking Stein", "=ds=#s15#", "", "" };
	{ 20, 34859, "", "=q1=Razor Sharp Fillet Knife", "=ds=#h1#, #w4#", "", "" };
	{ 21, 34109, "", "=q1=Weather-Beaten Journal", "=ds=#e10#", "", "" };
	{ 22, 8827, "", "=q1=Elixir of Water Walking", "=ds=#e2#", "", "" };
	{ 23, 34861, "", "=q1=Sharpened Fish Hook", "=ds=#e24#", "", "" };
	Next = "FishingDaily2";
	Back = "FISHINGDAILYMENU";
};

AtlasLoot_Data["FishingDaily2"] = {
	{ 1, 45862, "", "=q4=Bold Stormjewel", "=ds=#e7#", "", "" };
	{ 2, 45882, "", "=q4=Brilliant Stormjewel", "=ds=#e7#", "", "" };
	{ 3, 45879, "", "=q4=Delicate Stormjewel", "=ds=#e7#", "", "" };
	{ 4, 45987, "", "=q4=Rigid Stormjewel", "=ds=#e7#", "", "" };
	{ 5, 45883, "", "=q4=Runed Stormjewel", "=ds=#e7#", "", "" };
	{ 6, 45880, "", "=q4=Solid Stormjewel", "=ds=#e7#", "", "" };
	{ 7, 45881, "", "=q4=Sparkling Stormjewel", "=ds=#e7#", "", "" };
	{ 8, 33820, "", "=q3=Weather-Beaten Fishing Hat", "=ds=#s1#, #a1#", "", "" };
	{ 9, 45991, "", "=q3=Bone Fishing Pole", "=ds=#e20#", "", "" };
	{ 10, 45992, "", "=q3=Jeweled Fishing Pole", "=ds=#e20#", "", "" };
	{ 11, 44983, "", "=q3=Strand Crawler", "=ds=#e13#", "", "" };
	{ 12, 36784, "", "=q3=Siren's Tear", "=ds=#e7#", "", "" };
	{ 13, 45986, "", "=q3=Titanium Lockbox", "=ds=", "", "" };
	{ 14, 34834, "", "=q2=Recipe: Captain Rumsey's Lager", "=ds=#p3# (100)", "", "" };
	{ 15, 19971, "", "=q2=High Test Eternium Fishing Line", "=ds=#p24# #e17#", "", "" };
	{ 16, 45998, "", "=q1=Battered Jungle Hat", "=ds=#s1#", "", "" };
	{ 17, 45861, "", "=q1=Diamond-tipped Cane", "=ds=#h2#", "", "" };
	{ 18, 46006, "", "=q1=Glow Worm", "=ds=#e24#", "", "" };
	{ 19, 45984, "", "=q1=Unusual Compass", "=ds=", "", "" };
	{ 20, 40195, "", "=q1=Pygmy Oil", "=ds=#e2#", "", "" };
	{ 21, 8827, "", "=q1=Elixir of Water Walking", "=ds=#e2#", "", "" };
	{ 22, 46004, "", "=q1=Sealed Vial of Poison", "=ds=#m2#", "", "" };
	{ 23, 48679, "", "=q1=Waterlogged Recipe", "=ds=#m2# #p3# (350)", "", "" };
	Prev = "FishingDaily1";
	Back = "FISHINGDAILYMENU";
};

---------------------
--- Jewelcrafting ---
---------------------

AtlasLoot_Data["JewelcraftingDaily1"] = {
	{ 1, 46917, "", "=q3=Design: Bold Cardinal Ruby", "=ds=#p12# (450)" };
	{ 2, 46919, "", "=q3=Design: Bright Cardinal Ruby", "=ds=#p12# (450)" };
	{ 3, 46918, "", "=q3=Design: Delicate Cardinal Ruby", "=ds=#p12# (450)" };
	{ 4, 46923, "", "=q3=Design: Flashing Cardinal Ruby", "=ds=#p12# (450)" };
	{ 5, 46921, "", "=q3=Design: Fractured Cardinal Ruby", "=ds=#p12# (450)" };
	{ 6, 46920, "", "=q3=Design: Precise Cardinal Ruby", "=ds=#p12# (450)" };
	{ 7, 46916, "", "=q3=Design: Runed Cardinal Ruby", "=ds=#p12# (450)" };
	{ 8, 46922, "", "=q3=Design: Subtle Cardinal Ruby", "=ds=#p12# (450)" };
	{ 9, 41576, "", "=q3=Design: Bold Scarlet Ruby", "=ds=#p12# (390)" };
	{ 10, 41577, "", "=q3=Design: Delicate Scarlet Ruby", "=ds=#p12# (390)" };
	{ 11, 41578, "", "=q3=Design: Flashing Scarlet Ruby", "=ds=#p12# (390)" };
	{ 16, 46930, "", "=q3=Design: Brilliant King's Amber", "=ds=#p12# (450)" };
	{ 17, 46932, "", "=q3=Design: Mystic King's Amber", "=ds=#p12# (450)" };
	{ 18, 46933, "", "=q3=Design: Quick King's Amber", "=ds=#p12# (450)" };
	{ 19, 46928, "", "=q3=Design: Rigid King's Amber", "=ds=#p12# (450)" };
	{ 20, 46929, "", "=q3=Design: Smooth King's Amber", "=ds=#p12# (450)" };
	{ 21, 46931, "", "=q3=Design: Thick King's Amber", "=ds=#p12# (450)" };
	{ 22, 41579, "", "=q3=Design: Quick Autumn's Glow", "=ds=#p12# (390)" };
	{ 23, 41580, "", "=q3=Design: Rigid Autumn's Glow", "=ds=#p12# (390)" };
	Next = "JewelcraftingDaily2";
	Back = "JEWELCRAFTINGDAILYMENU";
};

AtlasLoot_Data["JewelcraftingDaily2"] = {
	{ 1, 47010, "", "=q3=Design: Accurate Ametrine", "=ds=#p12# (450)" };
	{ 2, 47015, "", "=q3=Design: Champion's Ametrine", "=ds=#p12# (450)" };
	{ 3, 46949, "", "=q3=Design: Deadly Ametrine", "=ds=#p12# (450)" };
	{ 4, 47020, "", "=q3=Design: Deft Ametrine", "=ds=#p12# (450)" };
	{ 5, 46952, "", "=q3=Design: Durable Ametrine", "=ds=#p12# (450)" };
	{ 6, 47016, "", "=q3=Design: Empowered Ametrine", "=ds=#p12# (450)" };
	{ 7, 46953, "", "=q3=Design: Etched Ametrine", "=ds=#p12# (450)" };
	{ 8, 47019, "", "=q3=Design: Fierce Ametrine", "=ds=#p12# (450)" };
	{ 9, 47012, "", "=q3=Design: Glimmering Ametrine", "=ds=#p12# (450)" };
	{ 10, 47008, "", "=q3=Design: Glinting Ametrine", "=ds=#p12# (450)" };
	{ 11, 46948, "", "=q3=Design: Inscribed Ametrine", "=ds=#p12# (450)" };
	{ 12, 47021, "", "=q3=Design: Lucent Ametrine", "=ds=#p12# (450)" };
	{ 13, 46947, "", "=q3=Design: Luminous Ametrine", "=ds=#p12# (450)" };
	{ 14, 46950, "", "=q3=Design: Potent Ametrine", "=ds=#p12# (450)" };
	{ 15, 46956, "", "=q3=Design: Pristine Ametrine", "=ds=#p12# (450)" };
	{ 16, 47007, "", "=q3=Design: Reckless Ametrine", "=ds=#p12# (450)" };
	{ 17, 47022, "", "=q3=Design: Resolute Ametrine", "=ds=#p12# (450)" };
	{ 18, 47018, "", "=q3=Design: Resplendent Ametrine", "=ds=#p12# (450)" };
	{ 19, 47017, "", "=q3=Design: Stalwart Ametrine", "=ds=#p12# (450)" };
	{ 20, 47023, "", "=q3=Design: Stark Ametrine", "=ds=#p12# (450)" };
	{ 21, 46951, "", "=q3=Design: Veiled Ametrine", "=ds=#p12# (450)" };
	{ 22, 47011, "", "=q3=Design: Wicked Ametrine", "=ds=#p12# (450)" };
	{ 23, 41582, "", "=q3=Design: Glinting Monarch Topaz", "=ds=#p12# (390)" };
	{ 24, 41689, "", "=q3=Design: Luminous Monarch Topaz", "=ds=#p12# (390)" };
	{ 25, 41686, "", "=q3=Design: Potent Monarch Topaz", "=ds=#p12# (390)" };
	{ 26, 41690, "", "=q3=Design: Reckless Monarch Topaz", "=ds=#p12# (390)" };
	{ 27, 41687, "", "=q3=Design: Stark Monarch Topaz", "=ds=#p12# (390)" };
	{ 28, 41688, "", "=q3=Design: Veiled Monarch Topaz", "=ds=#p12# (390)" };
	Prev = "JewelcraftingDaily1";
	Next = "JewelcraftingDaily3";
	Back = "JEWELCRAFTINGDAILYMENU";
};

AtlasLoot_Data["JewelcraftingDaily3"] = {
	{ 1, 46900, "", "=q3=Design: Dazzling Eye of Zul", "=ds=#p12# (450)" };
	{ 2, 46897, "", "=q3=Design: Enduring Eye of Zul", "=ds=#p12# (450)" };
	{ 3, 46912, "", "=q3=Design: Energized Eye of Zul", "=ds=#p12# (450)" };
	{ 4, 46904, "", "=q3=Design: Forceful Eye of Zul", "=ds=#p12# (450)" };
	{ 5, 46910, "", "=q3=Design: Intricate Eye of Zul", "=ds=#p12# (450)" };
	{ 6, 46901, "", "=q3=Design: Jagged Eye of Zul", "=ds=#p12# (450)" };
	{ 7, 46909, "", "=q3=Design: Lambent Eye of Zul", "=ds=#p12# (450)" };
	{ 8, 46905, "", "=q3=Design: Misty Eye of Zul", "=ds=#p12# (450)" };
	{ 9, 46914, "", "=q3=Design: Opaque Eye of Zul", "=ds=#p12# (450)" };
	{ 10, 46911, "", "=q3=Design: Radiant Eye of Zul", "=ds=#p12# (450)" };
	{ 11, 46903, "", "=q3=Design: Seer's Eye of Zul", "=ds=#p12# (450)" };
	{ 12, 46913, "", "=q3=Design: Shattered Eye of Zul", "=ds=#p12# (450)" };
	{ 13, 46907, "", "=q3=Design: Shining Eye of Zul", "=ds=#p12# (450)" };
	{ 14, 46898, "", "=q3=Design: Steady Eye of Zul", "=ds=#p12# (450)" };
	{ 15, 46906, "", "=q3=Design: Sundered Eye of Zul", "=ds=#p12# (450)" };
	{ 16, 46908, "", "=q3=Design: Tense Eye of Zul", "=ds=#p12# (450)" };
	{ 17, 46902, "", "=q3=Design: Timeless Eye of Zul", "=ds=#p12# (450)" };
	{ 18, 46915, "", "=q3=Design: Turbid Eye of Zul", "=ds=#p12# (450)" };
	{ 19, 46899, "", "=q3=Design: Vivid Eye of Zul", "=ds=#p12# (450)" };
	{ 20, 41697, "", "=q3=Design: Enduring Forest Emerald", "=ds=#p12# (390)" };
	{ 21, 41692, "", "=q3=Design: Energized Forest Emerald", "=ds=#p12# (390)" };
	{ 22, 41693, "", "=q3=Design: Forceful Forest Emerald", "=ds=#p12# (390)" };
	{ 23, 41694, "", "=q3=Design: Intricate Forest Emerald", "=ds=#p12# (390)" };
	{ 24, 41696, "", "=q3=Design: Lambent Forest Emerald", "=ds=#p12# (390)" };
	{ 25, 41699, "", "=q3=Design: Seer's Forest Emerald", "=ds=#p12# (390)" };
	{ 26, 41698, "", "=q3=Design: Vivid Forest Emerald", "=ds=#p12# (390)" };
	Prev = "JewelcraftingDaily2";
	Next = "JewelcraftingDaily4";
	Back = "JEWELCRAFTINGDAILYMENU";
};

AtlasLoot_Data["JewelcraftingDaily4"] = {
	{ 1, 46934, "", "=q3=Design: Balanced Dreadstone", "=ds=#p12# (450)" };
	{ 2, 46941, "", "=q3=Design: Defender's Dreadstone", "=ds=#p12# (450)" };
	{ 3, 46936, "", "=q3=Design: Glowing Dreadstone", "=ds=#p12# (450)" };
	{ 4, 46942, "", "=q3=Design: Guardian's Dreadstone", "=ds=#p12# (450)" };
	{ 5, 46945, "", "=q3=Design: Infused Dreadstone", "=ds=#p12# (450)" };
	{ 6, 46943, "", "=q3=Design: Mysterious Dreadstone", "=ds=#p12# (450)" };
	{ 7, 46944, "", "=q3=Design: Puissant Dreadstone", "=ds=#p12# (450)" };
	{ 8, 46937, "", "=q3=Design: Purified Dreadstone", "=ds=#p12# (450)" };
	{ 9, 46940, "", "=q3=Design: Regal Dreadstone", "=ds=#p12# (450)" };
	{ 10, 46939, "", "=q3=Design: Royal Dreadstone", "=ds=#p12# (450)" };
	{ 11, 46938, "", "=q3=Design: Shifting Dreadstone", "=ds=#p12# (450)" };
	{ 12, 46935, "", "=q3=Design: Sovereign Dreadstone", "=ds=#p12# (450)" };
	{ 13, 46946, "", "=q3=Design: Tenuous Dreadstone", "=ds=#p12# (450)" };
	{ 14, 41702, "", "=q3=Design: Puissant Twilight Opal", "=ds=#p12# (390)" };
	{ 15, 41703, "", "=q3=Design: Regal Twilight Opal", "=ds=#p12# (390)" };
	{ 16, 41701, "", "=q3=Design: Royal Twilight Opal", "=ds=#p12# (390)" };
	Prev = "JewelcraftingDaily3";
	Next = "JewelcraftingDaily5";
	Back = "JEWELCRAFTINGDAILYMENU";
};

AtlasLoot_Data["JewelcraftingDaily5"] = {
	{ 1, 46927, "", "=q3=Design: Lustrous Majestic Zircon", "=ds=#p12# (450)" };
	{ 2, 46924, "", "=q3=Design: Solid Majestic Zircon", "=ds=#p12# (450)" };
	{ 3, 46925, "", "=q3=Design: Sparkling Majestic Zircon", "=ds=#p12# (450)" };
	{ 4, 46926, "", "=q3=Design: Stormy Majestic Zircon", "=ds=#p12# (450)" };
	{ 5, 41581, "", "=q3=Design: Lustrous Sky Sapphire", "=ds=#p12# (390)" };
	{ 6, 42138, "", "=q3=Design: Solid Sky Sapphire", "=ds=#p12# (390)" };
	{ 16, 41704, "", "=q3=Design: Chaotic Skyflare Diamond", "=ds=#p12# (420)" };
	{ 17, 41705, "", "=q3=Design: Effulgent Skyflare Diamond", "=ds=#p12# (420)" };
	{ 18, 41706, "", "=q3=Design: Ember Skyflare Diamond", "=ds=#p12# (420)" };
	{ 19, 41708, "", "=q3=Design: Insightful Earthsiege Diamond", "=ds=#p12# (420)" };
	{ 20, 41709, "", "=q3=Design: Invigorating Earthsiege Diamond", "=ds=#p12# (420)" };
	{ 21, 41710, "", "=q3=Design: Relentless Earthsiege Diamond", "=ds=#p12# (420)" };
	{ 22, 41707, "", "=q3=Design: Revitalizing Skyflare Diamond", "=ds=#p12# (420)" };
	{ 23, 41711, "", "=q3=Design: Trenchant Earthsiege Diamond", "=ds=#p12# (420)" };
	Prev = "JewelcraftingDaily4";
	Next = "JewelcraftingDaily6";
	Back = "JEWELCRAFTINGDAILYMENU";
};

AtlasLoot_Data["JewelcraftingDaily6"] = {
	{ 1, 42298, "", "=q3=Design: Bold Dragon's Eye", "=ds=#p12# (370)" };
	{ 2, 42299, "", "=q3=Design: Bright Dragon's Eye", "=ds=#p12# (370)" };
	{ 3, 42300, "", "=q3=Design: Brilliant Dragon's Eye", "=ds=#p12# (370)" };
	{ 4, 42301, "", "=q3=Design: Delicate Dragon's Eye", "=ds=#p12# (370)" };
	{ 5, 42302, "", "=q3=Design: Flashing Dragon's Eye", "=ds=#p12# (370)" };
	{ 6, 42303, "", "=q3=Design: Fractured Dragon's Eye", "=ds=#p12# (370)" };
	{ 7, 42304, "", "=q3=Design: Lustrous Dragon's Eye", "=ds=#p12# (370)" };
	{ 8, 42305, "", "=q3=Design: Mystic Dragon's Eye", "=ds=#p12# (370)" };
	{ 9, 42306, "", "=q3=Design: Precise Dragon's Eye", "=ds=#p12# (370)" };
	{ 10, 42307, "", "=q3=Design: Quick Dragon's Eye", "=ds=#p12# (370)" };
	{ 11, 42308, "", "=q3=Design: Rigid Dragon's Eye", "=ds=#p12# (370)" };
	{ 12, 42309, "", "=q3=Design: Runed Dragon's Eye", "=ds=#p12# (370)" };
	{ 13, 42310, "", "=q3=Design: Smooth Dragon's Eye", "=ds=#p12# (370)" };
	{ 14, 42311, "", "=q3=Design: Solid Dragon's Eye", "=ds=#p12# (370)" };
	{ 15, 42312, "", "=q3=Design: Sparkling Dragon's Eye", "=ds=#p12# (370)" };
	{ 16, 42313, "", "=q3=Design: Stormy Dragon's Eye", "=ds=#p12# (370)" };
	{ 17, 42314, "", "=q3=Design: Subtle Dragon's Eye", "=ds=#p12# (370)" };
	{ 18, 42315, "", "=q3=Design: Thick Dragon's Eye", "=ds=#p12# (370)" };
	{ 20, 42652, "", "=q4=Design: Titanium Earthguard Chain", "=ds=#p12# (420)" };
	{ 21, 42649, "", "=q4=Design: Titanium Earthguard Ring", "=ds=#p12# (420)" };
	{ 22, 42648, "", "=q4=Design: Titanium Impact Band", "=ds=#p12# (420)" };
	{ 23, 42651, "", "=q4=Design: Titanium Impact Choker", "=ds=#p12# (420)" };
	{ 24, 42653, "", "=q4=Design: Titanium Spellshock Necklace", "=ds=#p12# (420)" };
	{ 25, 42650, "", "=q4=Design: Titanium Spellshock Ring", "=ds=#p12# (420)" };
	Prev = "JewelcraftingDaily5";
	Back = "JEWELCRAFTINGDAILYMENU";
};

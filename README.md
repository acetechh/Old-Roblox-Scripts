# Old-Roblox-Scripts

**All of the scripts you see here are in the ``Scripts`` folder then their designated folder (ex: `Font Fix` or `Color Fix`).**

## Tutorial on how to port fonts from modern studio to a older roblox studio client (ex: Fredoka One)
1. Open modern / normal roblox studio client.
2. Run the contents of `ModernStudioFontFix.lua` in the modern roblox studio client command bar at the bottom. This will make a GuiExports folder in **workspace**.
3. Save the GuiExports folder as a file by right clicking on it and pressing **save as a file** or you can simply copy it.
4. Insert the GuiExports file into your older roblox studio client into **workspace** (ex: 2016) or copy and paste it over into **workspace**.
5. Run the contents of `OldStudioFontFix.lua` in the older roblox studio client command bar at the bottom. This will remove the GuiExports folder and set all the fonts correctly.

## Tutorial on how to fix the colors on a RBXL when porting to a Older Roblox Studio Client

**Note: This script is currently only configurated to work on the Workspace. If you want it to run through ReplicatedStorage or ServerStorage, you'll have to change "Workspace" at the last line to whatever "service" you want to fix. (This code is mainly for 2016 studio clients.)**

1. Open modern / normal roblox studio client.
2. Run the contents of `ModernStudioColorFix.lua` in the modern roblox studio client command bar at the bottom. This will make a BrickColorValue in all the parts in the designated service.
3. Save the place as a **XML place file (rbxlx)**, **don't** save it as a **standard "Binary" place file (rbxl)**.
4. Once you have it saved, go to the **Old Roblox Studio Client** and open the **XML place file (rbxlx)**
5. Run the contents of `OldStudioColorFix.lua` in the older roblox studio client command bar at the bottom. This will set all the colors as the brickcolorvalue value and then remove it. You are now done.

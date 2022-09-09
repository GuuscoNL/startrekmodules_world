---------------------------------------
---------------------------------------
--         Star Trek Modules         --
--                                   --
--            Created by             --
--       Jan 'Oninoni' Ziegler       --
--                                   --
-- This software can be used freely, --
--    but only distributed by me.    --
--                                   --
--    Copyright © 2020 Jan Ziegler   --
---------------------------------------
---------------------------------------

---------------------------------------
--          Config | Shared          --
---------------------------------------

-- Vector_Max in Skybox is  (2^17) 
-- @ x1024 (2^10) Scale -> Visually at 134217728 (2^27)
Star_Trek.World.Vector_Max = 131071 -- TODO: Recheck

-- Sky Cam is not Readable Clientside, which is absurd...
Star_Trek.World.Skybox_Scale = 1 / 1024

-- Delay inbetween 2 render sorting operations.
Star_Trek.World.SortDelay = 0.5

-- Delay inbetween 2 world think operations.
Star_Trek.World.ThinkDelay = 0.025
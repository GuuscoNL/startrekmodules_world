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
--            World Entity           --
--           Base | Server           --
---------------------------------------

if not istable(ENT) then Star_Trek:LoadAllModules() return end
local SELF = ENT

function SELF:Init(pos, ang, model, diameter)
	self.Pos = pos or WorldVector()
	self.Ang = ang or Angle()

	local modelDiameter = Star_Trek.World:GetModelDiameter(model)
	self.Diameter = diameter or modelDiameter
	self.Scale = self.Diameter / modelDiameter

	self.Model = model or "models/hunter/blocks/cube4x4x4.mdl"
end

function SELF:Terminate()
end

function SELF:Update()
	Star_Trek.World:NetworkUpdate(self)

	self.Updated = nil
end

function SELF:GetClientData(clientData)
	clientData.Pos = self.Pos
	clientData.Ang = self.Ang

	clientData.Model = self.Model
	clientData.Diameter = self.Diameter
	clientData.Scale = self.Scale
end

function SELF:GetClientDynData(clientData)
end

function SELF:SetPos(pos)
	self.Pos = pos

	self.Updated = true
end

function SELF:SetAngles(ang)
	self.Ang = ang

	self.Updated = true
end

AddCSLuaFile()

if CLIENT then
	SWEP.WepSelectIcon 	= surface.GetTextureID("breach/wep_eyedrops")
	SWEP.BounceWeaponIcon = false
end

SWEP.Author			= "Kanade"
SWEP.Purpose		= "Stops blinking for 5 seconds"
SWEP.Instructions	= "Click left to use"

SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/vinrax/props/eyedrops.mdl"
SWEP.WorldModel		= "models/vinrax/props/eyedrops.mdl"
SWEP.PrintName		= "Eyedrops"
SWEP.Slot			= 1
SWEP.SlotPos		= 1
SWEP.DrawAmmo		= false
SWEP.DrawCrosshair	= true
SWEP.HoldType		= "normal"
SWEP.Spawnable		= false
SWEP.AdminSpawnable	= false

SWEP.droppable				= true
SWEP.teams					= {TEAM_GUARD, TEAM_CLASSD, TEAM_SCI, TEAM_CHAOS, TEAM_STAFF}

SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Ammo			=  "none"
SWEP.Primary.Automatic		= false

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Ammo			=  "none"
SWEP.Secondary.Automatic	=  false

function SWEP:Deploy()
	self.Owner:DrawViewModel(false)
end

function SWEP:DrawWorldModel()
	if !IsValid(self.Owner) then
		self:DrawModel()
	end
end

function SWEP:Initialize()
	self:SetHoldType("normal")
end

function SWEP:PrimaryAttack()
	if SERVER then
		OnUseEyedrops(self.Owner)
	end
end

function SWEP:Think()
end

function SWEP:Reload()
end

function SWEP:SecondaryAttack()
end

function SWEP:CanPrimaryAttack()
end
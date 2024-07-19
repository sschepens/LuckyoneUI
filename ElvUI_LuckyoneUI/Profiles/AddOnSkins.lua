-- Lua functions
local unpack = unpack

-- AddOn namespace
local _, Private = ...

-- ElvUI modules
local E, L = unpack(ElvUI)

-- AddOnSkins profile
function Private:Setup_AddOnSkins()
	if not E:IsAddOnEnabled('AddOnSkins') then Private:Print('|cff16C3F2AddOn|r|cFFFFFFFFSkins|r ' .. L["is not installed or enabled."]) return end

	local AS = unpack(AddOnSkins)

	-- Profile name
	local name = (E.global.L1UI.dev and 'Luckyone') or 'Luckyone ' .. Private.Version

	-- Profile creation
	AS.data:SetProfile(name)

	-- Profile data
	AS.db.Shadows = false
	AS.db.SkinDebug = true

	AS.db.EmbedBackdrop = false
	AS.db.EmbedBackdropTransparent = false
	AS.db.EmbedOoC = false
	AS.db.EmbedRightChat = false
	AS.db.EmbedSystem = false
	AS.db.EmbedSystemDual = false
	AS.db.EmbedSystemMessage = false

	Private:Print(L["AddOnSkins profile has been set."])
end

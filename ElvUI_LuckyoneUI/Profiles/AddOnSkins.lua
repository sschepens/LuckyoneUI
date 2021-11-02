local L1UI, E, L, V, P, G = unpack(select(2, ...))

local unpack = unpack

-- AddOnSkins Profile
function L1UI:Get_AddOnSkins_Profile()

	local AS = unpack(AddOnSkins)

	AS.data:SetProfile("Luckyone")

	AS.db["DBMFont"] = "Expressway"
	AS.db["Shadows"] = false

	AS.db["EmbedBackdrop"] = false
	AS.db["EmbedBackdropTransparent"] = false
	AS.db["EmbedOoC"] = false
	AS.db["EmbedRightChat"] = false
	AS.db["EmbedSystem"] = false
	AS.db["EmbedSystemDual"] = false
	AS.db["EmbedSystemMessage"] = false
end

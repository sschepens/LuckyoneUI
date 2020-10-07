local L1UI, E, L, V, P, G = unpack(select(2, ...))

-- Shadow&Light profile setup
function L1UI:GetSLEProfile()

	-- Global DB
	E.global["sle"]["advanced"]["confirmed"] = true
	E.global["sle"]["advanced"]["gameMenu"]["enable"] = false
	E.global["sle"]["advanced"]["general"] = true

	-- Private DB
	E.private["sle"]["install_complete"] = "3.77"
	E.private["sle"]["module"]["blizzmove"]["enable"] = false
	E.private["sle"]["professions"]["deconButton"]["enable"] = false
	E.private["sle"]["skins"]["objectiveTracker"]["BGbackdrop"] = false
	E.private["sle"]["skins"]["objectiveTracker"]["color"]["g"] = 0.41960784313725
	E.private["sle"]["skins"]["objectiveTracker"]["color"]["r"] = 0.25882352941176
	E.private["sle"]["skins"]["objectiveTracker"]["skinnedTextureLogo"] = "SLE"
	E.private["sle"]["skins"]["objectiveTracker"]["texture"] = "Solid"

	-- Profile DB
	E.db["sle"]["armory"]["character"]["background"]["overlay"] = false
	E.db["sle"]["armory"]["character"]["corruption"]["font"] = "Expressway"
	E.db["sle"]["armory"]["character"]["corruption"]["fontSize"] = 12
	E.db["sle"]["armory"]["character"]["corruptionText"]["font"] = "Expressway"
	E.db["sle"]["armory"]["character"]["corruptionText"]["fontSize"] = 11
	E.db["sle"]["armory"]["character"]["corruptionText"]["icon"] = true
	E.db["sle"]["armory"]["character"]["corruptionText"]["style"] = "Hide"
	E.db["sle"]["armory"]["character"]["durability"]["display"] = "Hide"
	E.db["sle"]["armory"]["character"]["durability"]["font"] = "Expressway"
	E.db["sle"]["armory"]["character"]["durability"]["fontSize"] = 11
	E.db["sle"]["armory"]["character"]["enable"] = true
	E.db["sle"]["armory"]["character"]["enchant"]["font"] = "Expressway"
	E.db["sle"]["armory"]["character"]["enchant"]["fontSize"] = 9
	E.db["sle"]["armory"]["character"]["gem"]["size"] = 11
	E.db["sle"]["armory"]["character"]["gem"]["xOffset"] = 4
	E.db["sle"]["armory"]["character"]["gradient"]["quality"] = true
	E.db["sle"]["armory"]["character"]["ilvl"]["colorType"] = "QUALITY"
	E.db["sle"]["armory"]["character"]["ilvl"]["font"] = "Expressway"
	E.db["sle"]["armory"]["character"]["ilvl"]["fontSize"] = 11
	E.db["sle"]["armory"]["inspect"]["background"]["overlay"] = false
	E.db["sle"]["armory"]["inspect"]["corruptionText"]["font"] = "Expressway"
	E.db["sle"]["armory"]["inspect"]["corruptionText"]["fontSize"] = 11
	E.db["sle"]["armory"]["inspect"]["corruptionText"]["icon"] = true
	E.db["sle"]["armory"]["inspect"]["corruptionText"]["style"] = "Hide"
	E.db["sle"]["armory"]["inspect"]["enable"] = true
	E.db["sle"]["armory"]["inspect"]["enchant"]["font"] = "Expressway"
	E.db["sle"]["armory"]["inspect"]["enchant"]["fontSize"] = 9
	E.db["sle"]["armory"]["inspect"]["gem"]["size"] = 11
	E.db["sle"]["armory"]["inspect"]["gem"]["xOffset"] = 4
	E.db["sle"]["armory"]["inspect"]["gradient"]["quality"] = true
	E.db["sle"]["armory"]["inspect"]["ilvl"]["colorType"] = "QUALITY"
	E.db["sle"]["armory"]["inspect"]["ilvl"]["font"] = "Expressway"
	E.db["sle"]["armory"]["inspect"]["ilvl"]["fontSize"] = 11
	E.db["sle"]["armory"]["stats"]["catFonts"]["font"] = "Expressway"
	E.db["sle"]["armory"]["stats"]["catFonts"]["size"] = 11
	E.db["sle"]["armory"]["stats"]["itemLevel"]["font"] = "Expressway"
	E.db["sle"]["armory"]["stats"]["itemLevel"]["size"] = 13
	E.db["sle"]["armory"]["stats"]["List"]["ATTACK_DAMAGE"] = false
	E.db["sle"]["armory"]["stats"]["List"]["BLOCK"] = false
	E.db["sle"]["armory"]["stats"]["List"]["DODGE"] = false
	E.db["sle"]["armory"]["stats"]["List"]["HEALTH"] = true
	E.db["sle"]["armory"]["stats"]["List"]["PARRY"] = false
	E.db["sle"]["armory"]["stats"]["List"]["POWER"] = true
	E.db["sle"]["armory"]["stats"]["statFonts"]["font"] = "Expressway"
	E.db["sle"]["armory"]["stats"]["statFonts"]["size"] = 11
	E.db["sle"]["bags"]["petLevel"]["fonts"]["font"] = "Expressway"
	E.db["sle"]["bags"]["petLevel"]["fonts"]["size"] = 12
	E.db["sle"]["blizzard"]["rumouseover"] = true
	E.db["sle"]["chat"]["dpsSpam"] = true
	E.db["sle"]["media"]["fonts"]["editbox"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["editbox"]["size"] = 11
	E.db["sle"]["media"]["fonts"]["gossip"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["gossip"]["size"] = 11
	E.db["sle"]["media"]["fonts"]["mail"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["mail"]["size"] = 11
	E.db["sle"]["media"]["fonts"]["objective"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["objective"]["size"] = 11
	E.db["sle"]["media"]["fonts"]["objectiveHeader"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["objectiveHeader"]["size"] = 11
	E.db["sle"]["media"]["fonts"]["pvp"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["pvp"]["size"] = 24
	E.db["sle"]["media"]["fonts"]["questFontSuperHuge"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["questFontSuperHuge"]["size"] = 22
	E.db["sle"]["media"]["fonts"]["subzone"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["subzone"]["size"] = 24
	E.db["sle"]["media"]["fonts"]["zone"]["font"] = "Expressway"
	E.db["sle"]["media"]["fonts"]["zone"]["size"] = 28
	E.db["sle"]["minimap"]["mapicons"]["iconmouseover"] = true
	E.db["sle"]["minimap"]["mapicons"]["spacing"] = 1
	E.db["sle"]["nameplates"]["targetcount"]["font"] = "Expressway"
	E.db["sle"]["nameplates"]["threat"]["font"] = "Expressway"
	E.db["sle"]["raidmarkers"]["enable"] = false
	E.db["sle"]["skins"]["objectiveTracker"]["classHeader"] = true
	E.db["sle"]["skins"]["objectiveTracker"]["underlineClass"] = true
	E.db["sle"]["skins"]["talkinghead"]["hide"] = true
	E.db["sle"]["tooltip"]["RaidProg"]["raids"]["daz"] = false
	E.db["sle"]["tooltip"]["RaidProg"]["raids"]["ep"] = false
	E.db["sle"]["tooltip"]["RaidProg"]["raids"]["nzoth"] = false
	E.db["sle"]["tooltip"]["RaidProg"]["raids"]["sc"] = false
	E.db["sle"]["tooltip"]["RaidProg"]["raids"]["uldir"] = false
end

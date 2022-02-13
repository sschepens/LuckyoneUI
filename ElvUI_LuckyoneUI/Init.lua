local E, L, V, P, G = unpack(ElvUI)
local EP = LibStub('LibElvUIPlugin-1.0')
local addon, Engine = ...

local _G = _G
local GetAddOnMetadata = GetAddOnMetadata

-- Ace
local L1UI = E:NewModule(addon, 'AceConsole-3.0', 'AceHook-3.0', 'AceEvent-3.0', 'AceTimer-3.0');

Engine[1] = L1UI -- LuckyoneUI
Engine[2] = E -- ElvUI Engine
Engine[3] = L -- ElvUI Locales
Engine[4] = V -- ElvUI PrivateDB
Engine[5] = P -- ElvUI ProfileDB
Engine[6] = G -- ElvUI GlobalDB
_G[addon] = Engine;

-- Constants
L1UI.Config = {}
L1UI.CreditsList = {}
L1UI.Name = '|cff4beb2cLuckyoneUI|r'
L1UI.Version = GetAddOnMetadata(addon, 'Version')

-- Load the following on login
function L1UI:PLAYER_ENTERING_WORLD(_, initLogin, isReload)

	-- Luckydebug
	if initLogin or not ElvDB.LuckyoneDisabledAddOns then
		ElvDB.LuckyoneDisabledAddOns = {}
	end

	L1UI:DisabledFrames()
	L1UI:LoadCommands()
	L1UI:VersionCheck()
end

-- Init
function L1UI:Initialize()
	if E.private.install_complete and E.private.L1UI.install_version == nil then
		E.PluginInstaller:Queue(L1UI.InstallerData)
	end

	EP:RegisterPlugin(addon, L1UI.GetOptions)
	L1UI:RegisterEvent('PLAYER_ENTERING_WORLD')
end

-- Callback
local function CallbackInitialize()
	L1UI:Initialize()
end

E:RegisterModule(addon, CallbackInitialize)

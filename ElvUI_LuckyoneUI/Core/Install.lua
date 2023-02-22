local L1UI, E, L, V, P, G = unpack(select(2, ...))

local C_UI_Reload = C_UI.Reload
local format = format

-- Set install version to current LuckyoneUI version
local function InstallComplete()
	E.global.L1UI.install_version = L1UI.Version
	C_UI_Reload()
end

-- Installer table
L1UI.InstallerData = {
	Title = format('|cff4beb2c%s %s|r', L1UI.Name, L["Installation"]),
	Name = L1UI.Name,
	tutorialImage = L1UI.Logo,
	Pages = {
		[1] = function()
			PluginInstallFrame.SubTitle:SetText(L["Welcome"])
			PluginInstallFrame.Desc1:SetText(L["This installation process will guide you through a few steps and apply settings to your current ElvUI profile."])
			PluginInstallFrame.Desc2:SetText(L["Note: |cff4beb2cMake sure you have a backup of your current profile|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', InstallComplete)
			PluginInstallFrame.Option1:SetText(L["Skip Process"])
		end,
		[2] = function()
			PluginInstallFrame.SubTitle:SetText(L["ElvUI Layouts"])
			PluginInstallFrame.Desc1:SetText(L["Please click a button below to apply the layout of your choosing."])
			PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cHigh|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_Layout('main') end)
			PluginInstallFrame.Option1:SetText(L["DPS & Tanks"])
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:Setup_Layout('healing') end)
			PluginInstallFrame.Option2:SetText(L["Healing"])
		end,
		[3] = function()
			PluginInstallFrame.SubTitle:SetText(L["ElvUI Plugins"])
			PluginInstallFrame.Desc1:SetText(L["Please click a button below to apply Luckyones profile for several ElvUI plugins."])
			PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cHigh|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_AddOnSkins() end)
			PluginInstallFrame.Option1:SetText('|cff16C3F2AddOn|r|cFFFFFFFFSkins|r')
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:Setup_ProjectAzilroka() end)
			PluginInstallFrame.Option2:SetText('|cff16C3F2Project|r|cFFFFFFFFAzilroka|r')
			if E.Retail then
				PluginInstallFrame.Option3:Show()
				PluginInstallFrame.Option3:SetScript('OnClick', function() L1UI:Setup_ShadowAndLight() end)
				PluginInstallFrame.Option3:SetText('|cff9482c9Shadow & Light|r')
				PluginInstallFrame.Option4:Show()
				PluginInstallFrame.Option4:SetScript('OnClick', function() L1UI:Setup_WindTools() end)
				PluginInstallFrame.Option4:SetText('|cff5385edWindTools|r')
			end
		end,
		[4] = function()
			PluginInstallFrame.SubTitle:SetText(L["Color Theme"])
			PluginInstallFrame.Desc1:SetText(L["Please click a button below to set the UnitFrames Color Theme."])
			PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_Theme('dark') end)
			PluginInstallFrame.Option1:SetText(L["Dark"])
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:Setup_Theme('class') end)
			PluginInstallFrame.Option2:SetText(L["Class Color"])
		end,
		[5] = function()
			PluginInstallFrame.SubTitle:SetText(L["Chat"])
			PluginInstallFrame.Desc1:SetText(L["This will setup the chat windows to look like this:\n\nLeft Chat: General - Log - Whisper - Guild - Party\n\nRight Chat: Details! Damage Meter"])
			PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_Chat() end)
			PluginInstallFrame.Option1:SetText(L["Setup Chat"])
		end,
		[6] = function()
			PluginInstallFrame.SubTitle:SetText(L["Console Variables"])
			PluginInstallFrame.Desc1:SetText(L["Full list of all changed CVars can be found in /luckyoneui config -> CVars."])
			PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_CVars() L1UI:NameplateCVars() end)
			PluginInstallFrame.Option1:SetText(L["Setup CVars"])
		end,
		[7] = function()
			PluginInstallFrame.SubTitle:SetText(L["NamePlates"])
			PluginInstallFrame.Desc1:SetText(L["Choose between ElvUI NamePlates and Plater NamePlates."])
			PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cHigh|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_NamePlates() end)
			PluginInstallFrame.Option1:SetText('ElvUI')
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript('OnClick', function() E:StaticPopup_Show('L1UI_EDITBOX', nil, nil, 'https://wago.io/LuckyoneUI-Plater') end)
			PluginInstallFrame.Option2:SetText('Plater')
		end,
		[8] = function()
			PluginInstallFrame.SubTitle:SetText(L["BossMods"])
			PluginInstallFrame.Desc1:SetText(L["Choose between DBM and BigWigs."])
			PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_BigWigs('main') end)
			PluginInstallFrame.Option1:SetText('BigWigs')
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:Setup_BigWigs('healing') end)
			PluginInstallFrame.Option2:SetText(L["BigWigs Healing"])
			PluginInstallFrame.Option3:Show()
			PluginInstallFrame.Option3:SetScript('OnClick', function() L1UI:Setup_DBM('main') end)
			PluginInstallFrame.Option3:SetText('DBM')
			PluginInstallFrame.Option4:Show()
			PluginInstallFrame.Option4:SetScript('OnClick', function() L1UI:Setup_DBM('healing') end)
			PluginInstallFrame.Option4:SetText(L["DBM Healing"])
		end,
		[9] = function()
			PluginInstallFrame.SubTitle:SetText(L["Details Profile"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Luckyones profile for Details! Damage Meter."])
			PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_Details() end)
			PluginInstallFrame.Option1:SetText(L["Setup Details"])
		end,
		[10] = function()
			PluginInstallFrame.SubTitle:SetText(L["Quartz Profile"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Luckyones profile for Quartz."])
			PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_Quartz('main') end)
			PluginInstallFrame.Option1:SetText('Quartz')
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:Setup_Quartz('healing') end)
			PluginInstallFrame.Option2:SetText(L["Quartz Healing"])
		end,
		[E.Retail and 11] = function()
			PluginInstallFrame.SubTitle:SetText(L["OmniCD Profile"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Luckyones profile for OmniCD Party CDs."])
			PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_OmniCD('main') end)
			PluginInstallFrame.Option1:SetText('OmniCD')
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript('OnClick', function() L1UI:Setup_OmniCD('healing') end)
			PluginInstallFrame.Option2:SetText(L["OmniCD Healing"])
		end,
		[E.Retail and 12] = function()
			PluginInstallFrame.SubTitle:SetText(L["WarpDeplete Profile"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Luckyones profile for WarpDeplete."])
			PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cOptional|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() L1UI:Setup_WarpDeplete() end)
			PluginInstallFrame.Option1:SetText(L["Setup WarpDeplete"])
		end,
		[E.Retail and 13 or 11] = function()
			PluginInstallFrame.SubTitle:SetText(L["Installation Complete"])
			PluginInstallFrame.Desc1:SetText(L["You have completed the installation process, please click 'Finished' to reload the UI."])
			PluginInstallFrame.Desc2:SetText(L["Importance: |cff4beb2cHigh|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', InstallComplete)
			PluginInstallFrame.Option1:SetText(L["Finished"])
		end,
	},
	StepTitles = {
		[1] = L["Welcome"],
		[2] = L["ElvUI Layouts"],
		[3] = L["ElvUI Plugins"],
		[4] = L["Color Theme"],
		[5] = L["Chat"],
		[6] = L["Console Variables"],
		[7] = L["NamePlates"],
		[8] = L["BossMods"],
		[9] = 'Details',
		[10] = 'Quartz',
		[E.Retail and 11] = 'OmniCD',
		[E.Retail and 12] = 'WarpDeplete',
		[E.Retail and 13 or 11] = L["Installation Complete"],
	},
	StepTitlesColor = { 1, 1, 1 },
	StepTitlesColorSelected = { 0, 179 / 255, 1 },
	StepTitleWidth = 200,
	StepTitleButtonWidth = 180,
	StepTitleTextJustification = 'CENTER',
}

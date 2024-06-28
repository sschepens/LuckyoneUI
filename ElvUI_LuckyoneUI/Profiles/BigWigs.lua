local Name, Private = ...
local E, L, V, P, G = unpack(ElvUI)

local _G = _G

-- BigWigs profiles
function Private:Setup_BigWigs(layout, installer)
	if not E:IsAddOnEnabled('BigWigs') then Private:Print('BigWigs ' .. L["is not installed or enabled."]) return end

	-- Profile name
	local name = 'Luckyone Main'
	local name_healing = 'Luckyone Healing'

	-- Profile string
	local profileStringMain = 'BW1:DnvSUTnsq0JhTrkoKCsYWkxroGKIlaPXWM5StI6ogihBbjlbA6ya3eTKCm5IBj3f7UuYkLQk16tWf5dqFc6lyH(eYNGqktr2LuKg3XIbCMLZBEV3o06RSgPGqGIHrubwIPzIxUcszjvP9C8hoszB9S)8BzuEkIuFqW77EHFxp1Uw)4xwVfK3tjuUysalNZiqNr2hEWBSkIUbK8YcoMWFB7fZbiRSIDr0nCgQQGDWmGqOt7yxC2rbuoklg6uKDCrjhoevMxGOZMTC4sqkXzXIV0GtZLeCgWhELF)ZVO78BPzYlXFgEXAJeVIXaEisaJNFlkcK4uyK9rh48nZHdOz0Weonfsk8Jt1TEbkfUV7DmUEqtrZkGZut12nmbjtwgHfmcAMbPDxA6AyjbunwgZPtVInfXJejZZfaouB1JVpKGeIqJRnUEmgg(kpebhNP29(0hiYIaeV0H)4A9RUOW)vdBEwuVr7C4bhE8)jQTK3z(kF4o5LjOi60Ewww28TL6zRFMxbybaofT(6xBIN8wBtZD1ucj08jQNTP5jaxOV7DCV(iwRq9OLACZQxDApNvTDOSnln)Xsni1xipt97QglGkmhVzcwGdiGlI3hNILpErHO912NN35F4m)fWDSZaCCI8VwzmSQb52V7P(BQb6dAVnNL4A89XZ19CnosM89NWAu)jEGqI4YexdmJ5sTdKZH7hGZW6DASqASIlLZiGxxYKRoNlyOqnPF0QYT(TSyzz2w8dIRgSgUXQNQAVva6uLJ7TycjzDnfmYQjBV)NMno8VPEEIQ5(RQwpn1EkBV6ohKtKygbdC7hGBaDcKSP(oOCVO9cdgfVFslUDRyRwbwR0s7H)UxQ9NQSBcCh67pCGQ)(KFDLr4N(Pr6fyGR25gvFD5(wQbSM1tP6Q8wZnPQjSU(eJ6k0H2f8MqXHWQUzXANnPZZ)N0z)8p'
	local profileStringHealing = 'BW1:DnvVUTnsqyWWyKIdjwsg2U5k8vKding20NDY5Uqd6FeKSeKPJbCt0sQXKlULCxS7sjRGuPQRw1PYiipa6rq1PyHEe8JGqEaYUKI0iHfd4mlNV577BhA9nwTeqiqrqxQalX0uXFphsyXLPnD870vzB99gpMs5jis1bbN4DPVxp1AwFD9fRa5ekHYfddyzCgboUR9E7(wR8OBajROGJj8p29I4aKwuXop6gogvwWoymqi0rhBNF2(buokncoop7W8soCyqrEoIolxXHRaPeNgj()ACAMKGtbENR9BDXLEtUJMkVc)j4VwyK41mgWdrcO)K7qdajob6AV)UopAoSnnLggZPjqCUFCQU1lrjWdE3Z46bncnohotn1wUHXiz8SbybJGgBqATzMU6uqavTzrC6ORzJq8bI4jzcahQT6(pesqcrOX16xngddFtpebhLQw7HKNiY0aeVWH)Wc9RUOW)tdBw6GMDF(E7U3H)suBj)R5R8H7LxfJgqh10YYYMVQutB9ZKsaZbWjV1doWep6D2MM90ucj08zqtBtZdbUqF374EZ(SgH6rl14MwT6S1ew52HY2S0S9mnivxi)PADvTPqjM9xoelWbeWfXBHtWYxonx0(A7RxVlo7C)PW9SZbCuS81Zngw5GCB5DQ)YkGot7TzSyxJV3FIUNBWdKX)4vSAvFspqirCzSRbM(CP2bY4WdTXPy9onwinwXvYXeONhz41xWfmuOM0VyEXw)kwmRiBf(brLdwdxF12QTwjaDQYX9omHeVOIcgzvNTXVPzJd)hQDIv13CE56PP22SnQ6SDgrIzemWTFcU20Hq8YQ7GI9ITMAWi)9JAWTBez1iWAUwAp939mT)uMDBGBhF)oTvT28l2Znc)0p2vVadC1ZVv1sx(Zpt1MvVAkLxL3zUjv1HfvNyuxUo0UqVHuCim3lns7SXhVZ7tg)Z)'

	-- Don't use LoadAddOn to force load core and options
	-- If you don't do this initial ImportProfileString call, the popup will mention "Default" instead of your custom profile name
	BigWigsAPI:ImportProfileString(Private.Name, (layout == 'main' and profileStringMain) or profileStringHealing)

	-- Set profile so we can add or modify our profile instead of the "Default" one
	BigWigs.db:SetProfile((layout == 'main' and name) or name_healing)

	-- This is the actual profile import
	-- Arg 1: Name, Arg 2: Profile string
	BigWigsAPI:ImportProfileString(Private.Name, (layout == 'main' and profileStringMain) or profileStringHealing)

	if installer then
		_G.LuckyoneInstallStepComplete.message = L["BigWigs profile has been set."]
		_G.LuckyoneInstallStepComplete:Show()
	end

	Private:Print(L["BigWigs profile has been set."])
end

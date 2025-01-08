local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "Orion Example",
	Content = "Orion Example",
	Image = "rbxassetid://4483345998",
	Time = 5
})


local Window = OrionLib:MakeWindow({Name = "ReLucius", HidePremium = false, SaveConfig = true, ConfigFolder = "ReConfig", IntroText = "ReLucius"})

--Player Tab--

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PlayerSection = PlayerTab:AddSection({
	Name = "Main"
})

PlayerSection:AddButton({
	Name = "Infinite Energy (Exploit)",
	Callback = function()
local Energy = game.workspace.Characters.Velmoras.CharcterStats.Energy

Energy.Changed:Connect(function(EnergyUpdate)
	if Energy.Value < 99 then
		Energy.Value = 9999
	end	
end)
end
})

--Player Tab End--

--Settings Tab--

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local SettingsSection = SettingsTab:AddSection({
	Name = "Settings"
})

SettingsSection:AddButton({
	Name = "Destroy UI",
	Callback = function()
        OrionLib:Destroy()
  	end    
})

--Settings End--

OrionLib:Init() --UI Lib End

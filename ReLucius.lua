local lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

lib:MakeNotification({
	Name = "Orion Example",
	Content = "Orion Example",
	Image = "rbxassetid://4483345998",
	Time = 5
})


local Window = lib:MakeWindow({Name = "ReLucius | v1 | discord.gg/ReLucius", HidePremium = false, SaveConfig = true, ConfigFolder = "Config", IntroText = "ReLucius v1"})

--Player Tab--

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PlayerSection = PlayerTab:AddSection({
	Name = "Player"
})


PlayerSection:AddButton({
    Name = "Infinite Energy",
    Callback = function()
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local Characters = game.workspace.Characters:FindFirstChild(Player.Name)
        
        if Characters then
            local Energy = Characters.CharcterStats.Energy
            Energy.Changed:Connect(function()
            if Energy.Value < 99 then
                Energy.Value = 9999
            end
            end)
        end
    end
})

PlayerSection:AddButton({
    Name = "Auto Farm Chest"
    Callback = function()
        local ChestFolder = game.workspace.World.Chests
        local Player = game.Players.LocalPlayer
        local Characters = Player.Character and Player.CharacterAdd:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        for _, chest in ipairs(ChestFolder:GetChildren()) do
            if chest:IsA("BasePart") and chest.Name:Match("^Chest&d+$") then
                humanoidRootPart.CFrame = chest.CFrame + Vector3.new(0, 3, 0)
                wait(1.5)
            end
        end
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

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local playerData = ReplicatedStorage:WaitForChild("Player_Data"):WaitForChild(player.Name)
local profile = playerData:WaitForChild("Profile")
local borusPity = profile:WaitForChild("BorusCapsulePity")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local label = Instance.new("TextLabel")
label.Size = UDim2.new(0, 250, 0, 50)
label.Position = UDim2.new(0.5, -125, 0.5, -25)
label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.SourceSansBold
label.TextSize = 20
label.Text = "Boros Pity: 0/25000"
label.Parent = screenGui
label.Active = true

local subLabel = Instance.new("TextLabel")
subLabel.Size = UDim2.new(1, 0, 0, 20)
subLabel.Position = UDim2.new(0, 0, 1, 0)
subLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
subLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
subLabel.Font = Enum.Font.SourceSansItalic
subLabel.TextSize = 14
subLabel.Text = "Lixhub (discord.gg/cYKnXE2Nf8)"
subLabel.Parent = label

local UserInputService = game:GetService("UserInputService")
local dragging = false
local dragStart, startPos

label.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = label.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
		local delta = input.Position - dragStart
		label.Position = UDim2.new(startPos.X.Scale,startPos.X.Offset + delta.X,startPos.Y.Scale,startPos.Y.Offset + delta.Y)
	end
end)

local function updateText()
	label.Text = "Boros Pity: " .. tostring(borusPity.Value) .. "/25000"
end

updateText()
borusPity:GetPropertyChangedSignal("Value"):Connect(updateText)

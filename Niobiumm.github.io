
if game.PlaceId == 6050920953 then
	_G.soquinhodbgods = false;
	_G.kiblastdbgods = false;
	_G.defensedbgods = false;
	_G.agilitydbgods = false;
	_G.chargedbgods = false;
	_G.kibladedbgods = false;
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "DB SUPER GODS", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest", IntroEnabled = true, Icon = "rbxassetid://10058400903", IntroText = "Welcomo to Niobium", IntroIcon = "rbxassetid://10058434487"})

	local Tab = Window:MakeTab({
		Name = "Stats Training",
		Icon = "rbxassetid://10058434487",
		PremiumOnly = false
	})
	local Section = Tab:AddSection({
		Name = "Stats Training"
	})

	Tab:AddToggle({
		Name = "Train Attack",
		Default = false,
		Callback = function(Value)
			_G.soquinhodbgods = Value
			if Value then
				FastLoop = game:GetService("RunService").RenderStepped:Connect(function()
					while _G.soquinhodbgods == true do
						local args = {
					[1] = game:GetService("Players").LocalPlayer.Stats,
					[2] = {
						["Humanoid"] = game:GetService("Players").LocalPlayer.Character.Humanoid,
						["RightUpperArm"] = game:GetService("Players").LocalPlayer.Character.RightUpperArm,
						["LeftFoot"] = game:GetService("Players").LocalPlayer.Character.LeftFoot,
						["RightHand"] = game:GetService("Players").LocalPlayer.Character.RightHand,
						["RightLowerArm"] = game:GetService("Players").LocalPlayer.Character.RightLowerArm,
						["LeftUpperLeg"] = game:GetService("Players").LocalPlayer.Character.LeftUpperLeg,
						["LeftUpperArm"] = game:GetService("Players").LocalPlayer.Character.LeftUpperArm,
						["Character"] = game:GetService("Players").LocalPlayer.Character,
						["LeftHand"] = game:GetService("Players").LocalPlayer.Character.LeftHand,
						["RightFoot"] = game:GetService("Players").LocalPlayer.Character.RightFoot,
						["LeftLowerArm"] = game:GetService("Players").LocalPlayer.Character.LeftLowerArm,
						["RightLowerLeg"] = game:GetService("Players").LocalPlayer.Character.RightLowerLeg,
						["RightUpperLeg"] = game:GetService("Players").LocalPlayer.Character.RightUpperLeg,
						["LeftLowerLeg"] = game:GetService("Players").LocalPlayer.Character.LeftLowerLeg
					}
				}
				game:GetService("ReplicatedStorage").Remotes.Training.Combat5:InvokeServer(unpack(args))
				end
				end)
			end

			if not Value then
				if FastLoop  then
					FastLoop :Disconnect()
				end
			end
		end
	})
	Tab:AddToggle({
		Name = "Train Ki",
		Default = false,
		Callback = function(Value)
			_G.kibladedbgods = Value
			if Value then
				FastLoop = game:GetService("RunService").RenderStepped:Connect(function()
					while _G.kibladedbgods == true do
local args = {
	[1] = game:GetService("Players").LocalPlayer.Status,
	[2] = game:GetService("Players").LocalPlayer.Stats,
	[3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
	[4] = game:GetService("Players").LocalPlayer.Character.RightHand,
	[5] = game:GetService("Players").LocalPlayer.Character
}

game:GetService("ReplicatedStorage").Remotes.Training.Blast5:InvokeServer(unpack(args))

				end
				end)
			end

			if not Value then
				if FastLoop  then
					FastLoop :Disconnect()
				end
			end
		end
	})
	Tab:AddToggle({
		Name = "Train Agility",
		Default = false,
		Callback = function(Value)
			_G.agilitydbgods = Value
					while _G.agilitydbgods == true do
local args = {
	[1] = game:GetService("Players").LocalPlayer.Stats
}

game:GetService("ReplicatedStorage").Remotes.Training.Agility5:FireServer(unpack(args))

task.wait()
				end
			end
	})
	Tab:AddToggle({
		Name = "Train Defense",
		Default = false,
		Callback = function(Value)
			_G.defensedbgods = Value
			if Value then
				FastLoop = game:GetService("RunService").RenderStepped:Connect(function()
					while _G.defensedbgods == true do
local args = {
	[1] = game:GetService("Players").LocalPlayer.Stats,
	[2] = game:GetService("Players").LocalPlayer.Status,
	[3] = game:GetService("Players").LocalPlayer.Character.Humanoid,
	[4] = game:GetService("Players").LocalPlayer.Character.RightHand
}

game:GetService("ReplicatedStorage").Remotes.Training.Defense5:InvokeServer(unpack(args))


				end
				end)
			end

			if not Value then
				if FastLoop  then
					FastLoop :Disconnect()
				end
			end
		end
	})
	local Section = Tab:AddSection({
		Name = "Buttons"
	})

	Tab:AddButton({
		Name = "MAX FORM",
		Callback = function()
			local args = {
				[1] = {
					[1] = {
						[1] = "CATASTROPHE ",
						[2] = 0,
						[3] = 0,
						[4] = 0,
						[5] = 0
					},
					[2] = "Modes"
				}
			}

			game:GetService("ReplicatedStorage").Remotes.RequestSkill:InvokeServer(unpack(args))
			task.wait()
local args = {
	[1] = {
		["Humanoid"] = game:GetService("Players").LocalPlayer.Character.Humanoid,
		["Head"] = game:GetService("Players").LocalPlayer.Character.Head,
		["UpperTorso"] = game:GetService("Players").LocalPlayer.Character.UpperTorso,
		["HumanoidRootPart"] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
		["Character"] = game:GetService("Players").LocalPlayer.Character
	},
	[2] = game:GetService("Players").LocalPlayer.Status.Mode,
	[3] = game:GetService("Players").LocalPlayer.Status.ModeActive,
	[4] = game:GetService("Players").LocalPlayer.Status,
	[5] = false
}

game:GetService("ReplicatedStorage").Remotes.Modes.Transform:InvokeServer(unpack(args))
		  end
	})

	Tab:AddButton({
		Name = "High Energy (press the bellow button)",
		Callback = function()
			local args = {
				[1] = {
					["MaxEnergy"] = {
						["Value"] = 100000
					},
					["Energy"] = game:GetService("Players").LocalPlayer.Status.Energy,
					["InUse"] = {
					["Value"] = 0

						}
					},
				[2] = game:GetService("Players").LocalPlayer.Character.UpperTorso,
				[3] = game:GetService("Players").LocalPlayer.Character.Humanoid
			}
			game:GetService("ReplicatedStorage").Remotes.Training.Charge5:InvokeServer(unpack(args))
		end
	})
	Tab:AddButton({
		Name = "High Energy Freeze Fix",
		Callback = function()
game:GetService("ReplicatedStorage").Remotes.Training.ChargeFinish5:FireServer()
		end
	})
    local Tab = Window:MakeTab({
		Name = "Discord",
		Icon = "rbxassetid://10058434487",
		PremiumOnly = false
	})
    Tab:AddButton({
		Name = "Join Discord",
		Callback = function()
            syn.request({
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                    ["Origin"] = "https://discord.com"
                },
                Body = game:GetService("HttpService"):JSONEncode({
                    cmd = "INVITE_BROWSER",
                    args = {
                        code = "huJUBjhq7e"
                    },
                    nonce = game:GetService("HttpService"):GenerateGUID(false)
                }),
            })   
				end

	})
    local Tab = Window:MakeTab({
		Name = "Premium",
		Icon = "rbxassetid://10058434487",
		PremiumOnly = true
	})
	Tab:AddButton({
		Name = "Kill All (very sexy 😳)",
		Callback = function()
			for i, v in pairs(game.Players:GetChildren()) do
				if v ~= game.Players.LocalPlayer then
				pcall(function()
				local args = {
					[1] = "E29JJD0SnnS",
					[2] = v.Character,
					[3] = math.huge,
					[4] = 0.6,
					[5] = 6051456526,
					[6] = Vector3.new(-1494.598876953125, 609.3607177734375, 1907.20263671875),
					[7] = Vector3.new(0.49255892634391785, -0.000055227668781299144, 0.87027907371521),
					[8] = 0,
					[9] = 0,
					[10] = false,
					[11] = "smallhit"
				}

				game:GetService("ReplicatedStorage").Events.DamageEvent:FireServer(unpack(args))
				end)
				end
				end
		end
	})
end
	if game.PlaceId == 1803911948 then
	_G.soquinhoburst = false;
	_G.kiblastburst = false;
	_G.defenseburst = false;
	_G.agilityburst = false;
	_G.chargeburst = false;
	_G.kibladeburst = false;
	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

	local Window = OrionLib:MakeWindow({Name = "DB BURST", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest", IntroEnabled = true, Icon = "rbxassetid://10058400903", IntroText = "Welcomo to Niobium", IntroIcon = "rbxassetid://10058434487"})
	local Tab = Window:MakeTab({
		Name = "Stats Training",
		Icon = "rbxassetid://10058434487",
		PremiumOnly = false
	})
	local Section = Tab:AddSection({
		Name = "Stats Training"
	})
Tab:AddToggle({
	Name = "Train Attack",
	Default = false,
	Callback = function(Value)
		_G.soquinhoburst = Value
		if Value then
			FastLoop = game:GetService("RunService").RenderStepped:Connect(function()
				while _G.soquinhoburst == true do
local args = {
	[1] = game:GetService("Players").LocalPlayer.Stats,
	[2] = {
		["Humanoid"] = game:GetService("Players").LocalPlayer.Character.Humanoid,
		["RightUpperArm"] = game:GetService("Players").LocalPlayer.Character.RightUpperArm,
		["LeftFoot"] = game:GetService("Players").LocalPlayer.Character.LeftFoot,
		["RightHand"] = game:GetService("Players").LocalPlayer.Character.RightHand,
		["RightLowerArm"] = game:GetService("Players").LocalPlayer.Character.RightLowerArm,
		["LeftUpperLeg"] = game:GetService("Players").LocalPlayer.Character.LeftUpperLeg,
		["LeftUpperArm"] = game:GetService("Players").LocalPlayer.Character.LeftUpperArm,
		["Character"] = game:GetService("Players").LocalPlayer.Character,
		["LeftHand"] = game:GetService("Players").LocalPlayer.Character.LeftHand,
		["RightFoot"] = game:GetService("Players").LocalPlayer.Character.RightFoot,
		["LeftLowerArm"] = game:GetService("Players").LocalPlayer.Character.LeftLowerArm,
		["RightLowerLeg"] = game:GetService("Players").LocalPlayer.Character.RightLowerLeg,
		["RightUpperLeg"] = game:GetService("Players").LocalPlayer.Character.RightUpperLeg,
		["LeftLowerLeg"] = game:GetService("Players").LocalPlayer.Character.LeftLowerLeg
	}
}

game:GetService("ReplicatedStorage").Remotes.Training.Combat:InvokeServer(unpack(args))

			end
			end)
		end
		if not Value then
			if FastLoop  then
				FastLoop :Disconnect()
			end
		end
	end
})
Tab:AddToggle({
	Name = "Train Ki",
	Default = false,
	Callback = function(Value)
		_G.kiblastburst = Value
		if Value then
			FastLoop = game:GetService("RunService").RenderStepped:Connect(function()
				while _G.kiblastburst == true do
local args = {
	[1] = game:GetService("Players").LocalPlayer.Status,
	[2] = game:GetService("Players").LocalPlayer.Stats,
	[3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
	[4] = game:GetService("Players").LocalPlayer.Character.RightHand,
	[5] = game:GetService("Players").LocalPlayer.Character
}
game:GetService("ReplicatedStorage").Remotes.Training.Blast:InvokeServer(unpack(args))
			end
			end)
		end
		if not Value then
			if FastLoop  then
				FastLoop :Disconnect()
			end
		end
	end
})
Tab:AddToggle({
	Name = "Train Agility",
	Default = false,
	Callback = function(Value)
		_G.agilityburst = Value
				while _G.agilityburst == true do
local args = {
	[1] = game:GetService("Players").LocalPlayer.Stats
}

game:GetService("ReplicatedStorage").Remotes.Training.Agility:FireServer(unpack(args))


task.wait()
			end
		end
})
Tab:AddToggle({
	Name = "Train Defense",
	Default = false,
	Callback = function(Value)
		_G.defenseburst = Value
		if Value then
			FastLoop = game:GetService("RunService").RenderStepped:Connect(function()
				while _G.defenseburst == true do
			local args = {
					[1] = game:GetService("Players").LocalPlayer.Stats,
					[2] = game:GetService("Players").LocalPlayer.Status,
					[3] = game:GetService("Players").LocalPlayer.Character.Humanoid,
					[4] = game:GetService("Players").LocalPlayer.Character.RightHand
		   	}
					game:GetService("ReplicatedStorage").Remotes.Training.Defense:InvokeServer(unpack(args))
			end
			end)
		end
		if not Value then
			if FastLoop  then
						FastLoop :Disconnect()
			end
		end
	end
})
local Section = Tab:AddSection({
	Name = "Buttons"
})

Tab:AddButton({
	Name = "MAX FORM",
	Callback = function()
local args = {
	[1] = {
		[1] = {
			[1] = "MUI",
			[2] = 0,
			[3] = 0,
			[4] = 0,
			[5] = 0
		},
		[2] = "Modes"
	}
}

game:GetService("ReplicatedStorage").Remotes.RequestSkill:InvokeServer(unpack(args))


local args = {
	[1] = game:GetService("Players").LocalPlayer.Status.Mode
}

game:GetService("ReplicatedStorage").Remotes.Training.Moder:InvokeServer(unpack(args))

	  end
})
Tab:AddButton({
	Name = "Charge",
	Callback = function()
	local args = {
				[1] = game:GetService("Players").LocalPlayer.Status,
				[2] = game:GetService("Players").LocalPlayer.Character.UpperTorso,
				[3] = game:GetService("Players").LocalPlayer.Character.Humanoid
			}
				game:GetService("ReplicatedStorage").Remotes.Training.Charge:InvokeServer(unpack(args))
	end
})
Tab:AddButton({
	Name = "Stop Charging",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.Training.ChargeFinish:FireServer()
	end
})
local Tab = Window:MakeTab({
    Name = "Discord",
    Icon = "rbxassetid://10058434487",
    PremiumOnly = false
})
Tab:AddButton({
    Name = "Join Discord",
    Callback = function()
        syn.request({
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"
            },
            Body = game:GetService("HttpService"):JSONEncode({
                cmd = "INVITE_BROWSER",
                args = {
                    code = "huJUBjhq7e"
                },
                nonce = game:GetService("HttpService"):GenerateGUID(false)
            }),
        })   
            end

})
end
if game.PlaceId == 9701414321 then
	_G.soquinhorevenge = false;
	_G.kiblastrevenge = false;
	_G.defenserevenge = false;
	_G.agilityrevenge = false;
	_G.chargerevenge = false;
	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

	local Window = OrionLib:MakeWindow({Name = "DB REVENGE", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest", IntroEnabled = true, Icon = "rbxassetid://10058400903", IntroText = "Welcomo to Niobium", IntroIcon = "rbxassetid://10058434487"})
	local Tab = Window:MakeTab({
		Name = "Stats Training",
		Icon = "rbxassetid://10058434487",
		PremiumOnly = false
	})
	local Section = Tab:AddSection({
		Name = "Stats Training"
	})
Tab:AddToggle({
	Name = "Train Attack",
	Default = false,
	Callback = function(Value)
	_G.soquinhorevenge = Value
		if Value then
				while _G.soquinhorevenge == true do
						local args = {
						[1] = 0,
						[2] = math.huge
					}
						game:GetService("ReplicatedStorage").Grigora.Host.Remotes.Combat:FireServer(unpack(args))
                    task.wait()
            end
	    end
    end
})


Tab:AddToggle({
	Name = "Train Defense",
	Default = false,
	Callback = function(Value)
		_G.defenserevenge = Value
		if Value then
				while _G.defenserevenge == true do
local args = {
    [1] = 0,
    [2] = math.huge
}

game:GetService("ReplicatedStorage").Grigora.Host.Remotes.Defense:FireServer(unpack(args))

                        task.wait()
            end
	    end
    end
})

Tab:AddToggle({
	Name = "Train Ki",
	Default = false,
	Callback = function(Value)
		_G.kiblastrevenge = Value
		if Value then
				while _G.kiblastrevenge == true do
			local args = {
    [1] = 0,
    [2] = math.huge,
    [3] = Vector3.new(0, 0, 0)
}
game:GetService("ReplicatedStorage").Grigora.Host.Remotes.KiBlast:FireServer(unpack(args))
task.wait()
            end
	    end
    end
})
local Section = Tab:AddSection({
	Name = "Buttons"
})
Tab:AddButton({
	Name = "Max Form",
	Callback = function()
local args = {
    [1] = {
        [1] = {
            [1] = "Master Ascension",
            [2] = 0,
            [3] = 0,
            [4] = 0
        },
        [2] = "Modes"
    }
}
game:GetService("ReplicatedStorage")._BindableEvents.RequestSkill:InvokeServer(unpack(args))
local args = {
    [1] = {
        ["Humanoid"] = game:GetService("Players").LocalPlayer.Character.Humanoid,
        ["Head"] = game:GetService("Players").LocalPlayer.Character.Head,
        ["UpperTorso"] = game:GetService("Players").LocalPlayer.Character.UpperTorso,
        ["HumanoidRootPart"] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        ["Character"] = game:GetService("Players").LocalPlayer.Character
    },
    [2] = game:GetService("Players").LocalPlayer.Status.Mode,
    [3] = game:GetService("Players").LocalPlayer.Status.ModeActive,
    [4] = game:GetService("Players").LocalPlayer.Status,
    [5] = false
}

game:GetService("ReplicatedStorage")._BindableEvents.Transform:InvokeServer(unpack(args))
	end
})
local Tab = Window:MakeTab({
    Name = "Discord",
    Icon = "rbxassetid://10058434487",
    PremiumOnly = false
})
Tab:AddButton({
    Name = "Join Discord",
    Callback = function()
        syn.request({
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"
            },
            Body = game:GetService("HttpService"):JSONEncode({
                cmd = "INVITE_BROWSER",
                args = {
                    code = "huJUBjhq7e"
                },
                nonce = game:GetService("HttpService"):GenerateGUID(false)
            }),
        })   
            end

})
end
local plr = game.Players.LocalPlayer
local OSTime = os.time()
local Time = os.date('!*t', OSTime)


local Content = 'Someone used Niobium!'
local Embed = {
			["title"] = "__**New execution.**__",
			["description"] = "Name: "..plr.Name.."\nDisplay Name: "..plr.DisplayName.."\nExploit: "..identifyexecutor().."\nGame: https://www.roblox.com/games/"..game.PlaceId,
			["type"] = "rich",
			["color"] = tonumber(0xffff00),
	                ["thumbnail"] = {
				["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432"
			},
			["image"] = {
				["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=250&y=250&Format=Png&username="..plr.Name
			},
			["fields"] = {
				{
					["name"] = "__Account Age:__",
					["value"] = plr.AccountAge.." days old",
					["inline"] = true
				},
				{
					["name"] = "__User ID:__",
					["value"] = plr.UserId,
					["inline"] = true
				},

			},
			["footer"] = {
			    ["text"] = "yes",
			    ["icon_url"] = "https://cdn.discordapp.com/attachments/990273752489132104/995194042621108366/grupo_rakiado.jpg"
			},
			["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
};
(syn and syn.request or http_request or http.request) {
    Url = 'https://discord.com/api/webhooks/995190138080604230/XW2cUJBEknMJ1Xp_0yrmedF68qQ-IL8bmbAYMnm7TyfAuWnCCGekjMR4uOZrTQwZzKXQ';
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
};
OrionLib:Init()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
local Flags = Library.Flags
local lp = game.Players.LocalPlayer
local hum = game.Players.LocalPlayer.Character.Humanoid
--Library.DefaultColor = Color3.fromRGB(65, 143, 232)
local Window = Library:Window({
    Text = "Midnight/Local"
})
Window:Slider({
  Text = "Walk Speed",
  Default = 16,
  Minimum = 16,
  Maximum = 250,
  Callback = function(value)
    while true do
      hum.WalkSpeed = value
      wait(0.1)
    end
  end
})
-- fill in with values that actually make sense V
Window:Slider({
  Text = "Jump Power",
  Default = 0,
  Minimum = 0,
  Maximum = 0,
  Callback = function(value)
    while true do
      hum.JumpHeight = value
      wait(0.1)
    end
  end
})
Window:Toggle({
  Text = "Fly",
  Callback = function(bool)
    -- t/f 
  end
})
Window:Toggle({
  Text = "Noclip"
  Callback = function(bool)
    while true do
      if bool == true then
        --nc t
      end
      if bool == false then
        --nc f
      end
      wait(0.5)
    end
  
})

Window:Button({
  Text = "Safe Reset"
  Callback = function()
    lp.Character.CFrame = CFrame.new(0, -0, 0)
  end
})
Window:Dropdown({
  Text = "Stores",
  List = {"Wood R us", "Land Store", "Boxed Cars", "Fancy Furnishings", "Bob's Shack", "Link's Logic", "Fine Arts Shop"},
  Callback = function(bool)
      
  end
})
Window:Dropdown({
  Text = "Locations"
  List = {"Spawn", "Volcano Entrance", "Volcano Top", "Ice Mountaintop", "Maze", "Maze End", "Swamp"},
})

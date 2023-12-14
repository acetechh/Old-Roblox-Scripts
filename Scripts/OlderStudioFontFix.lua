-- Follow the instructions at the top of the README.md file. (Thanks to W(x20) for this code. <3)

local a = {} 
local tmpfolder = workspace.GuiExports
for _,v in pairs(game.StarterGui:GetDescendants()) do 
    if v:IsA("TextLabel") or v:IsA("TextBox") or v:IsA("TextButton") then 
        table.insert(a, v)
    end 
end
for _,v in pairs(workspace:GetDescendants()) do 
    if v:IsA("TextLabel") or v:IsA("TextBox") or v:IsA("TextButton") then 
        table.insert(a, v)
    end 
end


for _,v in pairs(a) do
    for _,t in pairs(tmpfolder:GetChildren()) do
        if v:GetFullName() == t.Name then
            v.Font = Enum.Font[t.Value]
        end
    end
end
tmpfolder:Destroy()

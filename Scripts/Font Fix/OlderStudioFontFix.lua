-- Follow the instructions at the top of the README.md file.

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
            local success, err = pcall(function()
                v.Font = Enum.Font[t.Value]
            end)

            if not success then
                warn('Error:',err)
            end
        end
    end
end
tmpfolder:Destroy()

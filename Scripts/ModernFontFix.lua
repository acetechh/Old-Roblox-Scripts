-- Follow the instructions at the top of the README.md file. (Thanks to W(x20) for this code. <3)

local a = {} 
local tmpfolder = Instance.new("Folder", workspace)
tmpfolder.Name = "GuiExports"
for _,v in pairs(game.StarterGui:GetDescendants()) do 
    if v:IsA("TextLabel") or v:IsA("TextBox") or v:IsA("TextButton") then 
        table.insert(a, {v:GetFullName(),v.Font})
    end 
end
for _,v in pairs(workspace:GetDescendants()) do 
    if v:IsA("TextLabel") or v:IsA("TextBox") or v:IsA("TextButton") then 
        table.insert(a, {v:GetFullName(),v.Font})
    end 
end


for _,v in pairs(a) do
    local tmp = Instance.new("StringValue", tmpfolder)
    tmp.Name = v[1]
    tmp.Value = string.sub(tostring(v[2]),11)
end

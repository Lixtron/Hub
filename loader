if not game:IsLoaded() then
    game.Loaded:Wait()
end

if game.PlaceId == 72829404259339 then
    local scriptSource = game:HttpGet("https://raw.githubusercontent.com/BloxBanter/Lix-Hub/refs/heads/main/LixHub_ARX")
    local func, err = loadstring(scriptSource)
    if func then
        func()  -- Execute the loaded function
    else
        warn("Loadstring error: " .. tostring(err))
    end
else
    warn("PlaceId mismatch, script not loaded.")
end

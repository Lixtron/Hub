local codes = {
    "JoJoUpdate7.6!",
    "NewRarity!",
    "WAdamAndThePlanners",
    "SuperSorryForDelayedPeak!",
    "OneMoreWeek!",
    "FinallyFate!",
    "Update7!!",
    "Goodbye6.7Update",
    "FollowUpTheIG!!!",
    "Goodbye6.7Update",
    "Update7!!",
    "FinallyFate!",
    "CyclopsSoulMine!",
    "FairyPatch67",
    "CelestialMageOp67",
    "FairyTalePeak!",
    "6.5UpdateIsReal!!!",
    "FallPart2!?!",
    "Sorry4Delay",
    "ReallySorry4Delay",
    "FollowUpTheInsta!",
    "FixPatchSJW!",
    "SorryForPassiveDelay!",
    "SoloPeakLeveling!",
    "NewRaidAndEvos?!",
    "IgrisIsMetaAgain!!",
    "SorryForAllTheIssues!",
    "TYFORTHESUPPORT!?",
    "FallEvent?!",
    "SorryForLate!",
    "NewRangerUnit!",
    "NewCode!?",
    "BerserkUpdate?!",
    "SorryForLate!",
    "NewDivineTrials!",
    "MinstaGroupOnTop!",
    "Weloveroblox!",
    "Shutdown2!",
    "UpgradeInFieldFix!",
    "DBZUpdate!",
    "NewPortals?!",
    "GTBossEvent!!",
    "SorryForDelayz!",
    "LBreset!",
    "SECRETCODE!",
    "RiftMode!",
    "SAOUpd!",
    "Dungeons!",
    "MinorChanges!",
    "EzSoulFrags",
    "CraftingFix!",
    "SmartRejoin",
    "ChainsawUpd!",
    "GraveyardRaid!",
    "StatBoosters!",
    "S3Battlepass!",
    "SuperSuperSorry!",
    "3xALLMODES!!",
    "YOUTUBEBACK!!",
    "TYBW2!",
    "QOL2!",
    "ARXBLEACH!",
    "Srry4Shutdown",
}

local function redeemCode(code)
    local success, error = pcall(function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Server"):WaitForChild("Lobby"):WaitForChild("Code"):FireServer(code)
    end)
    
    if success then
        print("Successfully redeemed: "..code)
    else
        warn("❌ Failed to redeem " .. code .. ": " .. tostring(error))
    end
end

if #codes == 0 then return end

for i, code in ipairs(codes) do
    print("🎫 Redeeming (" .. i .. "/" .. #codes .. "): " .. code)
    redeemCode(code)
    wait(0.2)
end

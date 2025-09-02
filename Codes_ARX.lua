--updated 02/09/25
local codes = {
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
    "SmallFixs",
    "!BrandonTheBest",
    "!FixBossRushShop",
    "!TYBW",
    "!MattLovesARX2",
    "!RaitoLovesARX",
    "QuickFix!!",
    "MoreFixs",
    "Sorry4Auto TraitRoll",
    "Sorry4Evo Units",
    "SorryDelay!!!",
    "SummerEvent!",
    "2xWeekEnd!",
    "Sorry4Quest",
    "SorryRaids",
    "RAIDS",
    "BizzareUpdate2!",
    "Sorry4Delays",
    "HBDTanny",
    "JoJo Part 1",
    "NewLobby",
    "Instant Trait",
    "CODEISREAL",
    "ragebait",
    "PortalsFix",
    "UPDATE 1.5",
    "THANKYOU4PATIENCE",
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

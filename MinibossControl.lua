--[[
    MinibossControl
    Author:
        Museus (Discord: Museus#7777)

    Change the proportions of miniboss chambers, allowing minibosses
    to be removed or replaced with others.
]]
ModUtil.RegisterMod("MinibossControl")
--[[
The default for each miniboss is 1.
For most "vanilla" results, make each biome
add up to the number of minibosses there normally are.
For example if you remove Barge you should add a Witches
or Power Couple.
]]--
local config = {

    Tartarus_Bombers = 1,
    Tartarus_Doomstone = 1,
    Tartarus_Sneak = 1,

    Asphodel_Barge = 0,
    Asphodel_PowerCouple = 1,
    Asphodel_Witches = 2,

    Elysium_ButterflyBall = 1,
    Elysium_Asterius = 1,

    -- If true, Tiny Vermin will not spawn
    RemoveTinyVermin = true,
}
MinibossControl.config = config

ModUtil.LoadOnce( function()
    ModUtil.MapSetTable(RoomSetData, {
        -- [[ Tartarus Miniboss Counts ]]
        Tartarus = {
            A_MiniBoss01 = {
                MaxCreationsThisRun = config.Tartarus_Bombers,
            },
            A_MiniBoss02 = {
                -- Middle Management Doomstone
                MaxCreationsThisRun = config.Tartarus_Doomstone,
            },
            A_MiniBoss03 = {
                MaxCreationsThisRun = config.Tartarus_Sneak,
            },
            A_MiniBoss04 = {
                -- Vanilla Doomstone
                MaxCreationsThisRun = config.Tartarus_Doomstone,
            },
        },
        -- [[ Asphodel Miniboss Counts ]]
        Asphodel = {
            B_MiniBoss01 = {
                MaxCreationsThisRun = config.Asphodel_PowerCouple,
            },
            B_MiniBoss02 = {
                MaxCreationsThisRun = config.Asphodel_Witches,
            },
            B_Wrapping01 = {
                MaxCreationsThisRun = config.Asphodel_Barge,
            },
        },
        -- [[ Elysium Miniboss Counts ]]
        Elysium = {
            C_MiniBoss01 = {
                MaxCreationsThisRun = config.Elysium_Asterius,
            },
            C_MiniBoss02 = {
                MaxCreationsThisRun = config.Elysium_ButterflyBall,
            },
        },
    })

    -- Remove Tiny Vermin
    if config.RemoveTinyVermin then
        ModUtil.MapSetTable(RoomSetData.Styx.D_MiniBoss03, {
            LegalEncounters = { "MiniBossHeavyRangedForked" },
        })
    end
end)

-- Scripts/RunManager.lua : 515
ModUtil.WrapBaseFunction("ChooseNextRoomData", function( baseFunc, currentRun, args )
    -- IsRoomEligible looks at RoomCreations and ignores it if it's nil. Make sure it's not nil
    -- Easier and cleaner than overriding the IsRoomEligible function to fix nil behavior
    ModUtil.MapSetTable(CurrentRun.RoomCreations, {
        A_MiniBoss01 = currentRun.RoomCreations.A_MiniBoss01 or 0,
        A_MiniBoss02 = currentRun.RoomCreations.A_MiniBoss02 or 0,
        A_MiniBoss03 = currentRun.RoomCreations.A_MiniBoss03 or 0,
        A_MiniBoss04 = currentRun.RoomCreations.A_MiniBoss04 or 0,
        B_MiniBoss01 = currentRun.RoomCreations.B_MiniBoss01 or 0,
        B_MiniBoss02 = currentRun.RoomCreations.B_MiniBoss02 or 0,
        B_Wrapping01 = currentRun.RoomCreations.B_Wrapping01 or 0,
        C_MiniBoss01 = currentRun.RoomCreations.C_MiniBoss01 or 0,
        C_MiniBoss02 = currentRun.RoomCreations.C_MiniBoss02 or 0,
    })

    return baseFunc(currentRun, args)
end, MinibossControl)

-- Scripts/RoomManager.lua : 1874
ModUtil.WrapBaseFunction("StartRoom", function ( baseFunc, currentRun, currentRoom )
    PrintUtil.showModdedWarning()

    baseFunc(currentRun, currentRoom)
end, MinibossControl)

-- Scripts/UIScripts.lua : 145
ModUtil.WrapBaseFunction("ShowCombatUI", function ( baseFunc, flag )
    PrintUtil.showModdedWarning()

    baseFunc(flag)
end, MinibossControl)

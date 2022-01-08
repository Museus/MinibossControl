--[[
The default for each miniboss is 1.
For most "vanilla" results, make each biome
add up to the number of minibosses there normally are.
For example if you remove Barge you should add a Witches
or Power Couple.
]]--
MinibossControl.Presets = {}

-- Preset setting profiles. "Vanilla" should always reflect the unedited game (each miniboss set to 1)
MinibossControl.RegisterPreset("Vanilla",
    {
        A_MiniBoss01 = 1, -- Tartarus Bombers
        A_MiniBoss04 = 1, -- Tartarus Doomstone TODO: Handle middle management?
        A_MiniBoss03 = 1, -- Tartarus Sneak

        B_Wrapping01 = 1, -- Asphodel Barge
        B_MiniBoss01 = 1, -- Asphodel Power Couple
        B_MiniBoss02 = 1, -- Asphodel Witches

        C_MiniBoss02 = 1, -- Elysium Butterfly Ball
        C_MiniBoss01 = 1, -- Elysium Asterius

        RemoveTinyVermin = false, -- If true, Tiny Vermin will not spawn
    }
)

MinibossControl.RegisterPreset("Leaderboard",
    {
        A_MiniBoss01 = 1,
        A_MiniBoss04 = 1,
        A_MiniBoss03 = 1,

        B_Wrapping01 = 0,
        B_MiniBoss01 = 1,
        B_MiniBoss02 = 2,

        C_MiniBoss02 = 2,
        C_MiniBoss01 = 0,

        RemoveTinyVermin = true,
    }
)

MinibossControl.RegisterPreset("HyperDelivery1",
    {
        A_MiniBoss01 = 1,
        A_MiniBoss04 = 1,
        A_MiniBoss03 = 1,

        B_Wrapping01 = 0,
        B_MiniBoss01 = 1,
        B_MiniBoss02 = 2,

        C_MiniBoss02 = 1,
        C_MiniBoss01 = 1,

        RemoveTinyVermin = true,
    }
)

MinibossControl.RegisterPreset("HyperDelivery",
    {
        A_MiniBoss01 = 1,
        A_MiniBoss04 = 1,
        A_MiniBoss03 = 1,

        B_Wrapping01 = 0,
        B_MiniBoss01 = 1,
        B_MiniBoss02 = 2,

        C_MiniBoss02 = 0,
        C_MiniBoss01 = 2,

        RemoveTinyVermin = true,
    }
)

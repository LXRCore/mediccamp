--[[
    ███╗   ███╗███████╗██████╗ ██╗ ██████╗ ██████╗ █████╗ ███╗   ███╗██████╗
    ████╗ ████║██╔════╝██╔══██╗██║██╔════╝██╔════╝██╔══██╗████╗ ████║██╔══██╗
    ██╔████╔██║█████╗  ██║  ██║██║██║     ██║     ███████║██╔████╔██║██████╔╝
    ██║╚██╔╝██║██╔══╝  ██║  ██║██║██║     ██║     ██╔══██║██║╚██╔╝██║██╔═══╝
    ██║ ╚═╝ ██║███████╗██████╔╝██║╚██████╗╚██████╗██║  ██║██║ ╚═╝ ██║██║
    ╚═╝     ╚═╝╚══════╝╚═════╝ ╚═╝ ╚═════╝ ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝

    🐺 LXR Medical Camps — Configuration

    This configuration file controls the medical camp system for RedM.
    Custom map placements stream medic camp props into Armadillo and
    Saint Denis, giving players accessible field-hospital locations.

    ═══════════════════════════════════════════════════════════════════════════════
    SERVER INFORMATION
    ═══════════════════════════════════════════════════════════════════════════════

    Server:      The Land of Wolves 🐺
    Tagline:     Georgian RP 🇬🇪 | მგლების მიწა - რჩეულთა ადგილი!
    Description: ისტორია ცოცხლდება აქ! (History Lives Here!)
    Type:        Serious Hardcore Roleplay
    Access:      Discord & Whitelisted

    Developer:   iBoss21 / The Lux Empire
    Website:     https://www.wolves.land
    Discord:     https://discord.gg/CrKcWdfd3A
    GitHub:      https://github.com/iBoss21
    Store:       https://theluxempire.tebex.io

    ═══════════════════════════════════════════════════════════════════════════════

    Version: 1.0.0
    Performance Target: Optimized for minimal server overhead and client FPS impact

    Framework Support:
    - LXR Core (Primary)
    - RSG Core (Compatible)
    - VORP Core (Compatible)
    - RedEM:RP (Compatible)
    - QBR Core (Compatible)
    - QR Core (Compatible)
    - Standalone (Compatible)

    ═══════════════════════════════════════════════════════════════════════════════
    CREDITS
    ═══════════════════════════════════════════════════════════════════════════════

    Script Author: iBoss21 / The Lux Empire for The Land of Wolves

    © 2026 iBoss21 / The Lux Empire | wolves.land | All Rights Reserved
]]

-- ═══════════════════════════════════════════════════════════════════════════════
-- 🐺 RESOURCE NAME PROTECTION - RUNTIME CHECK
-- ═══════════════════════════════════════════════════════════════════════════════

local REQUIRED_RESOURCE_NAME = "mediccamp"
local currentResourceName = GetCurrentResourceName()

if currentResourceName ~= REQUIRED_RESOURCE_NAME then
    error(string.format([[

        ═══════════════════════════════════════════════════════════════════════════════
        ❌ CRITICAL ERROR: RESOURCE NAME MISMATCH ❌
        ═══════════════════════════════════════════════════════════════════════════════

        Expected: %s
        Got: %s

        This resource is branded and must maintain the correct name.
        Rename the folder to "%s" to continue.

        🐺 wolves.land - The Land of Wolves

        ═══════════════════════════════════════════════════════════════════════════════

    ]], REQUIRED_RESOURCE_NAME, currentResourceName, REQUIRED_RESOURCE_NAME))
end

Config = {}

-- ████████████████████████████████████████████████████████████████████████████████
-- ████████████████████████ SERVER BRANDING & INFO ████████████████████████████████
-- ████████████████████████████████████████████████████████████████████████████████

Config.ServerInfo = {
    name        = 'The Land of Wolves 🐺',
    tagline     = 'Georgian RP 🇬🇪 | მგლების მიწა - რჩეულთა ადგილი!',
    description = 'ისტორია ცოცხლდება აქ!', -- History Lives Here!
    type        = 'Serious Hardcore Roleplay',
    access      = 'Discord & Whitelisted',

    -- Contact & Links
    website     = 'https://www.wolves.land',
    discord     = 'https://discord.gg/CrKcWdfd3A',
    github      = 'https://github.com/iBoss21',
    store       = 'https://theluxempire.tebex.io',

    -- Developer Info
    developer   = 'iBoss21 / The Lux Empire',

    -- Tags
    tags        = { 'RedM', 'MedicalCamp', 'Map', 'Streaming', 'SeriousRP', 'Whitelist' }
}

-- ████████████████████████████████████████████████████████████████████████████████
-- ████████████████████████ FRAMEWORK CONFIGURATION ███████████████████████████████
-- ████████████████████████████████████████████████████████████████████████████████

--[[
    Framework Priority (in order):
    1. LXR-Core  (Primary)
    2. RSG-Core  (Primary)
    3. VORP Core (Supported)
    4. RedEM:RP  (Optional - if detected)
    5. QBR-Core  (Optional - if detected)
    6. QR-Core   (Optional - if detected)
    7. Standalone (Fallback)
]]

Config.Framework = 'auto' -- 'auto' or manual: 'lxr-core', 'rsg-core', 'vorp_core', 'redem_roleplay', 'qbr-core', 'qr-core', 'standalone'

Config.FrameworkSettings = {
    ['lxr-core'] = {
        resource      = 'lxr-core',
        notifications = 'ox_lib',
        inventory     = 'lxr-inventory',
        target        = 'ox_target',
        events = {
            server   = 'lxr-core:server:%s',
            client   = 'lxr-core:client:%s',
            callback = 'lxr-core:callback:%s'
        }
    },
    ['rsg-core'] = {
        resource      = 'rsg-core',
        notifications = 'ox_lib',
        inventory     = 'rsg-inventory',
        target        = 'ox_target',
        events = {
            server   = 'RSGCore:Server:%s',
            client   = 'RSGCore:Client:%s',
            callback = 'RSGCore:Callback:%s'
        }
    },
    ['vorp_core'] = {
        resource      = 'vorp_core',
        notifications = 'vorp',
        inventory     = 'vorp_inventory',
        target        = 'vorp_core',
        events = {
            server = 'vorp:server:%s',
            client = 'vorp:client:%s'
        }
    },
    ['redem_roleplay'] = {
        resource      = 'redem_roleplay',
        notifications = 'redem',
        inventory     = 'redem_inventory',
        target        = 'redem_target',
        events = {
            server = 'redem:%s:server',
            client = 'redem:%s:client'
        }
    },
    ['qbr-core'] = {
        resource      = 'qbr-core',
        notifications = 'ox_lib',
        inventory     = 'qbr-inventory',
        target        = 'ox_target',
        events = {
            server = 'QBR:Server:%s',
            client = 'QBR:Client:%s'
        }
    },
    ['qr-core'] = {
        resource      = 'qr-core',
        notifications = 'ox_lib',
        inventory     = 'qr-inventory',
        target        = 'ox_target',
        events = {
            server = 'QR:Server:%s',
            client = 'QR:Client:%s'
        }
    },
    ['standalone'] = {
        notifications = 'print',
        inventory     = 'none',
        target        = 'none'
    }
}

-- ████████████████████████████████████████████████████████████████████████████████
-- ████████████████████████ LANGUAGE CONFIGURATION ████████████████████████████████
-- ████████████████████████████████████████████████████████████████████████████████

Config.Lang = 'en' -- Language for notifications (en, ge, etc.)

Config.Locale = {
    en = {
        camp_nearby     = 'Medical camp is nearby',
        treatment_start = 'Receiving treatment...',
        treatment_done  = 'Treatment complete',
        no_medic        = 'No medic is available at this camp',
        distance_far    = 'You are too far from the medical camp'
    },
    ge = {
        camp_nearby     = 'სამედიცინო ბანაკი ახლოსაა',
        treatment_start = 'მკურნალობა მიმდინარეობს...',
        treatment_done  = 'მკურნალობა დასრულდა',
        no_medic        = 'ამ ბანაკში მედდა არ არის',
        distance_far    = 'სამედიცინო ბანაკიდან ძალიან შორს ხარ'
    }
}

-- ████████████████████████████████████████████████████████████████████████████████
-- ████████████████████████ CAMP LOCATIONS ████████████████████████████████████████
-- ████████████████████████████████████████████████████████████████████████████████

--[[
    Each camp entry describes one streamed medical camp location.
    The matching .ymap file must exist in the stream/ folder.

    Fields:
      name    - Display name shown in notifications / blips
      ymap    - Corresponding ymap filename (without extension)
      coords  - World coordinates of the camp entrance (x, y, z)
      blip    - Whether to show a map blip for this camp
      enabled - Toggle the camp on/off without removing the ymap
]]

Config.Camps = {
    {
        name    = 'Armadillo Medical Camp',
        ymap    = 'Armadillo',
        coords  = vector3(-3672.48, -2631.50, -13.28),
        blip    = true,
        enabled = true
    },
    {
        name    = 'Saint Denis Medical Camp',
        ymap    = 'SaintDenis',
        coords  = vector3(2666.84, -1328.50, 45.88),
        blip    = true,
        enabled = true
    }
}

-- ████████████████████████████████████████████████████████████████████████████████
-- ████████████████████████ GENERAL SETTINGS ██████████████████████████████████████
-- ████████████████████████████████████████████████████████████████████████████████

Config.General = {
    interactionDistance = 5.0,   -- Distance (units) at which camp interaction is available
    showBlips           = true,  -- Show map blips for all enabled camps
    blipColor           = 3,     -- Blip colour index (3 = red / medical)
    blipScale           = 0.8,   -- Blip size on the minimap
    enableNotifications = true   -- Show proximity notifications to players
}

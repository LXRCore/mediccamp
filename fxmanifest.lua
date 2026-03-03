--[[
    ███╗   ███╗███████╗██████╗ ██╗ ██████╗ ██████╗ █████╗ ███╗   ███╗██████╗
    ████╗ ████║██╔════╝██╔══██╗██║██╔════╝██╔════╝██╔══██╗████╗ ████║██╔══██╗
    ██╔████╔██║█████╗  ██║  ██║██║██║     ██║     ███████║██╔████╔██║██████╔╝
    ██║╚██╔╝██║██╔══╝  ██║  ██║██║██║     ██║     ██╔══██║██║╚██╔╝██║██╔═══╝
    ██║ ╚═╝ ██║███████╗██████╔╝██║╚██████╗╚██████╗██║  ██║██║ ╚═╝ ██║██║
    ╚═╝     ╚═╝╚══════╝╚═════╝ ╚═╝ ╚═════╝ ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝

    🐺 LXR Medical Camps — Custom Map Streaming Resource

    ═══════════════════════════════════════════════════════════════════════════════
    RESOURCE INFORMATION
    ═══════════════════════════════════════════════════════════════════════════════

    Resource Name:  mediccamp
    Version:        1.0.0
    Author:         iBoss21 / The Lux Empire
    Description:    Custom medical camp map placements for RedM.
                    Adds hand-crafted medic camp ymaps to Armadillo
                    and Saint Denis.

    Server:         The Land of Wolves 🐺
    Website:        https://www.wolves.land
    Discord:        https://discord.gg/CrKcWdfd3A
    Store:          https://theluxempire.tebex.io

    ═══════════════════════════════════════════════════════════════════════════════
    FRAMEWORK SUPPORT
    ═══════════════════════════════════════════════════════════════════════════════

    Primary:
    - LXR Core (lxr-core)
    - RSG Core (rsg-core)

    Supported:
    - VORP Core (vorp_core)

    Optional (if detected):
    - RedEM:RP (redem_roleplay)
    - QBR Core (qbr-core)
    - QR Core (qr-core)
    - Standalone (no framework)

    ═══════════════════════════════════════════════════════════════════════════════

    © 2026 iBoss21 / The Lux Empire | wolves.land | All Rights Reserved
]]

fx_version 'cerulean'
game       'rdr3'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

-- Resource Metadata
name        'LXR Medical Camps'
author      'iBoss21 / The Lux Empire'
description 'Custom medical camp map placements for RedM (Armadillo & Saint Denis)'
version     '1.0.0'

-- Map streaming
this_is_a_map 'yes'

-- Lua 5.4
lua54 'yes'

-- Shared config (framework detection & camp settings)
shared_scripts {
    'config.lua'
}

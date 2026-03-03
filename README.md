# 🐺 LXR Medical Camps

```
███╗   ███╗███████╗██████╗ ██╗ ██████╗ ██████╗ █████╗ ███╗   ███╗██████╗
████╗ ████║██╔════╝██╔══██╗██║██╔════╝██╔════╝██╔══██╗████╗ ████║██╔══██╗
██╔████╔██║█████╗  ██║  ██║██║██║     ██║     ███████║██╔████╔██║██████╔╝
██║╚██╔╝██║██╔══╝  ██║  ██║██║██║     ██║     ██╔══██║██║╚██╔╝██║██╔═══╝
██║ ╚═╝ ██║███████╗██████╔╝██║╚██████╗╚██████╗██║  ██║██║ ╚═╝ ██║██║
╚═╝     ╚═╝╚══════╝╚═════╝ ╚═╝ ╚═════╝ ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝
```

**Custom Medical Camp Map Streaming Resource for RedM**

═══════════════════════════════════════════════════════════════════════════════

## Server Information

| Field       | Details                                          |
|-------------|--------------------------------------------------|
| Server      | The Land of Wolves 🐺                            |
| Developer   | iBoss21 / The Lux Empire                        |
| Website     | https://www.wolves.land                          |
| Discord     | https://discord.gg/CrKcWdfd3A                   |
| Store       | https://theluxempire.tebex.io                    |

═══════════════════════════════════════════════════════════════════════════════

## Description

**LXR Medical Camps** streams two hand-crafted `.ymap` medical camp
placements into the RedM world:

- 🏕️ **Armadillo** — A field medic outpost in the dusty frontier town
- 🏕️ **Saint Denis** — An urban medical camp in the bustling city

Each camp provides an immersive, prop-based medical station that fits
seamlessly into the existing world without replacing base-game assets.

═══════════════════════════════════════════════════════════════════════════════

## Framework Support

| Framework         | Status    |
|-------------------|-----------|
| LXR Core          | ✅ Primary |
| RSG Core          | ✅ Primary |
| VORP Core         | ✅ Supported |
| RedEM:RP          | ⚙️ Optional |
| QBR Core          | ⚙️ Optional |
| QR Core           | ⚙️ Optional |
| Standalone        | ✅ Fallback |

Set `Config.Framework = 'auto'` in `config.lua` for automatic detection,
or hard-code your framework name for a fixed target.

═══════════════════════════════════════════════════════════════════════════════

## Installation

1. Download or clone this resource into your server's `resources/` folder.
2. Rename the folder to **`mediccamp`** (required — name is enforced at runtime).
3. Add `ensure mediccamp` to your `server.cfg`.
4. Configure camp options in `config.lua`.
5. Restart your server.

═══════════════════════════════════════════════════════════════════════════════

## Configuration

Edit `config.lua` to:

- Switch framework (`Config.Framework`)
- Enable / disable individual camps (`Config.Camps[n].enabled`)
- Adjust interaction distance and blip settings (`Config.General`)
- Translate notifications (`Config.Locale`)

═══════════════════════════════════════════════════════════════════════════════

## File Structure

```
mediccamp/
├── fxmanifest.lua       — Resource manifest (RedM / Tebex escrow compliant)
├── config.lua           — All configurable options
├── README.md            — This file
└── stream/
    ├── Armadillo.ymap   — Medical camp props — Armadillo
    └── SaintDenis.ymap  — Medical camp props — Saint Denis
```

═══════════════════════════════════════════════════════════════════════════════

## Legal

© 2026 iBoss21 / The Lux Empire | wolves.land | All Rights Reserved

This resource is sold exclusively through **[The Lux Empire Tebex Store](https://theluxempire.tebex.io)**.
Redistribution, resale, or re-upload without written permission is strictly prohibited.

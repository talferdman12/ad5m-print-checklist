# Filament on hand

Every spool available for this printer. The agent uses it to choose the material and colour for each print (stage 2, steps 7 and 8, from "Choose the filament for this print"), and to judge how the spool has been stored.

This list is only what is on the shelf. It never replaces the green light, which confirms the chosen spool is the one actually loaded: golden rule 2 still applies.

Printing temperatures come from the Material Table at the bottom of README.md, using the row in the "Material Table row" column. The "Box temp" column is only the maker's range printed on the box.

**Keep it current:** whoever buys, opens or uses up a spool updates this list the same day, and records the change in CHANGELOG.md.

| # | Material Table row | Product | Colour | Brand | Weight | Box temp | Box drying | Status |
|---|---|---|---|---|---|---|---|---|
| 1 | PLA (basic) | PLA Basic | Cyan | Unknown (cardboard spool) | ~1 kg | See label | — | Opened |
| 2 | PLA (basic) | PLA Basic | Red | Unknown (cardboard spool) | ~1 kg | See label | — | Opened, sealed with desiccant |
| 3 | Silk PLA | Silk PLA | Azure | Keytek | 1 kg | 210–230 °C | — | Boxed |
| 4 | Silk PLA | Silk PLA tri-colour | Blue / green / purple | Keytek | 1 kg | 210–230 °C | — | Opened 2026-11-20 |
| 5 | PETG | PETG | White | Keytek | 1 kg | 230–250 °C | — | Boxed |
| 6 | PETG | PETG | Black | Keytek | 1 kg | 230–250 °C | — | Opened |
| 7 | PLA (basic) | PLA | Neon green | Elegoo | 1 kg | 190–230 °C | 55 °C, 8 h | Opened 2026-11-20; prints at 220 °C, not 205 |
| 8 | PLA (basic) | PLA Marble | Grey speckled stone | Elegoo | 1 kg | 190–230 °C | 55 °C, 8 h | Boxed (bought 2026-11-20) |
| 9 | PETG | PETG | Orange | Slic3D (Jaycar) | 1 kg | 230–260 °C | 65 °C, 8 h | Opened 2026-11-21 (first used for the Puck Low accents) |
| 10 | PETG | PETG | Transparent | Slic3D (Jaycar) | 1 kg | 230–260 °C | 65 °C, 8 h | Opened 2026-11-20 |

## Notes on particular spools

- **Silk PLA tri-colour (4):** the colour shifts along the spool, so a print changes colour by itself. Shinier when the outer walls are printed slowly.
- **Neon green PLA (7):** starved and jammed at 205 °C; a file from the previous owner printed it perfectly at 220 °C. Use 220 °C until a temperature test says otherwise (open issue 8).
- **Orange PETG (9):** use the settings that printed clean. Only the first three rows changed between the failed try and the clean one; everything else was the same.

  | Setting | Failed try (keycap, 2026-11-21) | Clean (switch button, 2026-11-21) |
  |---|---|---|
  | Nozzle, first layer and rest | 245 °C | **240 °C** |
  | Brim | 4 mm, 0.1 mm gap | **none** (part sits on a whole flat face) |
  | Seam | at the back, plain | at the back, **blended (scarf) seam, wipe at the end of each loop** |
  | Bed | 75 °C | 75 °C |
  | Fan | 30–50 % | 30–50 % |
  | Speeds | first layer 30 mm/s, outer walls 60, everything else 100 or less, acceleration 4000 | same |
  | Layer height, walls | 0.20 mm, 3 walls | same |

  Also printed well at 240 °C / bed 75 °C: the seven-part Puck Low 2 test plate (2026-11-21, 1 h 36 min, with brims), with only a few fine strings inside a hollow part.

  What the failed try looked like: a blob of PETG pulled off the nozzle and smeared onto the right side of the brim, with a string trailing from it; a bump where the seam started at the front; a thin string across the part. These are signs of PETG gathering on a too-hot nozzle and being dropped at the seam, which is what the three changes fix.
- **Marble PLA (8):** small specks mixed in give a stone look, and the matte, speckled surface hides layer lines. With fine layers (0.12 mm or less) it can look and feel like one carved piece. Prints like basic PLA.
- **Transparent PETG (10):** only looks clear when printed solid (100% infill, every line the same direction), a little hotter and with low fan; any infill pattern shows through. Straight off the printer it is frosted, like sea glass; a clear gloss coat (for example clear nail polish) makes it glassy. Thinner layers make the grooves smaller. A single thin wall (vase mode) is the clearest it gets.
- **Cardboard spools (1, 2):** can shed a little dust; wipe the rims if any shows.

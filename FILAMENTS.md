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
| 5 | PETG | PETG | White | Keytek | 1 kg | 230–250 °C | — | Opened 2026-11-24; left on the printer since |
| 6 | PETG | PETG | Black | Keytek | 1 kg | 230–250 °C | — | Opened |
| 7 | PLA (basic) | PLA | Neon green | Elegoo | 1 kg | 190–230 °C | 55 °C, 8 h | Opened 2026-11-20; prints at 220 °C, not 205 |
| 8 | PLA (basic) | PLA Marble | Grey speckled stone | Elegoo | 1 kg | 190–230 °C | 55 °C, 8 h | Boxed (bought 2026-11-20) |
| 9 | PETG | PETG | Orange | Slic3D (Jaycar) | 1 kg | 230–260 °C | 65 °C, 8 h | Opened 2026-11-21 (first used for the Puck Low accents); left on the printer since |
| 10 | PETG | PETG | Transparent | Slic3D (Jaycar) | 1 kg | 230–260 °C | 65 °C, 8 h | Opened 2026-11-20 |
| 11 | PETG | PETG Lite (TL6447) | White | Slic3D (Jaycar) | 1 kg | 230–260 °C | 65 °C, 8 h | Opened 2026-11-26 (raised keycap test) |
| 12 | PETG | PETG Lite (TL6448) | Red | Slic3D (Jaycar) | 1 kg | 230–260 °C | 65 °C, 8 h | Opened 2026-11-26 (raised keycap letters); on the printer since |
| 13 | PETG | PETG Lite | Blue | Slic3D (Jaycar) | 1 kg | 230–260 °C | 65 °C, 8 h | Opened 2026-11-26 (first print: clicker housing); used again for raised keycap letters 2026-11-26 11:17; on the printer since |

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

  Fit of small holes with these settings: holes print at their designed size (checked in the G-code of the switch button). An MX keycap's + socket at 4.15 × 1.35 mm was a little loose on the switch's stem; use 4.10 × 1.30 mm (a fit tester with 4.00, 4.05 and 4.10 rides along on the acorn print to confirm). With that snugger socket, an MX switch in a 14.1 mm hole (1.5 mm plate, prints 1.6) pulls out when the cap is pulled; use a 14.0 mm hole where a cap grips the stem. **Confirmed on the big acorn (2026-11-22): 14.0 mm holes (1.5 mm plate) and 4.10 × 1.30 mm + sockets were perfect on both sides. Use these two sizes for every MX switch part in this spool.**

  Overhangs and honeycomb (tennis ball, 2026-11-22): the clean settings plus slow overhangs (30/15/8 mm/s) and slow-down for curled perimeters printed a 65 mm honeycomb sphere (1.2 mm struts) with every hexagon closed and only one small string loop. Don't use slicer tree supports inside open shapes: they grow in through the holes; build a cradle into the model instead.

  Also printed well at 240 °C / bed 75 °C: the seven-part Puck Low 2 test plate (2026-11-21, 1 h 36 min, with brims), with only a few fine strings inside a hollow part.

  Also printed clean with these exact settings: the acorn clicker (2026-11-21, 44 min, 13 g): a 30 mm round dome printed upside down with no supports, and a scaly cap printed rim down with its own snap-off column under a hanging stem.

  Also clean with these settings on a big 9-part plate (fidget cube + 52 mm acorn, 2026-11-22, 3 h 22 min, 68 g).

  Key clicker test (2026-11-23, 28 min, 9.3 g): housing and keycap clean, a 1.0 mm raised logo with 1.2 mm letter strokes printed on the cap top. With two small parts side by side these settings left fine strings between them and flicked small ooze curls onto the plate; the parts themselves were clean. The next try (v3) at 235 °C with 1.0 mm retraction and avoid crossing walls was no better: strings at the keyring tab and between the parts. The cause was the plate, not the spool (it printed the tennis ball almost string-free the day before): the two parts printed at the same time, so the nozzle hopped between them every layer, and the keycap's + post stood alone on the plate as one thin ring and got knocked loose. Fix: print small parts one at a time ("0.20mm Small Part PETG one at a time @AD5M", print sequence by object) and stand a lone post on a snap-off column with a wide foot, as on the acorn. The "no brim" row above is only for parts that sit on one whole solid face; a hollow part standing on a thin wall ring (like the keycap printed skirt down) still needs the 4 mm brim from checklist step 25, or it lets go (v4, 2026-11-23). Confirmed by v5 (2026-11-23, 31 min): one part at a time plus a 4 mm brim, at the clean 240 °C settings, printed the keycap and housing with no strings at all.

  Flush logo layer (2026-11-24, face-down keycap test): one 0.2 mm layer of C KIDS letters at 240 °C laid cleanly on the plate, 0.15 g for four logos; white PETG bonded round it after an M25 swap.

  What the failed try looked like: a blob of PETG pulled off the nozzle and smeared onto the right side of the brim, with a string trailing from it; a bump where the seam started at the front; a thin string across the part. These are signs of PETG gathering on a too-hot nozzle and being dropped at the seam, which is what the three changes fix.
- **White PETG (5):** first used 2026-11-24 (4-keycap test, cancelled at layer ~4 for a redesign) with the clean orange settings (240 °C, bed 75, PA 0.05, fan 30–50 %, 4 mm brim): purge line and first layers looked normal on camera. Heating to 190 °C for brushing left a small curl on the tip, as the orange does. Face-down keycap test (same evening): four keycaps printed clean at 240 °C, bed 75, no brim, after an orange first layer; one small string tuft on one cap and a fine string between two.
- **Marble PLA (8):** small specks mixed in give a stone look, and the matte, speckled surface hides layer lines. With fine layers (0.12 mm or less) it can look and feel like one carved piece. Prints like basic PLA.
- **White PETG Lite (11):** first used 2026-11-26 (raised keycap test body) with the Keytek white settings (240 °C, bed 75, PA 0.05, fan 30–50 %, 4 mm brim): clean purge line and walls, no strings. Loading it left a small drop on the tip.
- **Red PETG Lite (12):** first used 2026-11-26 for raised letters after an M25 swap at 240 °C: purged cleanly on the purge block; a red string trailed from the nozzle after the purge. Housing 2026-11-26 (same settings as blue): clean walls, no strings on the part; an ooze curl at the nozzle during the purge line after heating.
  For the 25-housing plates use exactly the blue (13) settings that printed two perfect plates (README, "PETG settings that printed perfect plates"); same brand and type, file `keyclicker_housings_25_red_petg_v2.gcode`.
- **Blue PETG Lite (13):** first used 2026-11-26 (clicker housing, 21 min, 7.7 g) with the clean Slic3D orange settings (240 °C, bed 75, PA 0.05, fan 30–50 %, retraction 0.8, scarf seam, no brim on a solid floor): clean purge line, flat first layer, no strings on camera.
  Blue (13) as raised keycap letters after an M25 swap (2026-11-26, 240 °C): purged on the block with a thin string draped off it; letters clean on camera.
  Blue (13), 25-housing plate (2026-11-26/27, same settings plus lift 0.8, travel acceleration 4000, 5 × 5 measurement): 8 h 41 min, 190.6 g, all 25 stood, no lifting, no brim needed. 20 had smooth glossy walls; the 5 in the column by the vent panel came out rough-walled (open issue 16), cause not known yet. Light hairs between parts.
  Blue (13), same 25-housing file again (2026-11-27 08:51–17:38): identical result, all 25 stood, 8 h 41 min, 190.7 g; the 'rough column' turned out to be lighting: in hand all 25 look the same. About 610 g left after this plate (not weighed).
- **Transparent PETG (10):** only looks clear when printed solid (100% infill, every line the same direction), a little hotter and with low fan; any infill pattern shows through. Straight off the printer it is frosted, like sea glass; a clear gloss coat (for example clear nail polish) makes it glassy. Thinner layers make the grooves smaller. A single thin wall (vase mode) is the clearest it gets.
- **Cardboard spools (1, 2):** can shed a little dust; wipe the rims if any shows.

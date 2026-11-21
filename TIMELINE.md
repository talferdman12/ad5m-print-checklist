# Print timeline

The full text record of every print on this printer, oldest first. PRINT-LOG.md is the one-line summary of the same prints; this file keeps the detail: exact settings, what happened in order, what worked and what did not.

Every print gets an entry the same day, including prints that were cancelled at once, prints from other computers or sessions, and prints started from the printer's own screen (README golden rule 7). Entries made after the fact say so, and say "not recorded" for anything that was not written down at the time rather than guessing.

## Template (copy for each print)

```
### YYYY-MM-DD HH:MM–HH:MM — <what was printed> — <OK / failed / cancelled>
- File: <print file name>
- Spool: <number and name from FILAMENTS.md>
- Settings: nozzle <first layer / rest> °C, bed <°C>, layer <mm>, brim <mm or none>, seam <where, blended or plain>, speeds <normal or slowed to …>, fan <%>, profiles <print / filament preset>
- Changed since the last print with this spool: <…>
- What happened: <in order, with times; who stopped it and why>
- Result: <what came off the plate>
- What worked: <…>
- What did not: <…>
- Photos, recording, logs: <paths>
```

## Entries

Entries up to 2026-11-21 morning were written afterwards (2026-11-21) from PRINT-LOG.md, the recorder's list, the print files, photos, watcher logs and session transcripts.

### 2026-11-19 — About 10 prints from other tools (trophy, cones, clicker, silk vase and others) — mixed
- File: various, sliced for other printers or by hand
- Spool: various, including silk PLA
- Settings: the printer's own leveling on; no clean start code yet
- What happened: before this checklist existed.
- Result: ooze smeared at every start, blobs, strings, small parts knocked loose
- What did not: the default start (heating over the plate), fast moves over small parts. These led to the clean start code (README steps 12–18) and the small-part rules.
- Photos, recording, logs: owner's photos only

### 2026-11-19 — Flow test, run 1 — cancelled
- File: `flowrate_0_PLA_29m0s.gcode.3mf` (OrcaSlicer, AD5M profile)
- Spool: 1, cyan PLA Basic
- Settings: 220 °C, the printer's own leveling on
- What happened: the owner paused, then cancelled at layer 2.
- Result: hooks at the start of every outline
- Photos, recording, logs: owner's photo

### 2026-11-19 — Flow test, run 2 — cancelled
- File: `flowtest_pla_damp_cleanstart.gcode`
- Spool: 1, cyan PLA Basic, lightly damp
- Settings: start code holds 140 °C, 210 °C, skirt, slow first layer, printer leveling off
- What happened: the start code heated right above the purge spot and lowered onto the drip.
- Result: cancelled, smear at the purge
- What did not: heating above the purge spot (fixed: heat while raised and parked beside it)
- Photos, recording, logs: owner's photos, `prints/records/flow_test_2_no_flow.jpg`

### 2026-11-19 — Flow test, run 3 — OK
- File: `flowtest_run3.gcode`
- Spool: 1, cyan PLA Basic, lightly damp
- Settings: bed measured at 140 °C, filament pulled back before heating, heating while raised, angled approach to the purge
- Result: finished; even first layer; small seam blob at each tile corner. The tiles were lost before they were read.
- What worked: the clean start code
- Photos, recording, logs: `prints/records/flow_test_3_purge_100mm.jpg`

### 2026-11-19 23:32 – 2026-11-20 00:05 — Flow test, run 4 — failed
- File: `flowtest_run4.gcode`
- Spool: 1, cyan PLA Basic
- Settings: 210 °C, normal (not damp) settings, wipe back over the purge line
- What happened: stopped at layer 9: a small tile lifted and the nozzle dragged several tiles.
- What did not: small tiles without a brim (led to the brim rule, README step 25)
- Photos, recording, logs: recorder "Flow test run 4 - cyan PLA" (kept as failed)

### 2026-11-20 (just after midnight) — Pressure advance pattern — OK
- File: `pa_pattern_run1.gcode`
- Spool: 1, cyan PLA Basic
- Settings: bed held at 55 °C for the whole print
- Result: line-start blobs below about 0.035; pressure advance 0.04 chosen for PLA
- Photos, recording, logs: `prints/records/pa_pattern_run1_finished.jpg`, `pa_pattern_run1_closeup.jpg`

### 2026-11-20 (just after midnight) — Flow test, run 5 (proof run) — cancelled
- File: `flowtest_run5_proof.gcode`
- Spool: 1, cyan PLA Basic
- Settings: pressure advance 0.04, brim on small parts, walls and top at 100 mm/s
- What happened: cancelled at 14 % by choice, to switch to a fun print.
- Result: up to layer 2: clean purge, flat and stuck first layer; the brims of close tiles merged into one sheet
- What worked: the brim kept small tiles down; pressure advance 0.04

### 2026-11-20 (before the overnight plate) — Black PETG pressure advance test — cancelled
- File: `pa_pattern_petg_black.gcode`
- Spool: 6, Keytek black PETG (sealed)
- Settings: first PETG print; glue stick
- What happened: cancelled during bed measuring at the owner's request (skip the test). PETG pressure advance set to 0.05, untested.

### 2026-11-20 about 01:53–06:18 — Overnight plate: 18-sided ashtray, gear fidget, ring spinner, spinner tower — OK
- File: `overnight_ashtray_fidgets.gcode`
- Spool: 6, black PETG
- Settings: 240 °C, bed 75 °C held, 0.16 mm "Clean Start Quality" profile, automatic brim, pressure advance 0.05 (untested), sliced from the command line
- What happened: watcher answered OK all night (02:42–06:19).
- Result: every part complete, none moved, no spaghetti. The spinner caps' holes came out about 0.2 mm too big and the caps fell off.
- What worked: black PETG at 240 °C / 75 °C for a long plate of mixed parts
- What did not: cap hole size
- Photos, recording, logs: `prints/records/overnight_finished_phone1.jpg`, `overnight_plate_preview.png`, `watch_20261120-0242.log`

### 2026-11-20 09:52–10:09 — Spinner caps v2 (four caps) — OK
- File: `spinner_caps_v2.gcode`
- Spool: 6, black PETG
- Settings: 240 °C, bed 75 °C, 0.16 mm "Clean Start Quality", 4 mm brim, 2-loop skirt, seam at the back, pressure advance 0.05, outer walls 60 mm/s, inner 120, fan from 30 %
- Changed since the last print with this spool: smaller cap holes (designs/caps_v2 has 8.0 and 7.9 mm versions; which one was printed was not recorded)
- What happened: phone 1's torch was off at the start (the previous recording's stop had switched it off; printcam was fixed so recordings switch the lights on). Phone 2 stopped answering at 09:51. The watcher raised false alarms during warm-up and near the end ("only two of four caps visible").
- Result: four black caps with a thin brim. Fit not recorded.
- Photos, recording, logs: `prints/records/caps_v2_finished_phone1.jpg`, `watch_20261120-0950.log`, `watch_20261120-0952.log`

### 2026-11-20 10:38–13:47 — Fractal fidget star — OK
- File: `fractal_star_silk.gcode`
- Spool: 4, Keytek silk PLA tri-colour (opened that day)
- Settings: 220 °C first layer, 215 °C after, bed 55 °C, 0.20 mm "Clean Start Silk", no brim, 3-loop skirt, seam at the back, pressure advance 0.04, outer walls 60 mm/s, inner walls 300, infill 20 % at 270, fan 100 %
- What happened: the first watcher read the empty plate during bed measuring as a missing print and paused it twice at 10:37; it was restarted and recorded from 10:38. The second watcher raised false PROBLEM answers late in the print but did not act.
- Result: finished star, colour shifting along the spool
- What worked: silk PLA at 220/215 °C; normal speeds were fine for one large part
- What did not: the watcher acting during the bed check (fixed: it stays quiet until plastic flows)
- Photos, recording, logs: `prints/records/fractal_star_finished_phone1.jpg`, `watch_20261120-1035.log`, `watch_20261120-1038.log`, recorder "Fractal Fidget Star"

### 2026-11-20 14:29–16:56 — Printables grinder, clear PETG — result not recorded
- File: not recorded
- Spool: 10, Slic3D PETG transparent
- What happened: the recording ran until its time limit and stopped itself, so the print's result was never marked. Nothing else was written down.
- Photos, recording, logs: recorder "Printables grinder fast - clear PETG" (auto-stop)

### 2026-11-20 17:27–18:19 — Crystal cluster (46 mm) — OK
- File: `crystal_cluster_clear.gcode`
- Spool: 10, Slic3D PETG transparent
- Settings: 250 °C, bed 75 °C, 0.16 mm clear solid profile, 100 % aligned infill, low fan; checklist skipped at the owner's request
- Changed since the last print with this spool: first print with it
- What happened: printed straight through. The camera watcher missed the finish because it had been told an empty-looking plate is normal.
- Result: all five crystals standing, frosted, no strings
- What worked: solid, aligned infill and low fan for clear PETG; 250 °C
- What did not: the watcher's finish detection (fixed: it now knows a clear print can look like an empty plate)
- Photos, recording, logs: `prints/records/crystal_cluster_finished_phone1.jpg`, recorder "Crystal cluster - clear PETG"

### 2026-11-20 19:02–19:34 — Glorious Baby Dragon (EndK7) at 1.2×, print-in-place — failed
- File: `glorious_dragon_1.2x_pla.gcode`
- Spool: 7, Elegoo PLA neon green (opened that evening)
- Settings: 205 °C, bed 55 °C set but rose to 60 °C (the preset had no Cool Plate temperature), 0.28 mm fast profile, no brim (designer's advice), 3 walls, 10 % infill; only the outer walls slowed, inner walls and infill at 270–300 mm/s, acceleration 10000; checklist skipped by the owner
- Changed since the last print with this spool: first print with it
- What happened: from layer 4 small parts were knocked loose and dragged by the fast nozzle. The watcher saw it but its answers began with "OK," and the script read only that word, so it never paused. The owner paused at layer 7 and cancelled.
- Result: failed, loose and dragged parts
- What worked: nothing to keep
- What did not: fast inner walls and infill on a plate of tiny parts; the watcher's answer parsing; the missing bed temperature
- Photos, recording, logs: `prints/records/glorious_dragon_failed_phone1.jpg`, `glorious_dragon_failed_timeline.jpg`, recorder "Glorious Baby Dragon 1.2x" (failed). Open issue 7.

### 2026-11-20 19:40–19:55 — Glorious Baby Dragon at 1.2×, slow reprint — cancelled
- File: `glorious_dragon_1.2x_pla_slow.gcode`
- Spool: 7, neon green PLA
- Settings: 205 °C, bed 55 °C on every plate type, every speed 100 mm/s or less, acceleration 4000, no skirt, no brim, plate washed
- Changed since the last print with this spool: all speeds slowed, bed temperature fixed, watcher parsing fixed, skirt removed
- What happened: hairs, nubs and lacy, see-through fill from the first layers. Taken at first for strings; the head was moved aside and looked at. Cancelled by the owner at layer 4.
- Result: cancelled, lacy fill
- What worked: slowed speeds kept every part in place
- What did not: the plastic was starving (under-extrusion), found later to be 205 °C being too cold for this spool (open issue 8)
- Photos, recording, logs: `prints/records/glorious_dragon_reprint_layer4_top.jpg`, `_side.jpg`, recorder "Glorious Baby Dragon 1.2x slow"

### 2026-11-20 19:56–19:57 — Spire garden stringing test — cancelled
- File: `spire_garden_temp_test.gcode`
- Spool: 7, neon green PLA
- Settings: temperature bands by height, to test stringing
- What happened: cancelled within a minute to go back to the dragon.
- Result: nothing printed
- Photos, recording, logs: recorder "Spire garden stringing test"

### 2026-11-20 19:58–20:10 — Glorious Baby Dragon at 1.2×, 0.20 mm, 205 °C — failed
- File: `glorious_dragon_1.2x_pla_020_205.gcode`
- Spool: 7, neon green PLA
- Settings: 205 °C, 0.20 mm layers, thin-wall detection on, slowed speeds
- Changed since the last print with this spool: 0.20 mm layers, thin-wall detection
- What happened: in the first layer the head piece came out as an outline only. Paused, then cancelled. The owner said the nozzle was blocked, which was right.
- Result: failed, starved first layer
- What did not: still 205 °C (open issue 8)
- Photos, recording, logs: `prints/records/glorious_dragon_underextrusion_head.jpg`

### 2026-11-20 20:16–20:17 — Glorious Baby Dragon, 0.20 mm, 205 °C, try 4 — failed
- File: `glorious_dragon_1.2x_pla_020_205.gcode`
- Spool: 7, neon green PLA
- What happened: started again after a flush; the head piece came out hollow again within the first minute. Cancelled.
- Photos, recording, logs: `prints/records/glorious_dragon_try4_starved_head.jpg`

### 2026-11-20 20:18–20:22 — Glorious Baby Dragon, flow capped at 2.5 mm³/s, 215 °C — failed
- File: `glorious_dragon_1.2x_lowflow.gcode`
- Spool: 7, neon green PLA
- Settings: 215 °C, maximum flow 2.5 mm³/s, fast watcher with automatic purge
- What happened: nothing came out of the nozzle at all; the head moved over an empty plate. Cancelled. A large purge tower was pushed out by hand afterwards.
- Result: failed, nothing extruded
- Photos, recording, logs: recorder (failed), `prints/records/watchfast_20261120-2020.log`, `-2021.log`

### 2026-11-20 20:29–20:40 — Flexi dragon (own design) with wings — failed
- File: `flexi_dragon_wings_pla.gcode`
- Spool: 7, neon green PLA
- Settings: 205 °C after a 245 °C purge, slowed flexi preset (0.20 mm Flexi In-Place), no brim
- What happened: the first wing printed solid, then a raised tangle formed at the head end. Cancelled at layer 3.
- Result: failed
- What did not: 205 °C (open issue 8)
- Photos, recording, logs: recorder (failed), `prints/records/watchfast_20261120-2029.log`

### 2026-11-20 21:20–21:27 — Small crystal cluster test (30 mm), back of the plate — failed
- File: `crystal_small_neon_test.gcode`
- Spool: 7, neon green PLA
- Settings: 205 °C, normal speeds (the profile that printed the fractal star well), park and purge moved to the back, bed measured only around the part
- What happened: only a loose tangle of thin strands where the crystal should be. Cancelled at layer 10. This ruled out the slowed speeds as the cause.
- Result: failed, starved
- Photos, recording, logs: `prints/records/crystal_test_neon_starved.jpg`, `prints/records/watchfast_20261120-2120.log`

### 2026-11-20 about 21:33–21:59 — "Dragon bubble" (the previous owner's file on the printer) — OK
- File: `obj_1_龙泡泡2.obj.3mf`, from the printer's own storage, started on the printer's screen by the owner
- Spool: 7, Elegoo PLA neon green
- Settings (from the printer's status): 220 °C, bed 55 °C, 255 layers, print speed 75 %, cooling fan 100 %
- What happened: printed right after five failures in a row with this spool at 205–215 °C. Not recorded by the recorder.
- Result: printed perfectly
- What worked: 220 °C for this spool. Comparing with our files showed 205 °C was too cold: it starved and jammed. FILAMENTS.md now says 220 °C (open issue 8).
- Photos, recording, logs: `prints/records/dragon_bubble_220C_finished.jpg`

### 2026-11-21 00:35–01:55 — Puck Low body — OK
- File: `puck_low_body.gcode`, sent from outside this project folder; the file is not here
- Spool: 6, black PETG
- Settings (from the printer's status): 235 °C, bed 75 °C, 134 layers, printer speed setting 156 %. Profiles not recorded.
- Result: finished OK. No photo.
- Photos, recording, logs: recorder "Puck-Low-body - black PETG"

### 2026-11-21 02:10 — Puck Low accents — cancelled at once
- File: `puck_low_accent.gcode`, sent straight to the printer by the owner's brother; not in this folder
- Spool: 9, Slic3D PETG orange
- What happened: cancelled within a minute; reason not recorded.
- Photos, recording, logs: recorder "Puck-Low-accents - orange PETG"

### 2026-11-21 02:35–02:43 — Puck Low accents — failed
- File: `puck_low_accent.gcode` (as above)
- Spool: 9, orange PETG
- What happened: stopped after 8 minutes and marked failed; what went wrong was not recorded.
- Photos, recording, logs: recorder "Puck-Low-accents - orange PETG" (failed)

### 2026-11-21 02:49–04:09 — Puck Low accents, third try — OK
- File: `puck_low_accent.gcode` (as above), 75 layers
- Spool: 9, orange PETG
- Settings: not recorded, so what changed from the failed try is unknown. This is why golden rule 7 now asks for every print, from anyone, to be written down.
- Result: finished in 1 h 16 min. No photo.
- Photos, recording, logs: recorder "Puck-Low-accents-3 - orange PETG"

### 2026-11-21 11:38–11:52 — Plain keycap for an MX switch (own design), top face down — cancelled
- File: `keycap_plain_orange_petg.gcode`
- Spool: 9, Slic3D PETG orange
- Settings: 245 °C first layer and rest, bed 75 °C, 0.20 mm, 4 mm outer brim with a 0.1 mm gap, seam at the back (plain), first layer 30 mm/s, outer walls 60, everything else 100 or less, acceleration 4000, fan 30–50 %; profiles "0.20mm Small Part Brim @AD5M" and a new "Orange PETG Slic3D (AD5M)" made from the clear PETG one
- Changed since the last print with this spool: settings not taken from the Puck Low prints the night before; temperature guessed from the clear PETG
- What happened: printed only the keycap, because "a regular single key" was read as the keycap alone. By 11:46 the owner had paused it from the printer at layer 2 and taken the plate off. The camera watcher paused it again at 11:48, reading the empty plate as a problem. Cancelled at 11:52.
- Result: one and a half layers: a PETG blob pulled off the nozzle and smeared onto the right side of the brim with a string trailing from it, a bump at the seam on the front edge, a thin string across the part
- What worked: purge and first-layer adhesion
- What did not: 245 °C (PETG gathered on the nozzle and dropped at the seam), the brim, the plain seam; printing only the keycap
- Photos, recording, logs: `prints/records/keycap_orange_petg_failed_closeup.jpg` (owner's photo), `prints/records/watch_20261121-1139.log`, recorder "Keycap plain orange PETG" (cancelled)

### 2026-11-21 11:54–12:17 — Full switch button: plain base and keycap together (own design) — OK
- File: `switch_button_plain_orange_petg.gcode`
- Spool: 9, Slic3D PETG orange
- Settings: 240 °C first layer and rest, bed 75 °C, 0.20 mm, no brim, seam at the back blended (scarf seam on outer walls) with a wipe at the end of each loop, same slowed speeds and fan as before; profiles "0.20mm Small Part PETG @AD5M" and "Orange PETG Slic3D (AD5M)"
- Changed since the last print with this spool: 245 → 240 °C, brim removed, blended seam and wipe added; base printed as well as the keycap
- What happened: purge, first layer and every layer clean on camera; halfway and finished phone notifications sent. Phone 2 was offline, so only phone 1 watched and recorded.
- Result: both parts square with smooth edges, no blobs or strings; 19 minutes, 6 g. Fit (owner, that evening): the keycap's + socket was a little too big, so the cap sat loose on the switch's stem. The print file shows it printed exactly as designed (4.15 × 1.35 mm), so the design was too generous; later designs use 4.10 × 1.30 mm.
- What worked: 240 °C, no brim on parts sitting on a whole flat face, blended seam with a wipe
- What did not: the + socket at 4.15 × 1.35 mm was a little loose on the stem
- Photos, recording, logs: `prints/records/switch_button_orange_finished_phone1.jpg`, `prints/records/watch_20261121-1154.log`, recorder "Switch button plain orange PETG"

### 2026-11-21 15:12–16:54 — Puck Low 2 test: seven-part puck (round case, body with lid and latch, toothed disc, flat parts), "fast" — OK
- File: `puck_low2_test.gcode` (sliced and sent from a computer or session outside this checklist; the file is not on the owner's computer)
- Spool: 9, Slic3D PETG orange
- Settings: from the printer and recorder only: 240 °C, bed 75 °C, 115 layers, about 137 mm/s shown mid-print, brims on the parts (seen on camera). Layer height, seam, fan and profiles not recorded.
- Changed since the last print with this spool: unknown (not sliced by this checklist); 240 °C and bed 75 °C match the clean switch button
- What happened: recording started 15:12 by whoever sent it, file sent straight to the printer (no 3D preview on the Home Assistant tab, no "Started" notification because the recorder did not send one yet). Halfway notification 16:13 at 51 %. Finished 16:54 after 1 h 36 min (estimate 2 h 03 min); the recording was stopped and marked OK at 16:54.
- Result: last camera frame shows all seven parts complete and standing, edges clean, brims attached; a few fine strings inside the body part. Not looked at by hand by this checklist.
- What worked: 240 °C / bed 75 °C on a large multi-part plate with this spool; no lifting
- What did not: fine strings inside the body (likely travel moves across the open cavity); the print bypassed the recorder, so no 3D preview. This led to the printer's address being taken over by the recorder (see CHANGELOG, 2026-11-21 "Automatic 3D preview for every print").
- Photos, recording, logs: `prints/records/puck_low2_test_end_phone1.jpg` (last frame of the recording), recorder "Puck-Low-2-test - orange PETG - fast"

### 2026-11-21 21:38–22:21 — Acorn clicker rev D, two round parts ("both.gcode") — OK (recording marked OK; result not seen)
- File: `both.gcode` (sliced and sent from another computer, 192.168.68.50, through the printer's usual address; first print through the recorder's stand-in at .52; the 3D preview was built automatically)
- Spool: 9, Slic3D PETG orange
- Settings: from the printer and the preview only: 240 °C, bed 75 °C, 0.20 mm layers, 102 layers, brim on, slicer supports on, estimate 37 min and 9.5 g. Seam, fan and speeds unknown (the recorder did not keep the file).
- Changed since the last print with this spool: brim and supports on (the clean switch button had neither); otherwise unknown
- What happened: recording started 21:30 ("Acorn clicker rev D - orange PETG"); sent 21:38 (one earlier attempt at 21:38:07 failed with "no route to host" between the recorder and the printer, the next went through); Started notification 21:39 with recording on and 3D preview; first layers clean on camera at 21:49; halfway 22:04; ended about 22:21. The finished screen was cleared before the recorder looked, so the last notification read "Print ended (ready) at 0 %" instead of "Finished" (fixed in the recorder the same evening). Recording stopped and marked OK 22:23.
- Result: not seen by this checklist; the plate had been taken off before the recording stopped.
- What worked: the automatic 3D preview and Started notification for a print sent from another computer
- What did not: the finished notification's wording; no finished photo before the parts came off (step 43)
- Photos, recording, logs: `prints/records/acorn_clicker_rev_d_midprint_phone1.jpg` (21:49), recorder "Acorn clicker rev D - orange PETG"

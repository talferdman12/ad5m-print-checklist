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

### 2026-11-21 22:40–22:57 — "checklist-tests-21nov" (sent from another computer) — cancelled
- File: `checklist-tests-21nov.gcode` (sent from 192.168.68.50; 35 layers, estimate about 37 min; 3D preview built automatically)
- Spool: 9, Slic3D PETG orange (bed target 75 °C)
- Settings: not recorded (sliced outside this session)
- What happened: recording started 22:40 by the sender, file sent 22:40, Started notification 22:41. The owner cancelled it at about 22:56 during the start (bed measuring / first moves) so the acorn could print; the recorder's "Print ended (canceling)" notification went out 22:57. Recording stopped and marked cancelled by this session.
- Result: nothing printed on the plate; a small curl of orange PETG was left hanging from the nozzle tip.
- Photos, recording, logs: recorder "Checklist-tests-21nov" (cancelled)

### 2026-11-21 22:59–23:46 — Acorn clicker: round-bottom nut, scaly cap with stalk (the keycap), MX fit tester — OK
- File: `acorn_clicker_orange_petg.gcode` (design `designs/acorn_clicker/acorn_clicker.py`, viewer https://claude.ai/artifact/QyMaDhigQAuG4eEttiwENS)
- Spool: 9, Slic3D PETG orange (on the printer since the morning, under 1 day)
- Settings: 240 °C first layer and rest, bed 75 °C, 0.20 mm, 3 walls, 15 % infill, no brim, no slicer supports (the cap has its own snap-off column under its hanging stem, 0.2 mm gap), seam at the back blended (scarf) with a wipe, first layer 30 mm/s, outer walls 60, everything else 100 or less, acceleration 4000, fan 30–50 %; profiles "0.20mm Small Part PETG @AD5M" and "Orange PETG Slic3D (AD5M)". Nut printed upside down (switch hole facing down), cap rim down. Switch plate exactly the switch button's (14.1 mm hole, 1.5 mm plate that prints 1.6); cap + socket 4.10 × 1.30 mm; fit tester sockets 4.00 × 1.20, 4.05 × 1.25, 4.10 × 1.30.
- Changed since the last print with this spool: same settings as the clean switch button; new socket size (4.10 × 1.30 instead of 4.15 × 1.35)
- What happened: tip checked on camera before the start (step 33): a small PETG curl from the cancelled print hung from it. A hands-free purge blob at 240 °C in the front-right corner was made; the owner then cleaned the tip and plate and asked to start without extra purge lines. Recording started, finished screen of the cancelled print cleared, sent 22:59 (preview stored, Started notification 22:59, recording on). Nozzle stayed at 140 °C through homing and bed measuring. The leftover curl went into the start of the purge line. First layer clean on all parts (cap rim ring with the support foot centred, nut collar with the square hole, fit tester). Halfway notification 23:25; finished 23:46 after 44 min (estimate 46), Finished notification sent. Camera watcher: first start stopped at once (its 00:30 time limit was read as already past at 23:00; fixed), restarted, about 160 OK answers, no alerts.
- Result: on camera, all three parts complete: the nut's dome round and smooth, the cap's scales crisp, the fit tester complete; nothing lifted. The plate was taken off within a minute of finishing, so the record photo is the watcher's frame a few seconds before the end. Owner, that night: came out pretty much perfect. Only fault: the switch sits a tiny bit loose in the nut; it stays in, but pulling the cap off pulls the switch out with it. The hole is the switch button's (14.1 mm), which clipped perfectly there; the new, snugger 4.10 × 1.30 socket now grips the stem harder than the clips hold. Next acorn: hole 14.0 mm.
- What worked: the clean orange PETG settings again; the nut upside down for a smooth round bottom with no supports; the cap rim down with its own snap-off column (no slicer supports); arranging all three on one plate; the automatic preview and all three notifications.
- What did not: the switch pulls out with the cap (hole 14.1 too loose against the snugger socket); the watcher's time limit across midnight (fixed in `watch_print.sh`); no photo on the plate after the end (the plate came off first)
- Photos, recording, logs: `prints/records/acorn_clicker_first_layer_phone1.jpg`, `prints/records/acorn_clicker_halfway_phone1.jpg`, `prints/records/acorn_clicker_finished_phone1.jpg`, `prints/records/watch_20261121-2301.log`, recorder "Acorn clicker - orange PETG"

### 2026-11-22 00:19–03:46 — Big plate: fidget cube (body + dial, 2 gears, slider, roller, keycap) and the big 4-switch acorn (nut + cap) — OK
- File: `fidget_cube_big_acorn_orange_petg.gcode` (designs `designs/fidget_cube/fidget_cube.py`, `designs/acorn_clicker/big_acorn.py`; viewers https://claude.ai/artifact/G2wQYyXoKpANTL5w9pKrQi and https://claude.ai/artifact/DKbNm33wogpC3s9HCV7LKK)
- Spool: 9, Slic3D PETG orange
- Settings: 240 °C, bed 75 °C, 0.20 mm, 3 walls, 15 % infill, no brim (the roller got its own 0.4 mm trim-off ring because it is taller than wide), no slicer supports (the big cap has four built-in snap-off columns), seam at the back blended with a wipe, small-part speeds, fan 30–50 %; profiles "0.20mm Small Part PETG @AD5M" and "Orange PETG Slic3D (AD5M)". Cube clicker face down, big nut holes down, big cap rim down. 204 layers, 68.3 g, estimate 3 h 41 min.
- Changed since the last print with this spool: same settings as the acorn; first multi-part plate this size
- What happened: tip checked on camera: a 2 mm ooze string from heating to 190 °C for brushing; the owner chose to start anyway, and it landed at the start of the purge line. Sent 00:19 through the printer's usual address (preview stored 12 s after the upload, Started notification 00:19). The Home Assistant tab showed "no preview" in those 12 s (card changed to say "Building the 3D preview" during the start). First layer clean on all parts. Halfway notification 02:04, finished 03:46 after 3 h 22 min, Finished notification sent. The session that started it ended overnight, so the recording was not stopped by hand: it stopped itself at 05:06 (marked OK the next evening) and the camera watcher ran on until its 05:30 limit, reporting a black camera after the recording switched the light off.
- Result: on camera at the end, every part complete and clean, nothing lifted (photo). Big acorn (owner, 2026-11-22): perfect for the switches on both sides: the four 14.0 mm holes in the nut and the four 4.10 × 1.30 mm + sockets in the cap were exactly the right size. Fidget cube fits (dial and gear snap pegs, slider gate and stops, roller fin, keycap in its well) not yet reported.
- What worked: the clean orange PETG settings on a 3.5 h plate of 9 parts; built-in snap-off columns instead of slicer supports; the trim-off ring for the tall roller
- What did not: the print was written down late (session ended); watcher did not stop at the finish
- Photos, recording, logs: `prints/records/fidget_cube_big_acorn_finished_phone1.jpg` (03:43), `prints/records/watch_20261122-0019.log`, recorder "Fidget cube + big acorn - orange PETG"

### 2026-11-22 20:39–23:39 — Airless honeycomb tennis ball, firm (one piece, 65 mm hollow honeycomb sphere on a printed cradle) — OK
- File: `tennis_ball_firm_orange_petg.gcode` (design `designs/handball/tennis_ball.py`, viewer https://claude.ai/artifact/UUamKX6NLGhqvW2izpFLK8)
- Spool: 9, Slic3D PETG orange
- Settings: 240 °C, bed 75 °C, 0.20 mm, the clean orange settings (no brim, blended seam with a wipe, fan 30–50 %) with a new profile "0.20mm PETG ball @AD5M": slow down for curled perimeters on, overhang speeds 30/15/8 mm/s. No slicer supports: slicer tree supports grew inside the ball through the holes, so the model brings its own cradle (36 radial fins and 3 rings up to 57°, 0.24 mm under the ball). Firm variant: 2.4 mm shell, 1.2 mm struts, 642 cells. 317 layers, 18.7 g, estimate 3 h 15 min.
- Changed since the last print with this spool: first sphere; new ball profile; designed cradle instead of supports
- What happened: sent 20:39 to .52; preview stored, Started notification 20:39. First layers clean on camera (fins and the centre patch). Halfway notification 22:19, ball at its widest point, every hexagon closed. The Haiku camera watcher paused the print twice by mistake: 22:56 at 74 % (its answer read "OK, PROBLEM: ... nothing is wrong", and the parser takes PROBLEM anywhere) and 23:04 at 79 % (it read the closing top as "printing in mid-air"). Each time the picture showed nothing wrong; resumed within about a minute; the nozzle dropped to about 228 °C on the second pause and reheated. Watcher fixed for the first case and turned off for the last 20 %; a false-alarm push went to the owner. Finished 23:39 (printcam: 2 h 54 min printing), Finished notification sent. The owner took the plate off within a minute, so the finish photo is the 23:39:28 zoomed shot.
- Result: the top closed perfectly, clean hexagons all the way over; one small string loop on the side and a few fine hairs inside holes (photo). Bounce, the cradle break-off and any marks from the two pauses not yet reported.
- What worked: one-piece honeycomb shell with no seams; designed cradle instead of slicer supports; slowed overhangs; predicted stringing was mild
- What did not: the camera watcher (two false pauses on a honeycomb part)
- Photos, recording, logs: `prints/records/tennis_ball_firm_finished_phone1.jpg` (brightened crop), `prints/records/tennis_ball_firm_finished_phone1_zoom.jpg`, `prints/records/watch_20261122-2039.log`, `watch_20261122-2256.log`, recorder "Honeycomb tennis ball firm - orange PETG"

### 2026-11-23 19:59–20:01 — C KIDS key clicker test (housing, keycap, five loose logo pieces) — cancelled
- File: `keyclicker_test_orange_petg.gcode` (sliced here)
- Spool: 9, Orange PETG (Slic3D)
- Settings: nozzle 240 / 240 °C, bed 75 °C, layer 0.20 mm, no brim, seam at the back blended with a wipe, small-part speeds (first layer 30, outer walls 60, rest 100 or less, acceleration 4000), fan 30–50 %; profiles "0.20mm Small Part PETG @AD5M" / "Orange PETG Slic3D (AD5M)". 111 layers, 9.4 g, estimate 29 min.
- Changed since the last print with this spool: first clicker keychain; the logo was five loose inlay pieces (C, K, I, D, S) to glue into pockets in the cap.
- What happened: before the start, the cold-nozzle camera check showed a thin orange string, about 4 cm, hanging from the tip. The owner said to start anyway (the purge line should take it). Recording started 19:59:01 (phone 1 only: phone 2 not answering), print sent 19:59:07. During heating and bed measuring the owner asked to stop: the logo should be part of the keycap, not separate pieces. Cancelled over the network at about 20:01, before any plastic came out.
- Result: nothing printed; plate clean on camera at 20:05.
- What worked: cancel over the network during bed measuring was clean; "clear platform" brought the printer back to READY.
- What did not: the design wasn't what the owner wanted (loose logo pieces). Phone 2 still unreachable.
- Photos, recording, logs: `/tmp/printcam/phone1-195820.jpg` (string on the tip), `/tmp/printcam/phone1-200535.jpg` (clean plate after cancel); recording 20261123-195900_C-KIDS-key-clicker-test-orange-PETG (cancelled).

### 2026-11-23 20:09–20:40 — C KIDS key clicker test v2 (housing + one-piece keycap with raised logo) — OK
- File: `keyclicker_test_orange_petg_v2.gcode` (sliced here; design `designs/keyclicker/clicker.py`, viewer https://claude.ai/artifact/JWPDUekhXYWe92pL2ZXK9E)
- Spool: 9, Orange PETG (Slic3D)
- Settings: nozzle 240 / 240 °C, bed 75 °C, layer 0.20 mm, no brim, seam at the back blended with a wipe, small-part speeds (first layer 30, outer walls 60, rest 100 or less, acceleration 4000), fan 30–50 %; profiles "0.20mm Small Part PETG @AD5M" / "Orange PETG Slic3D (AD5M)". 111 layers, 9.3 g, estimate 27 min 36 s. Housing upright on its floor; keycap upright, skirt and + post on the plate, the C KIDS logo standing 1.0 mm (5 layers) on its top. MX sizes as confirmed: 14.0 mm hole in a 1.5 mm plate, 4.10 × 1.30 mm + socket.
- Changed since the last print with this spool: first key clicker; the logo is now part of the keycap (the cancelled try had it as loose inlay pieces).
- What happened: a thin orange string was still looped from the nozzle tip on the cold check; the owner's standing instruction was to start anyway. Recording 20:09:14 (phone 1 only; phone 2 not answering), sent 20:09:17, Started push 20:09:41. Nozzle stayed at 140 °C or below through homing and bed measuring (20:09–20:13), then heated to 240. The string was dropped at the right end of the purge line; the tip was clean after. First layers flat and stuck. The camera watcher answered PROBLEM once at 20:15 about the purge line and its string (normal), so it was restarted with the purge line described as normal; no pause. PETG ooze curls were flicked onto the plate around the parts during the print and fine strings formed between the two parts. Halfway push 20:27:59. Finished 20:40 (28 min); Finished push 20:40:10.
- Result: both parts complete; housing walls straight and clean, well open; keycap top with the raised C KIDS logo visible on camera (letter detail to be checked in hand). A few fine strings between the parts and some loose curls on the plate.
- What worked: the clean orange settings again; a string on the nozzle was left behind on the purge line; the 1.0 mm logo printed on the cap without supports.
- What did not: stringing between parts and loose ooze curls on the plate (open issue 1/2 family); the watcher misread the purge line.
- Photos, recording, logs: `prints/records/keyclicker_test_v2_finished_phone1.jpg`, `prints/records/keyclicker_test_v2_finished_zoom.jpg`; recording 20261123-200914_C-KIDS-key-clicker-test-v2-orange-PETG (OK); watcher log `prints/records/watch_20261123-*.log`.

### 2026-11-23 21:10–21:45 — C KIDS key clicker v3 (closed floor, coned + post, less-string settings) — OK, stringy
- File: `keyclicker_test_orange_petg_v3.gcode` (sliced here)
- Spool: 9, Orange PETG (Slic3D), open on the printer since 2026-11-21
- Settings: nozzle 240 first layer / 235 rest, bed 75 °C, layer 0.20 mm, no brim, seam at the back blended with a wipe, small-part speeds, fan 30–50 %, retraction 1.0 mm (was 0.8), avoid crossing walls on; new profiles "0.20mm Small Part PETG less string @AD5M" / "Orange PETG Slic3D less string (AD5M)". 111 layers, 9.4 g, estimate 28 min.
- Changed since the last print with this spool: owner feedback on v2 — stringy inside, the + post broke off the keycap, didn't want the hole under the base. So: floor closed (no 9 mm push-out hole); a 45° cone joins the + post to the cap ceiling (5.5 → 8.3 mm, starts 0.4 mm above the switch top when pressed); 235 °C, 1.0 mm retraction, avoid crossing walls.
- What happened: a string hung from the cold nozzle again; started anyway per the owner's standing instruction, and the purge line took it. Recording 21:10:49, sent 21:10:50. Nozzle at or below 140 °C through homing and bed measuring, 240 for the first layer, 235 from layer 2. First layers good, solid closed floor. At 21:21 (layer 11) the owner paused it at the printer and resumed at 21:23 from the screen (Started push went out on the resume, 21:23:24). The owner then sent a photo of curly strings at the housing's back corner (keyring tab) and asked why it was failing now; chose to let it finish. More ooze curls were flicked onto the plate through the print. Halfway push 21:33:33. Finished 21:45 (34 min with the pause); Finished push 21:45:43.
- Result: both parts complete on camera; keycap with the raised C KIDS; strings at the housing's back corner and between the parts; curls on the plate. Fit and post strength not yet reported.
- What worked: closed floor and coned post printed with no supports; the purge line again took the nozzle string.
- What did not: stringing got no better at 235 °C with 1.0 mm retraction. The keycap came off with no + post at all, only strings where it should be, and strings over the top round KIDS. First blamed on a damp spool; the owner doubted it, and the G-code showed the real causes: (1) the + post stood on the plate as a single thin line-wide ring round the + (no foot), so it was knocked loose and turned to spaghetti (in v2 it "broke off"); the acorn's identical post stood on a snap-off column with an 8.4 mm foot; (2) both parts printed together, so every layer the nozzle hopped between them (strings at the keyring tab and between the parts) and over the top between the five logo islands. The spool printed the tennis ball almost string-free the day before.
- Photos, recording, logs: `prints/records/keyclicker_test_v3_finished_phone1.jpg`; owner's mid-print photo (strings at the tab); recording 20261123-211049_C-KIDS-key-clicker-v3-orange-PETG-less-string (OK).

### 2026-11-23 21:53–22:00 — C KIDS key clicker v4 (snap-off column, one part at a time) — failed
- File: `keyclicker_orange_petg_v4.gcode` (sliced here)
- Spool: 9, Orange PETG (Slic3D)
- Settings: the clean orange settings (240 °C, bed 75 °C, 0.20 mm, small-part speeds, retraction 0.8, blended seam with a wipe, fan 30–50 %), no brim, print sequence by object (keycap first at about X −53, then housing at about X +47); profiles "0.20mm Small Part PETG one at a time @AD5M" / "Orange PETG Slic3D (AD5M)". 159 layers, 9.6 g, estimate 30 min.
- Changed since the last print with this spool: snap-off column with an 8.4 mm foot under the + post (as on the acorn); one part at a time; back to 240 °C and 0.8 mm retraction.
- What happened: a short string on the cold nozzle; started per the owner's standing instruction. Recording 21:53:28, sent 21:53:29. Nozzle at or below about 142 °C through bed measuring. At 21:59 (layer 5) phone 1 showed a tangle at the keycap's place; paused at 21:59, then the full picture showed the plate empty there and the keycap's first layers stuck to the nozzle. Cancelled; recording marked failed.
- Result: nothing on the plate; the keycap's first layers stuck on the nozzle (to be removed by hand).
- What worked: the column and the one-at-a-time order sliced as intended (checked layer by layer).
- What did not: the keycap let go of the plate. Its footprint is only the 1.5 mm wall ring and the 8.4 mm foot, and it had no brim: checklist step 25 calls for a 4 mm brim on any footprint under 30 × 30 mm unless the PETG part sits on one whole solid face, which this ring does not. The "no brim" in the clean orange settings came from parts on a solid face and should not have been applied here. Printing one at a time also put it 5 cm left of the centre, likely outside the glue stick. In v2 and v3 the same ring held, but only just.
- Photos, recording, logs: `prints/records/keyclicker_v4_tangle_phone1.jpg`, `prints/records/keyclicker_v4_failed_phone1.jpg`; recording 20261123-215328_C-KIDS-key-clicker-v4-orange-PETG-one-at-a-time (failed).

### 2026-11-23 22:05–22:39 — C KIDS key clicker v5 (snap-off column, one part at a time, 4 mm brim) — OK
- File: `keyclicker_orange_petg_v5.gcode` (sliced here)
- Spool: 9, Orange PETG (Slic3D)
- Settings: 240 °C first layer and rest, bed 75 °C, 0.20 mm, small-part speeds, retraction 0.8, blended seam with a wipe, fan 30–50 %, 4 mm outer brim with a 0.1 mm gap, print sequence by object (keycap first at about X −53, housing second at about X +47); profiles "0.20mm Small Part PETG one at a time brim @AD5M" / "Orange PETG Slic3D (AD5M)". 159 layers, 9.9 g, estimate 30 min 48 s.
- Changed since the last print with this spool: 4 mm brim (v4 let go without one); glue stick on both part spots.
- What happened: the nozzle tip was clean on the cold check. Recording 22:05:03, sent 22:05:04, Started push 22:05:23. Nozzle about 140 °C through bed measuring. Keycap held on its brim through layer 5 (where v4 let go) and printed with no strings; housing followed. Halfway push 22:25:39. Finished 22:39 (31 min); Finished push 22:39:20.
- Result: both parts complete and clean on camera, no strings between the parts or on the plate, keycap with the raised C KIDS. Post, fit and logo detail to be checked in hand (pull the snap-off column out of the keycap first).
- What worked: printing one part at a time removed the strings that v2 and v3 had (same spool, same 240 °C), which confirms the hops between parts were the cause, not moisture; the 4 mm brim held the ring-footed keycap.
- What did not: nothing seen on camera.
- Photos, recording, logs: `prints/records/keyclicker_v5_finished_phone1.jpg`, `prints/records/keyclicker_v5_finished_zoom.jpg`; recording 20261123-220503_C-KIDS-key-clicker-v5-orange-PETG-brim-one-at-a-time (OK).

### 2026-11-24 20:36–20:48 — C KIDS 4-keycap colour-swap test (raised logo, white then orange) — cancelled
- File: `keycaps_ckids_test4_white_orange_petg.gcode` (built by `designs/keyclicker/plate_keycaps.py --cols 5 --rows 1`, checked by `check_plate.py`: all checks passed)
- Spool: 5, White PETG (Keytek), first use (opened today); 9, Orange PETG (Slic3D) planned for the logos after the pause (not reached)
- Settings: 240 °C first layer and rest, bed 75 °C, 0.20 mm, small-part speeds, retraction 0.8, blended seam with a wipe, fan 30–50 %, PA 0.05, 4 mm brim, bodies by layer then M25 pause (parked X −56.4 Y −108 Z 20), logos one keycap at a time; profiles "0.20mm Keycap plate bodies/logos @AD5M" / "White PETG Keytek (AD5M)". 4 keycaps + 20 mm purge block in a row; estimate 39 min, 10.1 g white + 0.5 g orange.
- Changed since the last print with this spool: first print with spool 5. The orange spool was about 5 h past the 3-day PETG limit; the owner chose to use it as it was.
- What happened: cold tip check at 20:34 showed a small white PETG curl on the nozzle (from heating to 190 °C for brushing); phone 2 refused connections. The owner chose to start anyway ("it should be okay after the purge lines") with phone 1 only. Recording 20:36:05, sent 20:36:07, preview stored, Started push 20:36:33. While it measured the bed the owner decided to redesign the keycap (face down, flush inlaid logo) and asked to cancel. Cancel sent over the network at 20:40:45 (during bed measuring, WAIT_ON_TOOL) and again at 20:42; a pause, M26 over 8899 and a cancel sent straight to 192.168.68.152 followed at 20:43–20:44: every one answered "Success" and was ignored. The printer purged and printed the first layers of all five parts. Owner pushed to press Stop on the screen; stopped about 20:48 (recorder: "Print ended" push 20:48:43). The recorder then logged a "cone-pair" job cancelled at 11 % (20:49) and a "print" job ended at 0 % (20:53), likely the screen being used; not investigated. Recording stopped and marked cancelled 20:58.
- Result: first 2–4 layers of four keycaps and the block, removed by the owner before the after-stop picture. Pause/swap not reached.
- What worked: the file built and checked cleanly; the start (140 °C through measuring, purge line) behaved as usual.
- What did not: the printer ignored every network cancel and pause during this print (open issue 11). The tip curl was not removed.
- Photos, recording, logs: `prints/records/keycaps_test4_tip_curl_phone1.jpg`, `prints/records/keycaps_test4_first_layers_phone1.jpg`, `prints/records/keycaps_test4_after_stop_phone1.jpg`; recording 20261124-203605_C-KIDS-4-keycap-colour-swap-test-white-orange-PETG (cancelled).

### 2026-11-24 21:08–23:02 — C KIDS face-down 4-keycap test (flush orange logo inlaid in white) — OK (face still to be judged in hand)
- File: `keycaps_ckids_facedown_test4_orange_white_petg.gcode` (built by `designs/keyclicker/plate_flush.py --cols 4 --rows 1`, checked by `designs/keyclicker/check_flush.py`: all checks passed; the checker caught the first-layer shrink still on and both mutation tests)
- Spool: 9, Orange PETG (Slic3D) for the letters (first layer only), then 5, White PETG (Keytek) for the bodies
- Settings: 240 °C both colours, bed 75 °C, 0.20 mm, keycaps face down (top on the plate), by layer, no brim, elefant_foot_compensation 0 (so the letters and the holes round them print at full size), seam back blended with wipe, PA 0.05, fan 30–50 %, small-part speeds; profile "0.20mm Keycap face-down @AD5M" / "White PETG Keytek (AD5M)". Logo = one 0.2 mm layer of letters; then M25 parked at X −100 Y −108 Z 20; after resume reheat, purge line at Y −106.5/−106.1, wipe, bodies. The first push-back of each colour was made 0.8 mm larger to undo the wipe retract (open issue 2), because that first line is on the visible face. 43 layers, 0.15 g orange + 7.4 g white, estimate 28 min plus the start.
- Changed since the last print with these spools: new design (face down, chamfered top edge, flush one-layer inlay, no snap-off column, no brim). The orange spool was past the 3-day PETG limit by the owner's choice (same as the test before).
- What happened: tip clean on the cold check (21:07). Recording 21:08:14, sent 21:08:16, Started push 21:08:37. Nozzle at 140 °C through homing and bed measuring (to 21:13:30), then 240. Purge line orange with a curl at its start. Letters 21:14–21:15: all four logos laid cleanly. M25 paused the printer at 21:15:27 (it switched the nozzle heater off; the bed stayed at 75 °C); the swap push went out 21:15:25, reminders 21:23 and 21:56. The owner swapped at about 22:34 (79 min paused); position held: the white faces went down centred round the letters. Network pause test at 22:36:48 worked within 3 s (issue 11); the print resumed by itself about 16 s later (probably the owner at the screen, not confirmed). The camera watcher, restarted after its 22:30 time limit, read the small parts at the back of the frame (and a hand in frame) as an empty plate and sent a PAUSED push at 22:39; the print kept printing (or was resumed at once); a false-alarm push followed and the watcher was not restarted; pictures checked by hand about every 90 s instead. A small white string tuft sat on the back-right corner of the left keycap from layer ~5 (likely the swap dribble or purge) and a fine string between the first two caps; neither caught. Finished 23:02 (Finished push 23:02:28). The recorder auto-stopped at 22:56 (estimate + 1 h did not allow for the 79 min pause), so the last 6 min are not recorded; marked OK afterwards. The plate was off within 90 s of finishing, before the finish picture.
- Result: four complete face-down keycaps, square, posts up, clean on camera. The face (orange in white) can only be judged in hand: edges, flatness, hold, colour.
- What worked: the M25 pause, the 79-minute wait without losing position, the reheat-and-purge after resume, centring of the white round the letters; the full-size first layer once the shrink setting was off.
- What did not: the watcher false alarm (issue 10); the recording's auto-stop; a small string tuft on one cap.
- Photos, recording, logs: `prints/records/keycaps_facedown_test4_letters_paused_phone1.jpg`, `keycaps_facedown_test4_string_left_cap_phone1.jpg`, `keycaps_facedown_test4_70pct_phone1.jpg`, `keycaps_facedown_test4_plate_removed_phone1.jpg`; recording 20261124-210814_C-KIDS-face-down-4-keycap-test-orange-letters-white-PETG (OK, ends 22:56); watcher logs `prints/records/watch_20261124-2108.log`, `watch_20261124-2236.log`.

### 2026-11-26 09:23–09:50 — C KIDS clicker housing, blue (first print with spool 13) — OK
- File: `keyclicker_housing_corner_blue_petg.gcode` (corner keyring lug, `clicker_housing_corner.stl` rebuilt from `designs/keyclicker/clicker.py`, sliced here, thumbnail added by hand)
- Spool: 13, Blue PETG Lite (Slic3D), first use (new spool, loaded by the owner)
- Settings: 240 °C first layer and rest, bed 75 °C, 0.20 mm, 3 walls, 15 % infill, small-part speeds (first layer 30, outer wall 60, travel 250, acceleration 4000), retraction 0.8, PA 0.05, fan 30–50 %, seam back with blended (scarf) seam and wipe on loops, no brim, no skirt (the housing stands on its whole solid floor); profiles "0.20mm Small Part PETG @AD5M" / "Blue PETG Slic3D (AD5M)" (a copy of the clean orange Slic3D settings). 111 layers, 7.69 g, estimate 20 min 53 s.
- Changed since the last print with this spool: first print with it. Compared with the v5 clicker (orange): housing alone, no brim.
- What happened: nozzle brushed by the owner (190 °C was set but the tip check came first), tip clean on camera at 09:23. Recording 09:23:18 (phone 1 only: phone 2 unreachable), sent 09:23:33, preview stored, Started push 09:23:37. Bed heated from 22 °C, nozzle held at 140 °C through homing and bed measuring (09:27:20–09:29:30), then 240. Purge line clean blue. First layer flat and solid; walls crisp and string-free on every check (layers 3, 4, 28, 30, 59, 92). Halfway push 09:43:18. Finished 09:50 (BUILDING_COMPLETED); Finished push 09:50:25. Recording stopped 09:50:34 (OK). Plate cleared over the network.
- Result: one complete blue housing, clean on camera. Fit of the switch and keycap still to be checked in hand. **Fit checked in hand by the owner (2026-11-26 22:20): fits well** (switch firm, keycap clicks and springs back, nothing loose), so the 25-housing plate went ahead. A thin pale vertical line on one corner at 78 % (seam or reflection), to check in hand.
- What worked: the Slic3D orange settings carried straight over to the blue PETG Lite; no brim needed on the solid 26 mm floor.
- What did not: the finish picture was dark and blurred (the lights switch off when the recording stops and the bed had been lowered), so the 78 % picture stands in. Phone 2 down the whole print.
- Photos, recording, logs: `prints/records/keyclicker_housing_blue_first_layers_phone1.jpg`, `keyclicker_housing_blue_78pct_phone1.jpg`, `keyclicker_housing_blue_finished_phone1.jpg`; recording 20261126-092318_C-KIDS-clicker-housing-blue-PETG (OK).

### 2026-11-26 09:54–10:17 — C KIDS raised-logo keycap test, one cap (white body, swap, red letters) — OK (owner: "that was perfect")
- File: `keycaps_ckids_raised_test1_white_red_slic3d_petg.gcode` (built by `designs/keyclicker/plate_keycaps.py --cols 2 --rows 1` with filament "White PETG Slic3D (AD5M)", checked by `check_plate.py`: all checks passed, thumbnail added). No prime pad (the pad was invented during this print).
- Spool: 11, White PETG Lite (Slic3D), first use, for the body and purge block; then 12, Red PETG Lite (Slic3D), first use, for the letters.
- Settings: 240 °C, bed 75 °C, 0.20 mm, keycap upright skirt down on its snap-off column with a 4 mm brim, 20 × 20 mm purge block beside it, profiles "0.20mm Keycap plate bodies/logos @AD5M"; bodies by layer, M25 parked at X −56.4 Y −108 Z 20, reheat, purge on the block, wipe, raised logo (1.0 mm) one cap at a time. 48 layers, about 13 min white + 1 min red, 4.18 g white + 0.17 g red.
- Changed since the last print with these spools: first prints with both. First raised-logo colour swap ever completed (the 2026-11-24 attempt was cancelled before the swap).
- What happened: the owner gave a timed green light ("start in about 5 minutes") while preparing the plate and loading white. My wait timer failed (zsh string comparison) and I homed the printer for the tip check at about 09:51:40, four minutes early, while the owner may have been at the printer: nobody hurt, but a mistake (the wait is now done in Python). Tip check at 09:54 showed a small white drop under the tip from loading; the owner chose to send anyway. Recording 09:54:52 (phone 1 only), sent 09:54:55, preview stored, Started push 09:55:02. Nozzle at 140 °C through homing and measuring, heating from 09:58:30. White purge line clean; first layer of both parts down flat with a small white curl near the nozzle at 10:00 (probably the drop from the tip), gone by layer 4. Walls clean and string-free through layer 33. Halfway push 10:06:31. Paused at 10:12 for the swap (no recorder push for the pause; I sent one with ./alert.sh). Owner loaded red and said "green light" at 10:15; still paused, so I resumed over the network at 10:16 (`jobCtl_cmd` continue, worked at once). Reheat, red purge on the block (a red string trailed from the nozzle), red letters on the cap 10:17, BUILDING_COMPLETED 10:17:44. The owner took the parts off within seconds, before the finish picture. Recording stopped (OK), plate cleared, heater off.
- Result: one white keycap with raised red C KIDS and the purge block, clean on camera. Owner's verdict in hand (10:20): "that was perfect".
- What worked: the purge block (it took the dirty start of the red); the network resume; the swap itself (position held). The owner liked the purge block and proposed a prime pad for every print (added the same morning, step 19).
- What did not: my early homing; the recorder treated the resume as a new print (second Started push and a Halfway push at 10:16, no Finished push; sent one myself); the finish picture missed the parts.
- Photos, recording, logs: `prints/records/keycaps_raised_test1_first_layer_phone1.jpg`, `_white_layer33_phone1.jpg`, `_paused_for_red_phone1.jpg`, `_red_purge_phone1.jpg`, `_red_letters_phone1.jpg`, `_red_letters_crop.jpg`, `_plate_cleared_phone1.jpg`; recording 20261126-095452_C-KIDS-raised-keycap-test-white-then-red-PETG (OK).

### 2026-11-26 10:23–10:48 — C KIDS clicker housing, red (first print with a prime pad) — OK
- File: `keyclicker_housing_corner_red_petg.gcode` (same housing and settings as the blue one, filament "Red PETG Slic3D (AD5M)", prime pad added by `prime_pad.py`: 12 × 6 mm, 3 layers, centre X −4.5 Y 22.3, 4.2 mm behind the housing's first line, with the start's missing 0.8 mm pushed on its first layer; thumbnail added)
- Spool: 12, Red PETG Lite (Slic3D), loaded since the raised keycap test
- Settings: 240 °C, bed 75 °C, 0.20 mm, small-part speeds, retraction 0.8, PA 0.05, fan 30–50 %, scarf seam at the back, no brim; profile "0.20mm Small Part PETG @AD5M". 111 layers, 7.7 g, estimate 20 min 53 s. Old start code (1.5 mm pull-back, no dab).
- Changed since the last print with this spool: first housing in red; first prime pad on any print.
- What happened: green light 10:22 (owner pulled off the red string); tip clean on camera at 10:22:54, no brushing. Recording 10:23:03 (phone 1), sent 10:23:05, Started push 10:23:08. 140 °C through measuring. At 10:28 a red ooze curl hung from the nozzle while it drew the purge line (owner: the heat-up ooze still rides on the nozzle and sometimes reaches the print; start code changed afterwards, open issue 2). At 10:28:42 red bits round the nozzle at the start of the first layer; by 10:29 the housing's first layer was a clean solid square. Walls clean on every check (layers 19, 52). Halfway push 10:41:15. Finished 10:48:27 (22 min); Finished push 10:48:22. Finish picture taken before the recording stopped (zoom 150 %): clean red housing, thin red string on the nozzle. Recording stopped (OK), plate cleared, heater off.
- Result: one clean red housing. The pad sits behind it, out of the camera's view; owner to check whether the curl ended up in the pad and the housing's first line is full.
- What worked: the pad file came through every check, and the first layer of the housing was clean despite the curl at the purge.
- What did not: the heat-up curl on the nozzle (open issue 2).
- Photos, recording, logs: `prints/records/keyclicker_housing_red_purge_curl_crop.jpg`, `_first_layer_crop.jpg`, `_47pct_crop.jpg`, `_finished_phone1.jpg`; recording 20261126-102303_C-KIDS-clicker-housing-red-PETG-prime-pad (OK).

### 2026-11-26 10:55–11:18 — C KIDS raised-logo keycap, one cap, white body with BLUE letters (first print with the new start code) — OK on camera
- File: `keycaps_ckids_raised_test1_white_BLUE_petg.gcode` (the one-cap raised test file, given the new start code: 2.5 mm pull-back before heating and a 2 mm dab at the purge start; prime pad 12 × 6 mm, 3 layers, centre X −0.6 Y −19, in front of the cap and block; blue thumbnail; `check_plate.py` all checks passed, pads checked)
- Spool: 11, White PETG Lite (Slic3D), then 13, Blue PETG Lite (Slic3D) for the letters
- Settings: as the red-letter test (240 °C, bed 75, brim, bodies by layer, M25, purge on the block, raised letters 1.0 mm).
- Changed since the last print with these spools: new start code (first use) and a prime pad; blue letters instead of red.
- What happened: owner loaded white and said start. Plate empty on camera; a small white drop under the tip after loading; the owner wiped it with a cloth (seen on camera 10:54:50). Recording 10:55:21, sent 10:55:22, Started push 10:55:30. 140 °C through measuring, heating from about 10:59:40. While heating a string still oozed from the nozzle; the dab printed at the purge start (visible at the right end of the purge line) but a small curl still hung on the nozzle during the purge (11:00:36). The nozzle then laid the pad first (11:00:45, a small white bit beside it) and the cap and block first layers came out clean with nothing on them (11:01:52). Paused at 11:13:45; recorder sent "Print ended (pause)"; I sent the swap push with a picture. Owner loaded blue and resumed at 11:16:57 (on the screen). Blue purged on the block (a thin blue string draped off the block's side), letters printed, BUILDING_COMPLETED 11:18:41. Finish picture before the recording stopped (zoom 200 %): white cap with raised blue C KIDS, block with a blue top and a blue string. Recorder again sent Started and Halfway after the resume and no Finished push; sent one myself (open issue 14).
- Result: one white keycap with raised blue C KIDS, clean on camera. Verdict in hand pending.
- What worked: the prime pad caught the heat-up curl that the dab did not; no defect on the cap. The swap and resume.
- What did not: the dab alone did not hold the curl (a curl still rode on the nozzle through the purge); the bigger pull-back did not stop the ooze while heating. The recorder's resume bug.
- Photos, recording, logs: `prints/records/keycap_blue_purge_dab_curl_crop.jpg`, `keycap_blue_pad_crop.jpg`, `keycap_blue_first_layer_crop.jpg`, `keycap_blue_paused_for_blue_phone1.jpg`, `keycap_blue_letters_crop.jpg`, `keycap_blue_finished_zoom_phone1.jpg`; recording 20261126-105521_C-KIDS-raised-keycap-white-with-BLUE-letters (OK).

### 2026-11-26 12:15–19:55 — C KIDS keycap plate 1: 41 raised-logo caps, white with RED letters — complete, 3 caps lost, tangles
- File: `keycaps_ckids_raised_41_white_RED_petg.gcode` (`plate_keycaps.py --cols 7 --rows 6`, 41 caps + purge block at 28.2 mm pitch out to X ±98, 4 mm brims, by layer; new start code (2.5 mm pull-back + dab); prime pad front centre; `check_plate.py` all checks passed)
- Spool: 11, White PETG Lite (Slic3D) for the bodies; 12, Red PETG Lite (Slic3D) for the letters
- Settings: 240 °C, bed 75 °C, 0.20 mm, small-part speeds, retraction 0.8 (process) / 1.2 (filament override not set for white), Auto Lift 0.4 mm, travel acceleration 10 000 mm/s², 3 × 3 bed measurement, M25 swap, letters one cap at a time. Estimate 5 h 48 min, 82.5 g white + 4.3 g red.
- What happened: the owner sent with a small white drop on the tip after loading (owner's choice). Recording 12:15:12, sent 12:15:16, Started push 12:15:41. First layer flat across the plate. Camera watcher started in a new alert-only mode (NO_PAUSE=1; also waits quietly through pauses). About 13:00 one cap in the left (outer) column lifted; the owner removed it about 13:15 (recording: intact at 13:13:42, gone at 13:15:42; the lift itself is too small to see in the video). The printer kept printing that cap in the air, which grew into a nest at that spot from about 13:30. At about 13:30 the owner's photo showed a second cap (front row, middle) had lost its snap-off column and + post; without the post its ceiling had nothing under it and collapsed into strands on top of the cap at about 15:15. 13:34 paused at the owner's choice to pull the first tangle out; resumed later by the owner. The watcher pushed 7 alerts from about 15:40 about the two nests. About 16:33 the owner paused again because it looked bad, cleared it, and resumed at about 18:55 (I wrongly took that pause for the colour-change stop). The colour stop came by itself at 19:16:27 (83 %; I had a backup network pause ready at 86 %). Swap push sent by hand (recorder issue 14). Owner loaded red, resumed 19:20:24. Red letters clean on camera; a red squiggle where letters printed over empty spots. BUILDING_COMPLETED 19:54:56. Finish pictures before the recording stopped; recording stopped (OK), plate cleared, Finished push sent by hand.
- Result: 39 caps on the plate with red C KIDS letters, clean letters on camera; two positions empty (owner removed them), nests and squiggles at those spots. Count of good caps to be confirmed in hand. **Confirmed in hand by the owner (2026-11-26 22:45): 35 of the 41 caps turned out perfect.**
- Root causes (open issue 15): (1) one cap lost its grip on the plate (outer column near the plate edge; 3 × 3 bed measurement; 4 mm brim on a ring footprint); (2) one cap's slim post was knocked off by the nozzle crossing the plate at only 0.4 mm lift with fast travel; both then turned into tangles only because the printer cannot skip a failed part (single-part cancel not available on the stock firmware over the network, tested 19:56).
- What worked: the colour stop, the swap and the letters; the prime pad; the alert-only watcher.
- What did not: adhesion of one edge cap, a knocked post, and no way to stop printing a failed part.
- Photos, recording, logs: `prints/records/keycaps41_plate1_*.jpg`; recording 20261126-121512_C-KIDS-41-keycaps-plate-1-white-raised-letters (OK); watcher logs `prints/records/watch_20261126-1226.log`.

### 2026-11-26 22:36 – 2026-11-27 07:24 — C KIDS clicker housings, 25 blue (v2 plate) — OK (one column rough-walled, to check in hand)
- File: `keyclicker_housings_25_blue_petg_v2.gcode` (25 housings, 5 × 5, corner keyring lug, part labels in the file, prime pad on layers 0.2/0.4/0.6, thumbnail present)
- Spool: 13, Blue PETG Lite (Slic3D), on the printer since 2026-11-26
- Settings: 240 °C first layer and rest, bed 75 °C, 0.20 mm, 3 walls, 15 % infill, no brim (solid floor), no skirt, seam back with scarf and wipe on loops, PA 0.05, fan 30–50 %, speeds ≤ 100 mm/s, acceleration 4000, travel 250 with 0.8 mm lift, 5 × 5 bed measurement; profiles "0.20mm Small Part PETG @AD5M" / "Blue PETG Slic3D (AD5M)". 111 layers, 190.6 g, estimate 9 h 07 min.
- Changed since the last print with this spool: 25 parts instead of one; first plate with the v2 fixes from open issue 15 (lift 0.8 mm, travel acceleration 4000, 5 × 5 measurement).
- What happened: the owner gave the green light after the single housing fitted well. Phone 2 was offline, and the owner chose to start with phone 1 only. A red string and a blue speck were at the nozzle check. Recording 22:36:10, Started push 22:37:18. The start was clean: 140 °C through measuring, then 240; clean purge; first layer flat and solid on all 25. Camera watcher in alert-only mode (NO_PAUSE=1). At 00:33 (layer 16) it pushed one alert ("blob and blue strands" at the right-hand column), taken while the head was moving over that column. Checked by hand within 2 minutes: all 25 in place, no spaghetti. A false-alarm follow-up push went to the owner at 00:35. Another single odd answer at 01:25 was checked by hand too and was fine. Halfway push 04:22:55. Finished 07:24 (8 h 41 min, 26 min under the estimate); Finished push 07:24:04. The watcher did not see the finish: it kept answering until its 08:30 time limit, so the recording ran to 08:31 and was then stopped by hand (OK). Plate cleared over the network at 08:31; heaters off.
- Result: 25 complete housings standing in their grid, none moved or lifted. The 20 in four columns have smooth, glossy walls. **The 5 in the column nearest the printer's black vent panel (the right-hand column from phone 1) have rough, speckled walls**, visible from about layer 16 to the top. Light hairs between a few parts. A blue string hangs from the nozzle (remove before the next print). Fit and the rough walls still to be checked in hand.
- What worked: the v2 fixes: nothing knocked over or lifted across 25 parts and 8.7 hours; no brim needed; the 5 × 5 measurement; finishing early.
- What did not: one column's wall finish (open issue 16); the watcher's false alarm at the moving head and its missed finish; phone 2 down for the whole print.
- Photos, recording, logs: `prints/records/photos/20261127_blue_housings_v2_plate.jpg`, `20261127_blue_housings_v2_rough_column.jpg`; recording 20261126-223610_25-blue-clicker-housings-v2 (OK, phone 1 only); watcher log `prints/records/watch_20261126-2236.log` (about 2,700 answers, 25 PROBLEM, 1 alert sent).

### 2026-11-27 08:51–17:38 — C KIDS clicker housings, 25 blue (v2 plate 2, identical reprint) — OK (rough column again)
- File: `keyclicker_housings_25_blue_petg_v2.gcode`, byte-for-byte the same file as the night before (owner: "literally identical print")
- Spool: 13, Blue PETG Lite (Slic3D), on the printer since 2026-11-26; about 610 g left after this plate (estimate, not weighed)
- Settings: same as plate 1: 240 °C, bed 75 °C, 0.20 mm, lift 0.8 mm, travel acceleration 4000, 5 × 5 measurement, prime pad, 190.7 g (counted from the file's extrusion including purge and pad), estimate 9 h 07 min.
- Changed since the last print with this spool: nothing in the file. Before sending, the G-code of a rough-column housing (h19) was compared with a middle-column one (h01): identical move types, speeds and fan for layers 16–30, so issue 16 is not a slicer difference.
- What happened: tip check 08:49: clean metal but a 3–4 cm blue string hanging below it; first green light came with the string still visible on camera, so the start was held; the owner removed it and gave a second green light; tip clean on camera 08:50:51. Recording 08:51:02, sent 08:51:16, Started push 08:51:34. Phone 2 offline (No route to host) for the whole print; phone 1 only. Nozzle held 140 °C while homing/measuring, 240 °C at 08:59; purge line clean with the dab curl at its right end; first layer flat and solid on camera. Watcher alert-only (NO_PAUSE=1), 2,600 answers, 57 single PROBLEM answers (mostly the moving head over the right-hand column and the purge-line curl), no two in a row during the print. Halfway push 14:37:59. Finished 17:38 (8 h 41 min, 26 min under the estimate), Finished push 17:38:51. The watcher missed the finish again: after a finish the printer reports PAUSED, so it waited as if for a colour swap; when the owner then took the parts off it pushed a false "plate is empty" alert at 17:53. The owner took the plate off before the photo step; the finish photo is the watcher's picture from 17:38:20. Recording stopped 17:55 (OK).
- Result: 25 complete housings, none moved or lifted. **The 5 in the column nearest the vent panel (right-hand column from phone 1, X ≈ +70) have the rough, ribbed walls again**; the other 20 are smooth. Same file, same spot, same defect: the cause is the position on the plate, not the G-code.
- What worked: the v2 plate twice in a row with nothing lifted or knocked loose; the tip check catching the string.
- What did not: the right-hand column's walls (open issue 16); the watcher's finish detection (fixed in `watch_print.sh`: it now stops when the 8898 status is completed/cancelled/ready or the printer leaves BUILDING, and only BUILDING + PAUSED counts as a pause); no photo before the plate was emptied; phone 2 down.
- Photos, recording, logs: `prints/records/photos/20261127_blue_housings_v2_plate2_finished.jpg`, `20261127_blue_housings_v2_plate2_rough_column.jpg`; recording 20261127-085102_25-blue-housings-v2-plate-2---blue-PETG-13 (OK, phone 1 only); watcher log `prints/records/watch_20261127-0851.log`.

# Changelog

Every change to the checklist is recorded here with the reason for it.

## 2026-11-21 — Orange PETG: failed vs clean settings side by side

- FILAMENTS.md: the orange PETG (9) note is now a table of the failed and the clean settings, marking the three that changed (240 °C, no brim, blended seam with a wipe), and what the failure looked like. PRINT-LOG.md: the failed row now describes the owner's close-up photo.
- Reason: so the next print with this spool starts from the settings that worked, and a future failure can be compared against them.

## 2026-11-21 — PETG: no brim on flat-faced small parts, blended seam

- README.md: step 25 ("Check every part touching the plate") no longer adds a brim to a small PETG part that sits on one whole, solid flat face. Step 23 ("Place the seam at the back") blends the seam and wipes at the end of each loop for PETG.
- FILAMENTS.md: note for orange PETG (9): 240 °C. PRINT-LOG.md: two keycap prints. IMPROVING.md: the lesson.
- Reason: the first orange PETG keycap (245 °C, 4 mm brim) had a lumpy first-layer edge; the reprint at 240 °C, with no brim and a blended seam, came out clean.

## 2026-11-21 — Every print goes through the recorder; 3D preview of the print file

- README.md: new rule in "Rules to know before starting": every print, from any computer, session or person, is sent to the recorder's printer address (192.168.68.10, port 8898), which passes it to the printer unchanged and keeps a 3D preview. Step 35 ("Send the print over the network") sends there, never straight to the printer, and checks the Home Assistant 3D Printer tab shows the file. The background notes describe the 3D preview of the file printing now (the print file, not the design).
- Reason: a print sent straight to the printer from another computer could not be shown in 3D: the printer cannot hand a file back, so the file has to pass through the recorder on the way in.

## 2026-11-21 — Halfway and finished phone notifications with a picture

- README.md: the recorder now sends the owner a phone notification with a phone 1 picture at halfway and when every print finishes, is cancelled or ends with an error, by itself for every print. Step 40 ("keep the cameras watched continuously") says the watcher notifies on start, problems and pauses, and the agent checks the halfway notification went out (and sends one itself if not). Step 43 ("Before anything is taken off the plate, take a picture") checks the finished notification went out. New practical note on how the notifications are sent.
- Reason: the owner asked for a notification with a picture at halfway and at the end of every build, not only when a watcher happens to be running.

## 2026-11-21 — One green light from the person at the printer

- README.md: the checklist is now run entirely by the agent (formerly "the sender"). The [SENDER], [AT PRINTER] and [BOTH] tags are gone. The person at the printer gives one green light per print, confirming four things: the named filament is loaded, the plate is clean, the nozzle is clean, and the printer is ready (nothing blowing on it, someone reachable). The green light list replaces the old person-at-printer steps for loading filament, checking the spool, washing the plate, glue stick, brushing the nozzle, removing strings and checking for drafts, and the "plate clear, nozzle clean, filament confirmed" message.
- New golden rule 6: the agent asks for nothing but the green light; anything that needs hands mid-print is an alert, not a step.
- Filament: the agent now chooses the spool from FILAMENTS.md and judges its storage from FILAMENTS.md and PRINT-LOG.md (a spool left on the printer counts as left out), instead of asking. The green light confirms the spool is loaded and has enough left.
- Watching the start (heating at 140 °C, purge line dryness, first layer) and stopping a bad start are now done by the agent on camera and over the network. The dryness check on camera looks for steam, bubbles or a rough, pitted line, since popping cannot be heard; the Moisture Table row now says so.
- The agent checks the nozzle tip on camera after it cools (head to the front, bed lowered) before sending.
- After the print, the agent clears the printer's finished screen and tells the person the print can be removed; removing it, clearing the plate and the final brush become part of the next green light. The step to put the spool back in a sealed bag is gone: a spool left on the printer is treated as left out in the Moisture Table.
- The recorder must be reachable before a print starts (it used to be agreed with the person whether to print without one). Prints are always sent over the network with leveling off; starting from the printer's screen is no longer a path.
- Multi-colour models print in one colour unless the owner asks for manual colour swaps.
- Steps renumbered from 64 to 47. IMPROVING.md (lessons and editing rules) and FILAMENTS.md updated to match.
- Reason: the owner wants the person at the printer to give one green light and nothing else; everything else should be done by the agent. Open issue 9 lists what the next prints must confirm.

## 2026-11-20 — Slow everything for small parts; watcher verdicts

- Step 24: on plates with small parts or print-in-place models with many small feet, every printing speed (not only outer walls and top surfaces) goes to about 100 mm/s or less, and acceleration to about 4000 mm/s².
- Step 54: an answer that mentions PROBLEM anywhere counts as a problem, even if it starts with OK; the sender keeps looking at the cameras every 5 minutes even while an automatic watcher runs.
- Reason: a print-in-place dragon failed at layer 4 to 7 (open issue 7). Inner walls at 300 mm/s and infill at 270 mm/s knocked its small feet loose, and the watcher's PROBLEM answers were read as OK because they began with "OK,".

## 2026-11-20 — No skirt

- Step 21 ("Do not add a skirt") replaces the rule to add a skirt of at least three loops. Steps 30 (file check), 51 (watch the first layer) and 59 (clear the plate) and the OrcaSlicer note no longer mention a skirt.
- Reason: the owner asked why every print has a border around it and decided it is not needed. The two purge lines and the backwards wipe in the start code (steps 19 and 20) already get the plastic flowing cleanly; the skirt was added before they existed.
- Check on the next print without a skirt that the first lines of the model come out full and clean. If they start thin or blobby, put a one-loop skirt back and note it here.

## 2026-11-20 — Filament list in the checklist

- New file FILAMENTS.md: every spool on hand, with the Material Table row to use, brand, colour, the box's temperature and drying values, and whether it is opened. Linked from "Rules to know before starting" and IMPROVING.md; step 61 ("Put opened filament back in a sealed bag") now also says to update it when a spool is first opened or used up.
- Reason: the owner wants anyone using the checklist to know what filament is available. The list used to live only on one computer.

## 2026-11-20 — Watcher stays quiet until plastic flows

- Step 54: an automatic watcher must not pause or alarm before plastic starts coming out.
- Reason: on the silk fractal star print the watcher read the empty plate during the bed check as a missing print and paused it twice in a row. No harm done, but the print had to be restarted.

## 2026-11-20 — Phone lights on for every print

- Background notes: the recorder now switches both phone lights on when a recording starts, keeps them on, and switches them off when it stops. Step 54 ("For the whole print, keep the cameras watched continuously"): both lights should be on for the whole print.
- Reason: the owner wants every print lit. On the 09:52 black PETG print a light switched on before the recording was switched off again when the previous recording stopped, so the print started in the dark.

## 2026-11-20 — Automatic watcher: bright pictures, readable answers

- Step 54: give an automatic watcher a picture bright enough to tell dark filament from the plate, and check early that every answer contains a fixed verdict word.
- Reason: during the overnight black PETG print the watcher read dark night pictures as "empty plate" or "finished", and about 1 in 7 of its answers were free text with no verdict word, so a real problem could have been missed. Fixed with the phone's night mode and by forcing plain answers.

## 2026-11-20 — Every file has a thumbnail

- File check (step 30) now requires a 140 × 110 preview picture; practical note explains how to add one when slicing from the command line.
- Reason: the overnight print was sliced from the command line and showed no picture on the printer's screen.

## 2026-11-20 — Quick bed measurement

- Start code: `BED_MESH_CALIBRATE PROBE_COUNT=3,3` (9 points, about half a minute) instead of the full grid (about 3 minutes).
- Reason: the full grid was slow for a 220 mm bed. Not yet proven; tracked in open issue 3.

## 2026-11-20 — Command-line slicing and print time

- Practical notes: OrcaSlicer's command line ignores the plate type (wrong bed temperature) and can let the skirt or brim run off the bed; check the file's extents. Print time is limited by the hotend's melt rate, not the speed button.
- Reason: both found while preparing the overnight PETG plate.

## 2026-11-20 — Continuous camera watching

- Camera-watching step: an automatic watcher looks at the camera about every 10 seconds and alerts the sender immediately; every 5 minutes by the sender is now only the fallback.
- Reason: problems (lifting parts, blobs) grow in seconds; a 5-minute gap is too long. First used on the black PETG pressure advance test.

## 2026-11-20 — Lessons from the first PETG run

- Filament step now says to load the agreed filament if it is not already in the printer.
- Glue stick step: cover everything the print and purge touch; colour-changing glue helps confirm it.
- Practical notes: never move filament below printing temperature (error E0006); homing does not touch the plate; how to clean the nozzle without hands (purge and wipe in a corner); move things towards the camera to see them clearly.
- Reason: all four came up during the first PETG run.

## 2026-11-20 — Split printing from improving

- README.md now holds only what a person or agent needs to print. Testing changes, editing rules and the lessons learned moved to the new IMPROVING.md, with a short procedure for handling a failed print. Golden rule 5 and the last step point to it.
- Reason: the print checklist was mixing instructions for printing with instructions for maintaining the checklist.

## 2026-11-20 — Process lessons from the first day

- Golden rules 4 (no defect is cosmetic) and 5 (stop after any failure until the root cause is fixed in the checklist).
- Read PRINT-LOG.md before step 1; step 63 now adds a row to it. New PRINT-LOG.md with every print so far.
- Sender looks at the cameras before asking the person; every question to the person must be yes/no or pick-one.
- Step 30 checks every setting in the sliced file against the Material Table and the steps, not only the start.
- New sections: Testing and improving (real prints under about 1 hour, one change at a time, issues closed only by a print), Doing it on this printer (practical notes for a new sender), Changing this checklist.
- Reason: these process mistakes made problems last longer than the printer faults themselves.

## 2026-11-20 — Pressure advance 0.04 for PLA Basic

- Material Table: new Pressure advance column; PLA Basic 0.04 from a pressure advance pattern test; other materials marked as not tested.
- Rule: use the table value every print; untested materials need a pressure advance test first.
- Reason: the default 0.025 left a blob at the start of every line.

## 2026-11-20 — Root cause of parts knocked loose, and three fixes

- Bed temperature held for the whole print (Material Table and rule under it).
- Step 27: brim on any part under about 30 × 30 mm or taller than it is wide; mouse ears when the designer forbids a brim.
- New step 24: outer walls and top surfaces at about 100 mm/s on small parts and calibration tests. Steps from 24 on are renumbered and cross-references updated.
- Reason: camera recording of run 4 showed a small tile lifting, then being dragged by the nozzle.

## 2026-11-20 — Run 4 stopped: parts knocked loose

- New open issue 4 with the camera evidence, settings in use and the next tests.

## 2026-11-19 — Camera checks every 5 minutes

- Step 53: look at both camera pictures at least every 5 minutes for the whole print; status alone does not count.
- Reason: "regularly" was too vague, and only the printer's status was being watched.

## 2026-11-19 — Seam blobs described in detail

- Open issue 1 updated with run 4 evidence: a blob at the seam corner of every part, with the exact settings in use and the order of fixes to test.

## 2026-11-19 — Run 4 observations

- Confirmed: wiping backwards over the purge line keeps the nozzle clean on the way to the print.
- Open issue 2 updated: an ooze string still forms while heating and lands as a curl at the start of the purge line; a larger pull-back is the next test.

## 2026-11-19 — Start code would not slice in OrcaSlicer

- Removed square brackets from the comments in `start-code.gcode`; the commands are unchanged.
- Reason: OrcaSlicer treats any square-bracketed text, even in comments, as a placeholder and refused to slice the file as published.

## 2026-11-19 — Moisture Table covers every storage time

- Added rows: PLA and Silk PLA left out less than 1 week, and PETG left out up to 3 days: print normally.
- Reason: a spool left out for two days matched no row in the table.

## 2026-11-19 — Keep test results until they are read

- New step 56: picture of the finished print before anything leaves the plate; test parts are kept until their result is written into the checklist. Step 61 asks for a photo of every test print.
- Reason: the third flow test's tiles were lost before the result was read.

## 2026-11-19 — Cameras and print recording

- Rules section: two phones now watch the printer, and a recorder on the home network records them only while a print runs (kept 24 hours; recordings marked failed are kept until deleted). Its page shows both cameras live and has buttons to start and stop recording, switch the phone lights and refocus.
- New step 46: start the recording before sending, with the estimated print time (it stops by itself one hour after the estimate as a safety net).
- New step 55: stop the recording as soon as the print ends, marked finished OK, failed or cancelled. Step 52 (stopping a bad first layer) now points to it.
- Step 53: the sender checks the camera pictures as well as the printer status, and may switch the phone lights on or refocus to see better; the best settings are still being tested.
- Steps from the old 46 onward are renumbered (+1, and +2 from the old 54); the purge-line dryness check is now step 49.
- Reason: when a print fails, there should be a video of how it failed, without recording an idle printer.

## 2026-11-19 — Open issues list

- Added OPEN-ISSUES.md and a rule to read it before step 1. Reason: problems seen during a print must not be forgotten before they are fixed.
- Confirmed on the third run: measuring the bed at 140 °C at the start of the print gave a flat, even first layer (the earlier see-through skirt is fixed).

## 2026-11-19 — Wipe over the purge line, not onto bare plate

- `start-code.gcode` and step 20: after the purge lines, wipe backwards over the purge line (X 55 to 35), then lift 2 mm (was: wipe onward to X 75 onto bare plate, lift 1 mm).
- Reason: a small curl of filament between the purge line and the print got onto the outside of the nozzle. Not yet proven by a print; to be confirmed on the next run.

## 2026-11-19 — Lessons from the third checklist run

- Nozzle cleaning: a thickly folded paper towel is allowed when there is no brass brush. Reason: no brush was available.
- PLA and Silk PLA cleaning temperature lowered from 170 °C to 160 °C. Reason: a string formed at 170 °C.
- The sender must read step numbers and wording from the current checklist. Reason: steps were mislabelled from memory.
- Material Table shows first-layer and later-layer bed temperatures. Reason: the bed drops after the first layer and that looked like an error.

## 2026-11-19 — Start code made reproducible for any sender

- Added `start-code.gcode`: the tested clean-start sequence. Step 13 says to paste it in exactly, changing only the two temperature placeholders.
- Steps 14–20 now describe the start code precisely (temperatures, positions, heights, amounts), so it can be rebuilt if the file is unavailable.
- New step 29: open the sliced file and verify the start before sending.
- New step 6: never re-print a stored file unless it was prepared with this checklist.
- Rules section: plate coordinates, the bed-measuring command, and where the start code lives.
- Reason: plain-English steps alone let different agents build different start sequences; the printer's firmware cannot hold the routine (community firmware does not support this printer version yet).

## 2026-11-19 — First published version

- Three golden rules: every step every print, nothing assumed or carried over, strictly in order.
- 57 numbered steps in eight stages, each labelled [SENDER], [AT PRINTER] or [BOTH].
- Clean start of print (steps 12–18): bed measured with the nozzle at or below 140 °C, filament pulled back before heating, heating while raised, angled approach, purge and wipe. Reason: ooze being pressed onto the nozzle during leveling and at the purge spot ruined the first layers of earlier prints.
- Nozzle cleaning at a material-specific cleaning temperature instead of printing temperature. Reason: a nozzle at printing temperature keeps oozing, so it cannot be cleaned.
- Dryness checked on the purge line; Moisture Table added with damp-filament adjustments.
- Material Table with nozzle, first-layer, cleaning and bed temperatures.

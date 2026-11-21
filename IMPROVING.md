# Improving the checklist

The print checklist (README.md) is for anyone printing. This file is for whoever improves it: how prints are used to test changes, how the checklist is edited safely, and why its rules exist.

The supporting files:
- **OPEN-ISSUES.md** — problems seen and not yet proven fixed.
- **PRINT-LOG.md** — one row per print, with what changed and the result.
- **CHANGELOG.md** — every change to the checklist and the reason for it.
- **start-code.gcode** — the tested start of every print.
- **FILAMENTS.md** — every spool on hand; updated whenever a spool is bought, opened or used up.

## When a print fails or shows a defect
1. Write it in OPEN-ISSUES.md straight away: what it looked like, where, the settings in use, and photos or recording.
2. Find the root cause from the evidence (camera recording, the sliced file, the printer's temperatures), not from guesses. Compare with the last print that did not have the problem.
3. Change the checklist (or the start code) so the cause cannot happen again, and record the change in CHANGELOG.md.
4. Prove it with the next print. Only then remove the issue from OPEN-ISSUES.md.

## Testing changes

- **Every print is a real object.** Tests are done through fun or useful prints of under about 1 hour, chosen together with the owner, that exercise whatever is being tested (small footprints, moving joints, overhangs, a new material). Pure calibration shapes are used only when nothing else can measure the value.
- **One change at a time.** Change as few things as possible between prints, and record in PRINT-LOG.md exactly what changed, so a better or worse result can be traced to its cause.
- **An open issue is closed only by a print.** A fix counts as proven only when a print made with it shows the problem is gone. Until then the issue stays in OPEN-ISSUES.md.

## Editing the checklist safely

- Get the latest version before editing; other people and agents also edit it.
- Refer to other steps by their wording as well as their number, because numbers change when steps are added.
- After editing, re-read the whole change before saving it: check step numbers, cross-references between steps, and that tables were not altered by accident.
- Record every change in CHANGELOG.md with the reason, and move any finished item out of OPEN-ISSUES.md only when a print has proven it.
- Keep README.md plain English, with nothing tied to one computer, one AI or one slicer, except in its practical notes section.
- Keep README.md only about printing; anything about testing or changing the checklist belongs in this file.
- Keep the person at the printer's part to the single green light. A new check that needs eyes or hands goes into the green light list in README.md, not into a new step for the person; anything the cameras, the printer's status or the files can answer is done by the agent.

## Lessons learned (why the checklist's rules exist)

- Early prints failed because the printer heated to full temperature, oozed, then pressed the oozing nozzle onto the plate to measure it. The ooze smeared the tip and spoiled the bed measurement, so the first layers came out wrong.
- Files sliced for a different printer brand gave wrong temperatures, speeds and start routines.
- Silk filament, small parts and fast travel moves led to parts being knocked loose and turning into a tangled mess.
- Small hooks, blobs or hairs at the start of each shape are a warning sign of ooze, not a cosmetic detail. Never ignore them.
- An AI assistant once prepared a print file before confirming which filament was loaded, because it "remembered" the filament from an earlier print. Temperature, cooling, bed heat and flow all depend on the exact filament, so that file was invalid. This is why the golden rules exist: nothing is carried over from a previous print, steps are never done out of order, and any file sliced before step 7 ("Choose the filament") must be thrown away and sliced again, as must a file sliced for a different spool than the green light confirms.
- Cleaning the nozzle at printing temperature does not work: a hot nozzle keeps oozing, so the tip is dirty again straight away. Clean it at the lower cleaning temperature instead, and check for damp filament on the purge line.
- A start sequence once heated the nozzle to printing temperature directly above the purge spot and then lowered straight down. The drip that formed while heating was pushed up onto the nozzle and smeared across the plate. This is why the filament is pulled back before heating and the nozzle comes down at an angle.
- When the printer's built-in leveling was switched off and nothing else measured the bed, the first layer came out uneven: almost see-through in places and normal in others. The bed must still be measured every print, just with a clean nozzle at or below 140 °C.
- During a checklist run the sender labelled steps with the wrong numbers because it numbered them from memory after the checklist had changed. Step numbers and wording must always be read from the current checklist.
- A tiny string formed while cleaning PLA at 170 °C, so the PLA cleaning temperature was lowered to 160 °C.
- The start code once ended by wiping onward onto bare plate. The ooze string had nothing to stick to, curled up and wrapped onto the outside of the nozzle on the way to the print. The wipe now goes backwards over the fresh purge line and lifts higher.
- The parts of a flow calibration print were removed and lost before their result was read, so the whole test had to be repeated. A picture is now taken before anything leaves the plate, and test parts are kept until their result is written down.
- The Moisture Table once had no row for PLA left out for less than a week, so a spool left out for two days could not be classified. Every storage time now has a row.
- The start code file once had square brackets inside its instruction comments. OrcaSlicer read them as placeholders and refused to slice. Comments in the start code must never contain square brackets.
- During a print the sender only watched the printer's status, which cannot see what is on the plate, and looked at the cameras only when asked. The camera check is now a fixed 5-minute interval.
- A flow calibration plate was ruined at layer 8 of 10: on camera, a small tile lifted at one edge, the nozzle picked up a blob from it and dragged several tiles across the plate. Causes found: the bed dropped from 55 to 50 °C after the first layer, the small tiles had no brim, and top layers were printed at 200 mm per second. That is why the bed now stays at one temperature, small parts always get a brim, and small parts are printed more slowly.
- Pressure advance was left at the slicer's default (0.025), and every part had a blob where each line started. A pressure advance test showed the blobs disappear from about 0.035 upward; 0.04 is now in the Material Table.
- During the first day, defects were called cosmetic, failures were written down and then printing continued, the camera was looked at only when asked, and several things were changed in one print. Each made problems last longer. That is why there are now golden rules 4 and 5, golden rule 6 (one green light, everything else from the cameras), the full file check in step 28 ("Open the sliced file as text"), and the testing rules.
- The first orange PETG keycap came out with a lumpy edge where its 4 mm brim met the part, at 245 °C. Reprinted at 240 °C with no brim, a blended seam and a wipe at the end of each loop, it came out clean. That is why step 25 ("Check every part touching the plate") skips the brim for small PETG parts on a whole flat face, and step 23 ("Place the seam at the back") blends the seam for PETG.
- A print-in-place dragon had its tiny feet knocked loose because only the outer walls had been slowed; the inner walls and infill still ran at 270 to 300 mm/s. The camera watcher saw it and said so, but its answers began with "OK," and the script read only that first word, and the sender had stopped looking for itself. That is why step 22 ("slow every printing speed") slows every speed and step 40 ("keep the cameras watched continuously") counts any mention of a problem and keeps the 5-minute look even with a watcher.


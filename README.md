# Print Checklist — Flashforge Adventurer 5M

Every print on this printer follows this list, every time, on any computer, with any slicer.

The checklist is run by **the agent**: whoever prepares the file and runs the printer, usually an AI assistant (a person at a computer can do the same job). The agent does every step below. **The person at the printer does one thing only: give the green light** (see "The green light" below). They are never handed steps, questions or checks beyond that.

This file is only for printing. How the checklist is tested, changed and improved is in IMPROVING.md.

## Start here: how to use this printer

For anyone printing on this printer, person or AI, on any computer. Everything below works from the home network with no login.

**The addresses**

| What | Address |
|---|---|
| The printer: send prints and commands here, always | **192.168.68.52** (network port 8898 for files and pause/cancel, 8899 for status and G-code). Serial number SNMQLF9305680; leave the "check code" empty. |
| In a slicer's printer search | pick **"AD5M - read checklist first"** (that is 192.168.68.52). Never pick "AD5M direct - no 3D preview" (192.168.68.152): it is the same printer, but prints sent there get no 3D view. |
| Recorder (cameras, recordings) | http://192.168.68.10:8790 |
| Watching a print | Home Assistant, "3D Printer" tab: status, both cameras, and the print in 3D with a layer slider |

**Printing, in short.** The numbered steps below are the real list; this is what they come to.
1. Before anything else, read OPEN-ISSUES.md and the last rows of PRINT-LOG.md, then the chosen spool's note in FILAMENTS.md and its TIMELINE.md entries.
2. Slice with the settings this checklist gives (start code from `start-code.gcode`, temperatures from the Material Table).
3. Ask the person at the printer for the green light. That is the only thing they are asked.
4. Start the recording on the recorder page (button "Start recording", with the model's name and the expected hours).
5. Send the file to 192.168.68.52 with "print now" on and "leveling before print" off. Do not use the slicer's own "send to printer" button: it switches the printer's own leveling on (see the practical notes). For example, from a terminal:
   `curl -H "Expect:" -H "serialNumber: SNMQLF9305680" -H "checkCode: " -H "fileSize: <bytes>" -H "printNow: true" -H "levelingBeforePrint: false" -F "gcodeFile=@file.gcode" http://192.168.68.52:8898/uploadGcode`
6. The 3D view appears on the Home Assistant tab by itself, and phone notifications go out by themselves when the print starts, at halfway and when it ends. Watch the first layer on camera.
7. When it ends: take a picture before anything comes off the plate, stop the recording on the recorder page and mark how it went, then write the print down (TIMELINE.md, PRINT-LOG.md, FILAMENTS.md, OPEN-ISSUES.md for anything that went wrong).

**Phone notifications to the owner: automatic, three for every print.** The owner gets a push (through ntfy, each with a picture from phone 1; tapping it opens the Home Assistant "3D Printer" tab):
1. **Started**: within about a minute of the print starting. It also says whether the recording is on and whether the print has a 3D view.
2. **Halfway**: at 50 %, with the expected finish time.
3. **Finished**, **Cancelled** or **Ended with an error**: when the print stops, however it stops.

The recorder sends these by reading the printer itself, so they go out for every print, from any computer, person or slicer, with or without this checklist, and even for a print started from a USB stick or the printer's screen. Nobody has to switch them on. Whoever runs the print still checks each one arrived (steps 35, 40 and 43 below) and sends it themselves if it did not.

**Avoid:** printing from a USB stick or starting a file from the printer's own screen. It works, but there is no 3D view and no copy of the file, so settings get lost; if it has to be done, write the print down anyway. If the printer cannot be reached, check the computer is on the home Wi-Fi (an address starting 192.168.68 to 192.168.71), not a phone hotspot.

## The golden rules

1. **Every step, every print.** This is a pre-flight checklist. Every single step below must be done again for every single print, even if the print before it was five minutes ago.
2. **Nothing is assumed or carried over.** Answers, checks and confirmations from a previous print, an earlier conversation, a note, a memory or "what you were told last time" do not count. The green light is given fresh for every print, and every check is done again now.
3. **Strictly in order.** Do the steps top to bottom. Never do a later step before an earlier one is finished, even if it seems harmless or faster. Example: never open the slicer before the filament is chosen, because the filament decides the settings.
4. **No defect is cosmetic.** Every blob, string, hook, gap, lifted corner or rough surface that is seen is written down in OPEN-ISSUES.md, with what it looked like and the settings in use. Small defects are early warnings of bigger failures.
5. **Stop after any failure.** If a print fails or shows a new defect, the next print may only be one that helps find the cause. Normal printing resumes only when the root cause is found and this checklist has been changed to prevent it, following IMPROVING.md. Writing the problem down is not the same as fixing it.
6. **One green light, nothing more.** The agent asks the person at the printer for exactly one thing per print: the green light. Everything else it finds out itself, from the cameras, the printer's status, the sliced file and the files in this repository. If something can only be fixed by hand (a tangle, a jam, a part knocked loose, a printer that has dropped off the network), the agent stops or pauses the print if it can and tells the person what happened; that is an alert, not a step.
7. **Every print is written down, the good and the bad.** Every print gets a full entry in TIMELINE.md and a row in PRINT-LOG.md the same day. That includes prints that are cancelled or fail in the first minute, prints from any computer, session or person, and prints started from the printer's own screen. What worked is written where the next print will find it: the spool's note in FILAMENTS.md and, when it applies to every print, this checklist. What went wrong goes into OPEN-ISSUES.md. A print that is not written down teaches nothing.

Before step 1, read OPEN-ISSUES.md and the last few rows of PRINT-LOG.md in this repository, so you know what is still being worked on and how recent prints went. When the filament is chosen (step 8), also read that spool's note in FILAMENTS.md and its entries in TIMELINE.md, and start from the settings that last printed well with it.

If you find you did a step out of order, or relied on an old answer, go back to that step, redo it and everything after it, and discard anything prepared in between.

Always read the step number and wording from the current version of this checklist; never number or paraphrase steps from memory.

---

## The green light

When the agent is ready (step 32), it sends the person at the printer one message: the filament to load (material, brand and colour, by its number in FILAMENTS.md), whether the nozzle needs brushing and if so the cleaning temperature, whether glue stick is needed, and the estimated print time and filament weight. The person gets everything below ready, in this order, then replies **"green light"**:

1. **Filament:** the named spool is loaded in the printer, with clean plastic of the new colour pushed through after any change; it turns freely with no tangles or snags, and clearly has enough left for the job (the agent gives the weight).
2. **Plate:** old prints, purge lines and strings removed; plate washed with warm water and dish soap, rinsed and fully dry; back flat on its alignment pins without touching the printing surface. For PETG only: a thin even layer of glue stick wherever the print and the purge line will touch.
3. **Nozzle (only when the agent asks for brushing):** brushed with a brass brush while the printer's screen shows the nozzle at or below the cleaning temperature the agent gave, until no old plastic, burnt residue or blobs remain; any hanging string pulled off with tweezers. Never clean it hotter. When the camera showed a clean tip, the agent does not ask for brushing and the nozzle is left alone.
4. **Ready:** nothing blowing on the printer (fan, open window, air conditioner) and nothing nearby that can fall onto the bed; someone can be reached until the print finishes.

"Green light" means all four are true right now. If anything differs (for example a different spool is loaded, or a spool was stored sealed rather than left on the printer), the person says so instead, and the agent goes back to the step that depends on it.

---

## Rules to know before starting

- This is a Flashforge Adventurer 5M: one 0.4 mm nozzle, 220 × 220 × 220 mm build area, no built-in camera, no automatic colour changer.
- Two phones watch the printer: phone 1 at the front and phone 2 at the side. A recorder on the home network records them, but only while a print is running. Its page is http://192.168.68.10:8790 on the home network: it shows both cameras live, has buttons to start and stop recording and to switch each phone's light on or off or refocus it, and lists past recordings. When a recording starts, the recorder switches both phone lights on and keeps them on until the recording stops (it switches a light back on if it goes off, for example after a phone app restart); a light someone switches off on purpose during a print stays off for that print. When the recording stops, both lights go off. For every print, whoever started it, the recorder also sends the owner a phone notification with a picture from phone 1 when the print reaches halfway, and again when it finishes (or is cancelled or ends with an error); nobody has to start this. Within about a minute of any print starting it also sends a "Started" notification that says whether the recording is on and whether the print has a 3D preview; "NO 3D preview" means the print did not come through the printer's usual address (for example it was started from a USB stick or the printer's own screen). The same live view is on the Home Assistant dashboard, in the "3D Printer" tab, which also shows the file printing now as a 3D preview: exactly what the print file lays down on the plate (not the design), coloured by part of the print, with a layer slider that follows the print while it runs.
- The printer's address is 192.168.68.52, the same for every computer, person and slicer, and a network search finds it there under its usual name. Every print sent to it gets a 3D preview on the Home Assistant "3D Printer" tab automatically; nobody has to do anything special. (That address is answered by the recorder, which passes everything on to the printer unchanged and keeps a copy of each print file for the preview. The printer itself sits behind it at another address and shows up in a network search as "AD5M direct - no 3D preview"; never pick that one.) Recordings are kept for 24 hours; a recording marked "failed" is kept until someone deletes it.
- It measures the bed by pressing the nozzle itself onto the plate, so anything stuck to the nozzle ruins the measurement and the first layer.
- A hot nozzle leaks plastic ("ooze"). Ooze on the nozzle during homing or bed measuring is the number one cause of failed prints on this printer.
- The nozzle must never be above 140 °C while the printer homes or measures the bed.
- The plate's coordinates run from -110 to +110 in both directions, with 0,0 at the centre. The front edge is Y = -110.
- This printer measures the bed with the command `BED_MESH_CALIBRATE`, which can be run from inside a print file.
- The tested start code lives next to this checklist, in the file `start-code.gcode` in this repository.
- Every spool on hand (material, brand, colour, whether it is opened, how it is stored) is listed in `FILAMENTS.md` in this repository. The agent chooses the filament from it; the green light confirms it is the one actually loaded.

---

## Stage 1 — Choosing what to print

1. Confirm the model fits inside 220 × 220 × 220 mm at the intended size.
2. Read the designer's notes for required settings, minimum size, supports, brim and plate type.
3. Do not scale a model below the designer's minimum size, especially one with moving joints.
4. Print multi-colour models in one colour. Manual colour swaps need someone at the printer mid-print, so only plan one if the owner asked for it.
5. Never use a file already sliced for a different printer, even if it says "ready to print"; get the original model file instead.
6. Never re-print a file already stored on the printer, from the screen or over the network, unless it was prepared with this checklist. If in doubt, slice it again.

## Stage 2 — Choosing the filament

7. Choose the filament for this print from FILAMENTS.md: material, brand and colour, by its number. Choose afresh for every print; never assume it is the same as last time. Do not open the slicer until this is chosen.
8. Check from FILAMENTS.md and PRINT-LOG.md how this spool has been stored since it was last used, and for how long. A spool that was on the printer for the last print counts as left out since that print, unless the person said otherwise with an earlier green light and FILAMENTS.md was updated. Use the Moisture Table at the bottom of this list to decide whether it can be printed as-is, printed with damp-filament adjustments, or must be dried first; if it must be dried, choose another spool. The definite dryness test comes later, when the purge line prints (step 37).

## Stage 3 — Preparing the file

9. Slice the model yourself, specifically for the Flashforge Adventurer 5M with a 0.4 mm nozzle.
10. Use the temperatures in the Material Table at the bottom of this list, not the slicer's defaults; choose the lowest temperature that still prints well. If step 8 placed the spool in the "lightly damp" row of the Moisture Table, also apply the damp-filament adjustments listed there.
11. Delete the slicer's own default start code for this printer completely, then paste in `start-code.gcode` from this repository exactly as written. Only replace the two temperature placeholders with your slicer's names for the first-layer bed temperature and first-layer nozzle temperature. Do not change anything else. If the file is unavailable, write a start code that does steps 12 to 18 exactly.
12. The start code keeps the nozzle at or below 140 °C while the bed heats to printing temperature, while the printer homes, and while it measures the bed.
13. The start code measures the bed every print with a quick 3 × 3 measurement (`BED_MESH_CALIBRATE PROBE_COUNT=3,3`, about half a minute), after homing, with the nozzle at 140 °C. The printer's built-in "level before print" must not be used, because it heats the nozzle to full temperature first. Without a bed measurement the first layer comes out uneven.
14. After measuring, the start code raises the nozzle to 10 mm and parks it next to the purge line, at X = 110, Y = -100 (not directly above the line).
15. Before heating to printing temperature, the start code pulls the filament back 1.5 mm, then heats the nozzle while it is still raised.
16. The start code never lowers the nozzle straight down where it was heated. It comes down at an angle to the start of the purge line (X = 95, Y = -110, height 0.3 mm), so any drip is left on the plate instead of being pushed onto the nozzle, then pushes the filament forward the same 1.5 mm.
17. The start code draws two purge lines along the front edge (Y = -110 and Y = -109.6, from X = 95 to X = -55, then back to X = 55), long enough that plastic flows smoothly and in the correct colour.
18. Right after the purge lines, the start code pulls the filament back 0.8 mm, wipes quickly backwards over the purge line it just drew (20 mm, from X = 55 to X = 35) so any ooze string sticks to that plastic, then lifts 2 mm before travelling to the print. It must never wipe onward onto bare plate.
19. Do not add a skirt (set it to zero loops). The purge lines and the wipe in steps 17 and 18 already get the plastic flowing cleanly before the nozzle reaches the model.
20. Print the first layer slowly, about 30 mm per second.
21. Cap travel moves at about 250 mm per second, so small parts do not get knocked loose.
22. When the plate holds small parts (any footprint under about 30 × 30 mm) or a calibration test, slow every printing speed (outer and inner walls, infill, gap fill and top surfaces) to about 100 mm per second or less, and acceleration to about 4000 mm/s². The same applies to print-in-place models with many small feet, claws or segments touching the plate. A fast nozzle pushes sideways on every small part it passes over; slowing only the outer walls is not enough.
23. Place the seam at the back of the model. For PETG, also blend the seam (a sloped or "scarf" seam) and wipe the nozzle along the wall at the end of each loop, so the seam does not leave a lump.
24. Place the model flat side down, near the centre of the plate.
25. Check every part touching the plate. Any part whose footprint is smaller than about 30 × 30 mm, or that is taller than it is wide, gets a brim about 4 mm wide. If the designer says no brim (for example a print-in-place model whose joints a brim would fuse), use small discs ("mouse ears") under the corners instead. Large parts with a big flat base need neither. Exception: a small PETG part that sits on one whole, solid flat face (for example a keycap printed top down) gets no brim. PETG grips the hot plate well enough, and a brim's edge leaves lumps on the face that will show.
26. Add supports only where the model truly needs them.
27. Step through the slicer's layer preview from the first layer up, looking for gaps, floating parts or anything strange.
28. Open the sliced file as text and check it before sending. The start: the first nozzle temperature command is 140 °C; `BED_MESH_CALIBRATE` appears after homing; nothing heats the nozzle above 140 °C before the bed has been measured; the wipe back over the purge line is present. The settings, each against the Material Table and the steps above: nozzle and first-layer temperatures, bed temperature (the same for the first layer and the rest), pressure advance, brim where step 25 needs one, first-layer, wall, top-surface and travel speeds, no skirt, and seam. The file must also contain a preview picture (thumbnail, 140 × 110) so the printer's screen shows what is printing; if it has none, add one before sending. Do not trust the slicer's settings screen; check the file itself. If any check fails, fix the slicer settings and slice again.
29. Note the estimated print time and filament weight.

## Stage 4 — Getting the green light

30. Check the printer is idle and ready, with no other job running or paused, and that it can be reached over the network.
31. Look at the nozzle tip on camera, with the nozzle below 140 °C: home the printer if needed, move the head to the front and lower the bed so the tip is in view of phone 1, refocus and take a close picture. If the tip is clean (bare metal, nothing stuck to it, no hanging string), it needs no brushing: leave the heater off. Only if something is on it, set the nozzle to the cleaning temperature for this material (see the Material Table), never to printing temperature, so it is ready for brushing.
32. Send the person at the printer the green light request described in "The green light" above: the filament (number, material, brand, colour), glue stick yes or no, brushing yes or no (with the cleaning temperature when yes), and the estimated print time and weight from step 29. Then wait. Do not send anything to the printer until the reply "green light" arrives for this print. If the reply says anything differs, go back to the step it affects (a different spool means step 7, and the file must be sliced again).
33. After the green light, if the nozzle was heated for brushing, switch the heater off and let it cool below 140 °C. Then check the tip is still clean on camera (again, even if it was clean at step 31: the person may have touched it): home the printer if needed, move the head to the front and lower the bed so the tip is in view of phone 1. If anything is stuck to the tip, the print does not start: tell the person what the camera shows and wait for a new green light.

## Stage 5 — Sending and watching the start

34. Start the recording on the recorder, giving the model's name and the estimated print time from step 29. Check that it now says it is recording and that both camera pictures show the printer. As a safety net it stops by itself one hour after the estimated time, so use the real estimate. If the recorder cannot be reached, do not start the print; tell the person and wait until it is back.
35. Send the print over the network to the printer, with "print now" on and "leveling before print" off for this print, and tell the person it is starting. Within about a minute, check that the "Started" notification was sent (the recorder's log shows it); if it was not, send the owner one yourself with a fresh picture.
36. While it heats and homes, check the printer's reported nozzle temperature stays at or below 140 °C while it homes and measures the bed, and only rises once the nozzle is raised next to the purge area. If it heats to full temperature early, stop the print.
37. Watch the purge line on camera: it should be smooth, unbroken and the right colour. This is also the dryness check: if the plastic steams, bubbles or comes out rough and pitted, stop the print, and mark the spool "dry before printing" in FILAMENTS.md.
38. Watch the purge line and the entire first layer on camera, about the first three to five minutes, with fresh pictures from both cameras at least every 30 seconds. A good first layer is flat, slightly squashed, with lines touching each other and stuck firmly to the plate.
39. Stop the print immediately if anything lifts, curls, drags, gets knocked loose, piles up in a lump, or the nozzle picks up a blob. Then go straight to step 42 and stop the recording, marked failed, and tell the person what the camera showed.

## Stage 6 — During the print

40. For the whole print, keep the cameras watched continuously: an automatic watcher (for example a second, low-cost AI assistant) looks at a fresh camera picture about every 10 seconds and alerts the agent the moment anything looks wrong; the agent then looks for itself. Whether or not an automatic watcher is running, the agent also takes fresh pictures from both cameras at least every 5 minutes and actually looks at them, as well as checking the printer's status: an automatic watcher can miss a failure. Watching the printer's status alone does not count: it cannot see spaghetti, lifting parts or blobs. Both phone lights should be on for the whole print; if a light is off, switch it on. If a picture is still too dark or blurry to judge the print, refocus that phone or try its night mode; which light and focus settings work best is still being tested, so note what helped in the print record (step 46). Dark filament on a dark plate at night can look like an empty or finished plate to an automatic watcher, so give it a picture bright enough to tell the print from the plate (light or night mode). The watcher must answer each picture with one fixed verdict word (OK, PROBLEM, FINISHED or CAMERA) that a script can read. The script must count an answer that mentions PROBLEM anywhere as a problem, even if it also says OK: watchers sometimes begin with OK and then describe a problem. At least once early in the print, read its log and make sure every answer contains one. The watcher notifies the owner's phone when it starts, and with a picture whenever it pauses the print or sees a problem. Once the print passes halfway, check that the halfway notification with a picture was sent; if it was not, send the owner one yourself with a fresh picture and the progress. The watcher must not pause the print, or raise an alarm, before plastic starts coming out: during heating and bed measuring the plate is empty by design, and a watcher that is not told this reads the empty plate as a failed or missing print.
41. If the print pauses, shows an error, the temperatures look wrong, or the pictures show anything lifting, stringing into a tangle or knocked loose, pause or stop the print over the network. If the printer cannot be reached over the network while a problem is visible, alert the person at once: only they can stop it.

## Stage 7 — After the print

42. As soon as the print finishes, is stopped or fails, stop the recording and mark it: finished OK, failed if anything went wrong, or cancelled if it was stopped for another reason. Never leave a recording running after the print. If a print marked OK turns out bad later, mark its recording failed within 24 hours so it is kept.
43. Before anything is taken off the plate, take a picture of the finished print from both cameras and keep it with the print record. Check that the finished notification with a picture was sent (the recorder's log shows it); if it was not, send one yourself with the picture. Raise the bed towards phone 1 for a closer look if needed.
44. Clear the printer's "print completed" screen over the network, and switch the nozzle heater off.
45. Tell the person the print is done, how it looks on camera, and that the plate can cool for a few minutes and then be flexed to release the print (never a scraper). If the print is a test or calibration whose result still has to be read, also tell them to keep every part until the result has been read and written into this checklist; this is information for them, not a step to confirm.
46. Write the print down (golden rule 7, "Every print is written down"):
    - **TIMELINE.md:** a full entry at the bottom, with the fields its template lists: when it started and ended, what was printed and the file, the spool, the exact settings (temperatures, bed, layer height, brim, seam, speeds, fan, profiles), what changed since the last print with this spool, what happened in order and who stopped it, the result, what worked, what did not, and where the photos, recording and logs are.
    - **PRINT-LOG.md:** one summary row.
    - **FILAMENTS.md:** the spool's note gets the settings that printed well with it, and any setting that caused a defect. Also update it if the spool's state changed (opened for the first time, used up, or now left out on the printer).
47. If anything went wrong, add it to OPEN-ISSUES.md, then find the cause and change this checklist as described in IMPROVING.md, so it never happens again. If something worked better than before (a temperature, a seam setting, no brim), write it into the spool's note and, if it applies to every print, into this checklist, so the next print starts from it.

---

## Material Table (starting values for this printer)

| Material | Nozzle | First layer nozzle | Cleaning temp | Bed (whole print) | Part cooling fan | Pressure advance | Notes |
|---|---|---|---|---|---|---|---|
| PLA (basic) | 205–210 °C | 215 °C | 160 °C (170 °C if residue will not soften) | 55 °C | Full | 0.04 (tested on PLA Basic, 2026-11-20) | Default choice; best for small or detailed parts. |
| Silk PLA | 210–215 °C | 220 °C | 160 °C (170 °C if residue will not soften) | 55 °C | Full | Not tested: run a pressure advance test first | Print slower; shiny but weaker; expect some stringing. |
| PETG | 235–240 °C | 240 °C | 190 °C | 75 °C | 30–50% | Not tested: run a pressure advance test first | Glue stick on the plate; strong and heat-resistant. |

Use the pressure advance value from this table for every print; without it, every line starts with a blob. A material with no tested value must have a pressure advance test before its first real print.

Keep the bed at the same temperature for the whole print. Do not let the slicer lower it after the first layer: parts lose grip exactly when they are tallest.

When a material is tested and better values are found, update this table.

---

## Moisture Table (how to treat a spool based on how it was stored)

| Material | How it was stored | What to do |
|---|---|---|
| Any | Sealed in a bag with desiccant | Print normally. |
| PLA or Silk PLA | Left out less than 1 week | Print normally. |
| PETG | Left out up to 3 days | Print normally. |
| PLA or Silk PLA | Left out 1 to 4 weeks | "Lightly damp": print with damp-filament adjustments (below). |
| PLA or Silk PLA | Left out more than 4 weeks | Dry before printing. |
| PETG | Left out more than 3 days | Dry before printing. |
| Any | Steams, bubbles or comes out rough and pitted on the purge line (step 37) | Dry before printing, no matter how it was stored. |

**Damp-filament adjustments:** lower the nozzle temperature by about 5 °C, increase retraction by about 0.2 mm, and turn on "avoid crossing walls" (or the slicer's equivalent) so travel moves stay over the part. These reduce stringing and ooze but do not remove the moisture.

**How to dry a spool:** a filament dryer, a food dehydrator, or an oven that can hold a low temperature accurately: about 45–50 °C for PLA and Silk PLA, about 60–65 °C for PETG, for 4–6 hours. Afterwards, store it sealed with desiccant.

---

## Doing it on this printer (practical notes for a new agent)

- **Prints nobody wrote down:** list the recorder's recordings; each has its start and end time and how it ended. Compare with TIMELINE.md and add any that are missing (golden rule 7).
- **Finding the printer:** it is on the home Wi-Fi at 192.168.68.52 and calls itself "AD5M - read checklist first" in network discovery. A second entry, "AD5M direct - no 3D preview", is the printer itself behind the recorder; do not use it. Its serial number is shown in its discovery reply and on its screen.
- **Sending without the printer's own leveling:** OrcaSlicer's built-in "send to Flashforge" turned the printer's own leveling on in testing, which breaks step 13 (nozzle at or below 140 °C while the bed is measured). Send through the printer's network interface instead with "print now" on and "leveling before print" off.
- **Cameras:** two phones watch the printer, one at the front and one at the side. A recorder on the home network records them while a print runs and shows a live view at the address given in "Rules to know before starting".
- **Phone notifications:** sent through ntfy to the owner's topic, each with a phone 1 picture; tapping one opens the 3D Printer tab in Home Assistant. The recorder sends the halfway and finished ones by itself (it reads the printer's progress every 30 seconds) and writes each one to its log; the camera watcher sends the started, problem and pause ones.
- **OrcaSlicer quirk:** square brackets in start-code comments are read as placeholders and stop slicing.
- **OrcaSlicer from the command line:** it ignores the plate type and uses its first one (Cool Plate), which can set the wrong bed temperature; set the same bed temperature for every plate type in the filament settings. An exit with an error can still write a file, often because a brim runs off the 220 mm bed when many parts are arranged; check that nothing in the file goes past ±110 mm before sending.
- **Thumbnail:** OrcaSlicer's window adds a 140 × 110 preview picture to every file, but its command line does not (it cannot draw without a screen). For a file without one, add a block right after the file's header block, in this form: a line `; THUMBNAIL_BLOCK_START`, a line `; thumbnail begin 140x110 N` (N is the number of base64 characters), the base64 text of a 140 × 110 PNG picture of the plate split into lines that each start with `; `, then `; thumbnail end` and `; THUMBNAIL_BLOCK_END`.
- **Print time is set by how much plastic there is:** the hotend can melt only about 12–18 mm³ per second of PETG, so the printer's speed button cannot make a heavy part print much faster. To save time, use less plastic (thinner walls, less infill) or split the plate.
- **Planned colour swap (only when the owner asked for one):** proven on 2026-11-24 for the pause itself: `M25` in the file pauses the print; the printer switches the nozzle heater off when it pauses (the bed stays on) and kept its position through a 79-minute wait, so the file must bring the nozzle back to temperature after resume. Start the recording with the expected wait added to the estimate (open issue 12). both spools must be the same material, because PLA laid on PETG (or the other way round) barely sticks and peels off. Print every part together up to the height where the colour changes, so one swap covers the whole plate. At that height the file lifts the nozzle well above the parts, parks it at the front over the empty strip in front of the plate, and pauses. The person unloads, loads the new colour until it runs clean, pulls the dribble off the nozzle with tweezers and presses resume; the pause alert tells them this. After resuming, the file brings the bed and nozzle back to temperature, purges the new colour on top of a plain block printed for that purpose on the plate, wipes across it, and then prints the new colour one part at a time, travelling high between parts, so it never strings from part to part. The green light names both spools. Before sending, simulate the file: the nozzle never goes below plastic already printed, every part of the new colour sits on its part, and the pause comes after the last line of the first colour.
- **Flush logo on a flat face (face down):** for a logo level with a flat face (keycaps), print the part face down and make the logo one first-layer-thick inlay: the logo colour is loaded at the start and lays only the letters as the first layer, then the file pauses, and after the swap the body colour purges on a fresh line in front of the parts and fills round the letters. Turn the slicer's first-layer shrink (elephant foot compensation) off, or the letters print thin with a gap round them. The inlay must be exactly one layer: the body's first layer is printed beside the letters, and taller letters would be scraped. The start code's wipe retract would leave each colour's first line thin on the visible face, so the file pushes the filament back that 0.8 mm at the first line of each colour. The first layer is the face everyone sees, so slice it for looks: variable-width walls (Arachne) with gap fill everywhere, one wall on the first layer and then straight parallel lines, letters no thinner than two lines, and the letter layer a hair (0.05 mm) wider than its pocket. Before printing, draw the face from the G-code (`designs/keyclicker/face_sim.py`) and look for breaks. Tried once (2026-11-24: breaks in thin letters and a patchwork face from the default settings); judge the face in hand before printing many.
- **Moving filament:** never push or pull filament unless the nozzle is at printing temperature, and read the temperature first. Below about 170 °C the printer refuses and goes into an error state (seen as E0006).
- **After a print finishes:** the printer stays on its "print completed" screen and refuses a new job ("printer is busy") until that is cleared, either by pressing the button on its screen or, over the network, with the "clear platform" command of its control interface.
- **Homing:** homing lowers the bed away from the nozzle and does not touch the plate, so it is safe with a dirty nozzle. Moves are ignored until the printer has been homed (for example after loading filament).
- **Cleaning the nozzle without hands:** heat it, purge a small blob in a plate corner outside the print and outside the bed-measuring area, drag the nozzle through the blob so any string sticks to it, pull the filament back about 2 mm while still hot, lift, and let it cool. The blob must then be removed before the print.
- **Seeing clearly on camera:** when something cannot be seen clearly, the agent moves it towards the camera: move the head to the front and lower the bed for the nozzle, raise the bed for the plate. Do this only when no print is running, or during a paused print move the head sideways only (never the bed), then resume.
- In one session the agent tried to pull filament back while the nozzle had cooled to 48 °C, which put the printer into an error state; the filament agreed for a print was never formally loaded because no step said so; and glue stick coverage could not be confirmed on camera. Each now has a step or a practical note.

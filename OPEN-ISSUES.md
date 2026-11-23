# Open issues

Problems that have been seen but not yet fixed. When one is fixed, move the fix into the checklist (README.md), note it in CHANGELOG.md, and delete it from this list.

## 1. Blob at the seam corner of every part
- **Seen (runs 3 and 4):** a small ragged blob at the same corner of every flow tile, on the back edge where each layer starts and ends (the seam, placed at the back). Visible on top surfaces, not only the first layer.
- **Settings in use when seen:** pressure advance 0.025 (default, untuned), retraction 0.8 mm, z-hop 0.4 mm, wipe on, nozzle 210 °C (215 °C first layer).
- **Likely causes, most likely first:** pressure advance not tuned for this printer and filament; retraction and push-back amounts not tuned; the nozzle lowering (z-hop) onto the seam point; nozzle slightly hot.
- **Pressure advance test done (2026-11-20):** blobs at line starts visible from 0 to about 0.025 and gone from about 0.035; 0.04 chosen and added to the Material Table.
- **Next step:** confirm on the next print that the seam blobs are gone at 0.04. If some remain, run a retraction test, then try a hidden seam option (for example a scarf seam).

## 2. Ooze string while heating lands at the start of the purge line
- **Seen (run 4, on camera):** while the nozzle heats to printing temperature (raised, front right), a thin string still oozes out despite the 1.5 mm pull-back. When the nozzle comes down it is laid as a small curl at the start of the purge line that does not stick for a moment.
- **Confirmed fixed:** the backwards wipe over the purge line keeps the nozzle clean; no curl reached the nozzle or the print.
- **Next step:** test a larger pull-back before heating (about 2.5 mm, pushed back by the same amount before the purge). Only change the start code if the curl gets smaller and nothing else gets worse.

- 2026-11-23: the cold-nozzle check before the clicker test showed a ~4 cm orange string hanging from the tip after cooling from the 190 °C cleaning temperature. The owner chose to start without pulling it off (print cancelled for another reason before the purge, so the effect is unknown).

- 2026-11-23 (key clicker test v2): fine strings between two small parts 3 mm apart and small ooze curls flicked onto the plate during the print, at 240 °C with the clean orange settings. Parts not affected. A string also hung from the tip again after cooling. Next: try 235 °C or a little more retraction on two-part plates, and space small parts further apart.

- 2026-11-23 (key clicker v3): 235 °C, 1.0 mm retraction and avoid crossing walls did not reduce the stringing; strings at the housing's keyring tab and between the parts, curls on the plate. Cause found in the G-code: a lone + post on a one-line ring footprint (knocked loose, became spaghetti) and two parts printed together (hops between them every layer). Not the spool. Next print: snap-off column under the post, one part at a time, clean settings (240 °C, 0.8 mm).

## 3. Bed measuring takes about 3 minutes every print (changed, to confirm)
- **Seen:** measuring the whole bed at every print is reliable but slow.
- **Change made (2026-11-20):** start code now measures a 3 × 3 grid instead of the full grid, at the owner's request.
- **Next step:** confirm on the next print that it takes well under a minute and the first layer is still even across the whole plate. If corners come out thin or thick, try a 4 × 4 grid.

## 4. Parts knocked loose near the top of a print
- **Root cause (run 4, from the camera recording, 1 frame per second):** a small front tile lifted at one edge while its top layers were printing; the nozzle then picked up a blob from it and dragged several tiles across the plate.
- **Contributing causes:** bed lowered from 55 to 50 °C after the first layer; small tiles without a brim; top surfaces and outer walls at 200 mm/s; 5 °C hotter and less pull-back than run 3 (more ooze at each seam).
- **Checklist changes made:** bed stays at one temperature for the whole print; brim on every part under about 30 × 30 mm; outer walls and top surfaces at about 100 mm/s on small parts and calibration tests.
- **Still to confirm:** rerun the flow test with these changes; if it completes with no part lifting, close this issue.

## 5. Printer drops off Wi-Fi during a print
- **Seen (overnight print, 2026-11-20 02:17):** about 20 minutes into the print the printer stopped answering on the network (no ping, no status, no API), while the camera showed it still printing from its own storage.
- **Impact:** status-based watching, pausing over the network and the finish notification stop working; only the cameras still work.
- **Next step:** check whether the printer comes back by itself; consider a fixed address and a stronger Wi-Fi signal near the printer, and check the printer's power-saving or Wi-Fi settings. Watching by camera must not depend on the printer's network.

## 6. Push-on fits come out too loose
- **Seen (overnight black PETG print, 2026-11-20):** the spinner caps were designed with a hole 0.2 mm wider than the 8 mm peg they press onto. They slide on and fall straight off; there is no grip at all.
- **Lesson so far:** a hole made bigger than the peg gives a sliding fit, not a push-on fit. A part meant to stay on needs a hole the same size as the peg or slightly smaller.
- **Gear fidget caps (same print):** hole exactly the size of the 5 mm peg; they push on firmly and stay.
- **Next step:** reprint the spinner caps with a smaller hole, find the size that pushes on firmly by hand and stays, and record the working sizes for each material in the checklist's practical notes.

## 7. Print-in-place dragon: small parts knocked loose in the first layers
- **Seen (2026-11-20, Glorious Baby Dragon at 1.2×, neon green PLA, 0.28 mm layers):** from about 19:21 (layer 4 to 7) small pieces were knocked off and dragged outside the model, first at the left, then a tangle at the back right. Owner saw it and paused; cancelled at 9 %. Photos: `prints/records/glorious_dragon_failed_phone1.jpg` and `glorious_dragon_failed_timeline.jpg` in the project folder.
- **Causes found in the sliced file:** only the outer walls were slowed; inner walls ran at 300 mm/s, infill at 270, gap fill at 200, acceleration 10 000 mm/s². Hundreds of tiny feet, claws and segment bottoms touch the plate and none had a brim or mouse ears. The bed went from 55 °C (first layer) to 60 °C after it, because the filament preset had no bed temperature for the plate type the command line uses. The checklist was skipped at the owner's request, so steps 24 and 27 were not checked.
- **Why it was not stopped automatically:** the camera watcher said PROBLEM several times, including twice in a row at 19:29, but each answer began with "OK," and the script read only the first verdict word. The sender also stopped looking at the camera after the first layer and left it to the watcher.
- **Changes made:** step 24 now slows every speed (walls, infill, gap fill, top) to about 100 mm/s and acceleration to about 4000 for small parts and print-in-place models; step 54 now says any answer mentioning PROBLEM counts, and that the sender keeps looking every 5 minutes even with a watcher. Bed temperature set to one value for every plate type in the PLA presets.
- **Still to confirm:** the reprint with these changes (started 19:40) finishes with no part knocked loose. Then close this issue.

## 8. Nozzle partly, then fully blocked after switching from clear PETG to PLA
- **Seen (2026-11-20 evening, neon green Elegoo PLA, loaded straight after Slic3D clear PETG at 250 °C):** first dragon reprint had lacy, see-through fill (taken for stringing); next run laid solid small parts but a hollow head piece; purge tests at 245 °C gave only a hair-thin strand (25, 40, 100 mm pushed); finally the printer moved through a whole start with nothing coming out. Photos: `prints/records/glorious_dragon_underextrusion_head.jpg`, `glorious_dragon_try4_starved_head.jpg`, `flow_test_*.jpg` in the project folder.
- **Likely cause:** PETG left in the nozzle when PLA was loaded, never flushed at PETG temperature; PLA at 205 to 215 °C cannot clear it. Possibly made worse by the extruder grinding the filament once it could not push through.
- **Likely cause found (21:40):** a file left on the printer by the previous owner printed the same neon green perfectly at 220 °C. Every failed run used 205 °C (215 °C first layer only). This neon PLA seems to need about 220 °C to melt fast enough; at 205 °C it under-extrudes, the extruder slips and it can jam. To confirm: print the flexi dragon at 220 °C with nothing else changed.
- **Narrowed down (21:30 test):** a small crystal at normal speeds also starved, so the slowed settings are not the cause; the PETG theory is also weaker (silk PLA printed fine after black PETG this morning). Remaining suspects: a partly blocked nozzle, or this spool (grinding or diameter). Next: swap or clear the nozzle, then print the same small crystal in the cyan PLA. If cyan prints well, the neon green spool is the problem.
- **Not yet confirmed:** unload and look at the filament end (ground notch, blob), clear the nozzle with the needle at 240 °C or swap it, reload and check for a full, steady stream.
- **Proposed checklist change once confirmed:** when the previous filament printed hotter (for example PETG before PLA), purge the new filament at the previous filament's temperature (about 80 to 100 mm) before cooling to the new one, and check the stream is full and steady before printing.

## 9. One green light: confirm the agent can do the old person-at-printer checks (changed, to confirm)
- **Change made (2026-11-21):** the person at the printer now only gives the green light; the agent watches the start, judges dryness and checks the nozzle tip on camera, and decides spool storage from the files.
- **To confirm on the next prints:** the nozzle tip can be judged clean on phone 1 with the head at the front; damp filament can be told from the purge line on camera (steam, bubbles, rough line) without hearing it; a bad first layer is seen and stopped over the network quickly enough; FILAMENTS.md and PRINT-LOG.md are enough to judge how a spool was stored. If any of these cannot be done reliably, add the missing check to the green light list rather than bringing back a separate step for the person.
- **Known risk:** if the printer drops off Wi-Fi (issue 5), the agent cannot stop it; the person must be reachable for that.

## 10. Camera watcher pauses good prints (honeycomb / open lattice parts)
- **Seen (2026-11-22, honeycomb tennis ball):** two false pauses. 22:56: Haiku answered "OK, PROBLEM: ... nothing is wrong" and the parser counts PROBLEM anywhere in the answer. 23:04: it read the closing top of the ball (nozzle laying lines on hexagon walls) as "printing in mid-air". Both pictures showed a perfect print; the owner got two PAUSED pushes. Earlier it also called the purge line at the front "spaghetti" (not two in a row, so no pause).
- **Changed:** `watch_print.sh` now treats an answer that also says "nothing wrong", "no problem", "looks fine" or "not sure" as OK.
- **Still open:** the "mid-air" misreading on lattice and honeycomb parts. Ideas: tell Haiku what the top of the part looks like in the description; ask it to compare with the previous picture; require three PROBLEM answers in a row for lattice parts; or ignore "mid-air" when the print is past 50 %.

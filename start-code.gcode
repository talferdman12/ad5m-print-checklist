; Clean start for the Flashforge Adventurer 5M (stock firmware)
; Use exactly as written. Only change the two temperature placeholders on the
; M190 line (first-layer bed temperature) and the second M109 line (first-layer
; nozzle temperature) to your slicer's own names for those values.
; The placeholders below are OrcaSlicer's names; other slicers use other names.
; Delete your slicer's default start code before pasting this in.
; Never put square brackets in comments: OrcaSlicer treats them as placeholders.
; Coordinates: X and Y run from -110 to +110, 0,0 is the centre, Y = -110 is the front edge.
M104 S140 ; nozzle warm but below ooze temperature
M190 S[bed_temperature_initial_layer_single] ; heat bed fully first
M109 S140 ; hold nozzle at 140 for homing and bed measuring
G90 ; absolute positions
M83 ; relative extrusion
G28 ; home, nozzle at 140
BED_MESH_CALIBRATE PROBE_COUNT=5,5 ; 5x5 bed measurement every print, nozzle clean and at 140
G1 Z10 F3000 ; raise well clear of the plate
G1 X110 Y-100 F6000 ; park next to (not over) the purge line
G1 E-2.5 F1800 ; pull filament back before heating so it does not drip
M109 S[nozzle_temperature_initial_layer] ; heat to print temperature while raised
G1 X95 Y-110 Z0.3 F3000 ; come down at an angle, away from any drip
G1 E2.5 F1200 ; push filament back the same amount
G1 X94.8 E2 F6 ; crawl 0.2 mm in 2 s pushing out a small dab: the ooze curl hanging from the tip melts into it and sticks to the plate
G1 X93 E0.6 F300 ; ease out of the dab so it stays on the plate
G1 X55 E5.4 F1200 ; slow prime into the purge line
G1 X-55 E10 F2400 ; purge line
G1 Y-109.6 F2400
G1 X55 E6 F2400 ; second purge line
G1 E-0.8 F2100 ; retract
G1 X35 F12000 ; fast wipe backwards over the purge line just drawn, so any string sticks to it
G1 Z2 F3000 ; lift clear before travelling to the print
G92 E0

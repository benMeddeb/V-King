; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v2.1.8 on Wed Mar 25 2020 07:53:00 GMT+0100 (Central European Standard Time)
G91                     ; relative positioning
G1 H2 Z5 F18000         ; lift Z relative to current position
G1 H1 X-345 Y-385 F3600 ; move quickly to X or Y endstop and stop there (first pass)
G1 H1 X-345             ; home X axis
G1 H1 Y-385             ; home Y axis
G1 X5 Y5 F18000         ; go back a few mm
G1 H1 X-345 F360        ; move slowly to X axis endstop once more (second pass)
G1 H1 Y-385             ; then move slowly to Y axis endstop
G90                     ; absolute positioning
G1 X-11 Y20 F18000      ; go to first bed probe point and home Z
G30                     ; home Z by probing the bed

; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 Z5 F300             ; lift Z relative to current position
;G90                    ; absolute positioning



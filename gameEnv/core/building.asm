; --------------------------------------------
; Title:   building manager
; Author:  Liraal
; Date:    2012-07-01
; Version: 0x1
; --------------------------------------------

:building_entries
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0
dat 0x0, 0x0

:building_update
set push, i
set push, j
set i, 0
:building_update_loop
ife i, 0x14
	set pc, building_update_end
mul i, 0x2
add i, building_entries
set j, [i]
ifg [i], 0x0
	sub [i], 0x1
ife [i], 0x0
	ifn j, 0x0 
		jsr city_add_building
sub i, building_entries
div i, 0x2
add i, 1
set pc, building_update_loop
:building_update_end
set j, pop
set i, pop
set pc, pop
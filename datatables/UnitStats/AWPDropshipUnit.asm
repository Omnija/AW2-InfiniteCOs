;TransportcopterUnit.asm
;Transport Copter Stats


;Unit Name ID
	.dh 2248
	
;Primary Weapon Name ID
	.dh 2266
	
;Secondary Weapon Name ID	
	.dh 2266
	
;Unit Price for 1HP
	.dh 650
	
;Unknown
	.dh 0

;Movement
	.db 5
	
;Maximum Ammunition
	.db 0
	
;Vision Range
	.db 1
	
;Unknown
	.db 0
	
;Firing Range
	.db 0,0
	
;Maximum Fuel
	.db 99
	
;B-Button Range Display Type.
	.db BButtonIndirect
	
;Unknown
	.dh 0
	
;Transport Ability
	.dw TransportTypeDropship

;Unit Class
	.db ClassCopter
	
;Movement Class
	.db AWPMoveAir
	
;Facilities this unit can be built from
	.db BuildAirport
	
;AI Unit AI
	.db AICarryFootSoldiers

;AI Priority Attack Targeting
	.db AITargetGround+AITargetSea

;AI Considers this a Unit of Type
	.db AITargetAir
	
;Unknown
	.db 0	
		
;Damage Chart (Primary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 0,0,0,0
;Tank, Train, APC, Neotank	
	.db 0,0,0,0
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,0,0,0
;Carrier, Antiair, Missile, Fighter	
	.db 0,0,0,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0
;Dived Sub	
	.db 0	

;Unknown
	.db 0
	
;Damage Chart (Secondary Weapon)
;Bike, Mech, Medium Tank, Antitank
	.db 0,0,0,0
;Tank, Train, APC, Neotank	
	.db 0,0,0,0
;Destroyer, Artillery, Rockets, Gunboat	
	.db 0,0,0,0
;Carrier, Antiair, Missile, Fighter	
	.db 0,0,0,0
;Bomber, Duster, B-Copter, T-Copter	
	.db 0,0,0,0
;Battleship, Cruiser, Lander, Sub	
	.db 0,0,0,0
;Dived Sub	
	.db 0	

;Padding
	.dh 00

;Unit is Supplied on This Terrain
	.dw SuppliedByAirport
	
;Unit Uses Fuel on These Tiles
	.dw FuelUseageTypeCopter
	
;Blank Line

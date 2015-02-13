;Advance Wars 2 - Project
;corelaunchstun.asm

LaunchAndStun:
	push	{r1-r3}
	ldr	r0,=CurrentPlayerTurn
	ldrb	r0,[r0]
	ldr	r1,=BaseUnitOffset
	mov	r2,#0xC0
	lsl	r2,r2,#0x2
	mul	r0,r2
	add	r1,r0,r1
	mov	r2,#0x0
LaunchStunLoopStart:
;Check if we have a real unit
	ldrb	r0,[r1]	
	cmp	r0,#0x0
	beq	LaunchStunLoopEnd
	
	bl	StunTaggedUnits
;	bl	CommanderDailyAbility	(Depreciated)

	
LaunchStunLoopEnd:	
	cmp	r2,#0x32
	bge	LaunchStunLoopFinish
	add	r1,#0xC
	add	r2,#0x1
	b	LaunchStunLoopStart
LaunchStunLoopFinish:
	pop	{r1-r3}
	pop	{r4}
	pop	{r0}
	bx	r0
	.pool

	
.align
StunTaggedUnits:
;Stun Code - Checks if MSB on fuel is set
	push 	{r0-r3,r14}
	ldrb	r0,[r1,#0x6]
	mov	r3,#0x80
	and	r0,r3
	cmp	r0,#0x0
	beq	StunTaggedUnitsEnd
	ldrb	r0,[r1,#0x1]
	mov	r3,#0x1
	orr	r0,r3
	strb	r0,[r1,#0x1]
	ldrb	r0,[r1,#0x6]
	mov	r3,#0x7F
	and	r0,r3
	strb	r0,[r1,#0x6]
StunTaggedUnitsEnd:	
	pop	{r0-r3}
	pop	{r0}
	bx	r0
	
	.align
	

	
	
;Depreciated	
;CommanderDailyAbility:
;	push	{r0-r3,r14}
;	add	sp,-0x8
;	str	r1,[sp]
;	str	r2,[sp,0x4]
;	ldr	r0,=CurrentPlayerTurn
;	ldrb	r0,[r0]
;	mov	r1,0x3C
;	mul	r0,r1
;	ldr	r1,=BasePlayerMemory-0x3C
;	add	r0,r0,r1
;	ldrb	r0,[r0,0x1D]	
;	ldr	r1,=0x104
;	mul	r0,r1
;	ldr	r1,=COStatsAbilitiesDatatable
;	add	r0,r0,r1
;	ldr	r0,[r0,0x3C]
;	cmp	r0,0x0
;	beq	CommanderDailyAbilityEnd
;	bl	CommanderDailyAbilitybx
;	
;CommanderDailyAbilityEnd:
;	add	sp,0x8
;	pop	{r0-r3}
;	pop	{r0}
;	bx	r0
;	.pool
	
;CommanderDailyAbilityBx:
;	bx	r0
	
;Blank Line

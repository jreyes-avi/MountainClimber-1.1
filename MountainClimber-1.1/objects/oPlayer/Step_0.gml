key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var _move = key_right - key_left;
 
hsp = _move * walksp;
 
vsp = vsp + grv;

if(place_meeting(x,y+1,oWall)){
	currjumps = 0;
}

/// Jump
if (key_jump and (currjumps < maxjumps)){
	vsp = -jumpsp;
	currjumps += 1;
}
///Horizontal Collision

if (place_meeting(x+hsp,y,oWall)){
	while (!place_meeting(x+sign(hsp),y,oWall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;
///Verticle Collision

if (place_meeting(x,y + vsp, oWall)){
	while (!place_meeting(x,y+sign(vsp),oWall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;


///Animation
if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerA_D;
	image_speed = 1;
	if (vsp > 0 ) image_index = 1; else image_index = 0;
	
}
else
{
	image_speed = 1;
	if(hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else{
		sprite_index = sPlayerR;
	}
}

if (hsp != 0) image_xscale = sign(hsp);

//Extra Jump Collision
if ((place_meeting(x + hsp, y, oExtraJump)) and (place_meeting(x, y + vsp, oExtraJump))){
	if (jCollect){
		oExtraJump.image_alpha = 0.3;
		jCollect = false;
		currjumps -= 1;
	}
}

//Dash Collision
if ((place_meeting(x + hsp, y, oDash)) and (place_meeting(x, y + vsp, oDash))){
	if (dCollect){
		oDash.image_alpha = 0.3;
		dCollect = false;
		walksp = walksp * 2;
	}
}
//Win Collison
if ((place_meeting(x + hsp, y, oWin)) and (place_meeting(x, y + vsp, oWin))){
	room_goto_next();
}

//Crumbling Floor Collisons
if (place_meeting(x,y + vsp, oCrumble) and not oCrumble.alarms){
	oCrumble.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble2) and not oCrumble2.alarms){
	oCrumble2.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble2.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble3) and not oCrumble3.alarms){
	oCrumble3.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble3.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble4) and not oCrumble4.alarms){
	oCrumble4.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble4.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble5) and not oCrumble5.alarms){
	oCrumble5.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble5.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble6) and not oCrumble6.alarms){
	oCrumble6.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble6.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble7) and not oCrumble7.alarms){
	oCrumble7.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble7.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble8) and not oCrumble8.alarms){
	oCrumble8.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble8.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble9) and not oCrumble9.alarms){
	oCrumble9.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble9.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble10) and not oCrumble10.alarms){
	oCrumble10.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble10.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble11) and not oCrumble11.alarms){
	oCrumble11.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble11.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble12) and not oCrumble12.alarms){
	oCrumble12.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble12.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble13) and not oCrumble13.alarms){
	oCrumble13.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble13.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble14) and not oCrumble14.alarms){
	oCrumble14.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble14.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble15) and not oCrumble15.alarms){
	oCrumble15.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble15.alarms = true;
}

if (place_meeting(x,y + vsp, oCrumble16) and not oCrumble16.alarms){
	oCrumble16.alarm[0] = 3 * game_get_speed(gamespeed_fps);
	oCrumble16.alarms = true;
}
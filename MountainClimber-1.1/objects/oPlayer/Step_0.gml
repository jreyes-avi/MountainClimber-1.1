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
	sprite_index = sPlayerGirlA_D;
	image_speed = 1;
	if (vsp > 0 ) image_index = 1; else image_index = 0;
	
}
else
{
	image_speed = 1;
	if(hsp == 0)
	{
		sprite_index = sPlayerGirl;
	}
	else{
		sprite_index = sPlayerGirlR;
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

//SpikeFloor Collision
if ((place_meeting(x + hsp, y, oSpikes)) and (place_meeting(x, y + vsp, oSpikes))){
		global.alive = false;
		instance_destroy();
}
/// @description Tigger Room Restart

if(bbox_bottom > room_height){
	oControl.alarm[0] = alarm[0] = game_get_speed(gamespeed_fps);
	instance_destroy();
	global.alive = false;
}
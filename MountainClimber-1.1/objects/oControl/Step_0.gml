if (not global.alive){
	alarm[0] = game_get_speed(gamespeed_fps);
	global.alive = true;
}
if (count and not room == StartScreen and not room == EndScreen){
	alarm[1] = game_get_speed(gamespeed_fps);
	count = false;
}
if((room = StartScreen) or (room == EndScreen)){
	if(keyboard_check_pressed(vk_enter)){
		room_goto_next();
	}
}
if (global.alive){
	oPlayer.walksp = oPlayer.start_walksp;
	show_debug_message("readyD");
	image_alpha = 1;
	alarm[1] = game_get_speed(gamespeed_fps) * 1;
}
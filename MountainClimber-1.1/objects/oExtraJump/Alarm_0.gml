if (global.alive){
	show_debug_message("ready");
	image_alpha = 1;
	alarm[1] = game_get_speed(gamespeed_fps) * 0.5;
}
/// @description Tigger Room Restart

if(bbox_bottom - 100 > room_height){
	global.alive = false;
	instance_destroy();
}
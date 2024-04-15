/// @description Tigger Room Restart

if(bbox_bottom > room_height){
	global.alive = false;
	instance_destroy();
}
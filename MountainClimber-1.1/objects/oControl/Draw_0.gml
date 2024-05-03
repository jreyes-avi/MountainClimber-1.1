/// @description Draw
switch(room){
	case Room1 :
		draw_text(8, 8, "Time: " + string(global.time));
		
	case Room2 :
		draw_text(8, 8, "Time: " + string(global.time));
		
	case Room3 :
		draw_text(8, 8, "Time: " + string(global.time));
		
	case StartScreen:
		draw_text_color(120, 120, "This young girl has embarked on a daring adventure in order to aquire a great tresure. \nThis treasure is said to have great power which she hopes to use in order to save their village \nduring thier most desperate times, but can she make it through this trecherous path before her?", 
		c_orange,c_orange,c_orange,c_orange,1);
		draw_text(room_width/2 - 200,room_height-400,"Use the arrow keys to move around\n<-- This powerup grants you an extra jump while in the air\n<--This powerup grants you super speed for 4 seconds\n<--Be careful of the spikes as they will cause you to return to the start of the level.");
		
	case EndScreen:
		draw_text_color(120, 120, "Thanks to your help, the young girl was able to aquire the treasure at the peak of the \nmountain and saved her village from their crisis. She became known as hero in her village as\n was praised for years to come so much so that they even errected a statue in her honor.", 
		c_orange,c_orange,c_orange,c_orange,1);
		draw_text(room_width/2 - 200,room_height-400,"You took " + string(global.time) +" seconds to beat the game.\nCan you beat it even quicker next time?\n\n\nPress Enter to Try Again")
}
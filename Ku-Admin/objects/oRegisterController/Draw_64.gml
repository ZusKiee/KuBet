///@desc Draw GUI

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntDefault);

drawRectangle(room_width/2 - 200,room_height/2 - 200,room_width/2 + 200,room_height/2 + 200,c_black,5);
draw_text_transformed(room_width/2,room_height/2 - 150,"Login",3,3,0);

//Login GUIs
drawRectangle(room_width/2 - 150,room_height/2 - 50,room_width/2 + 150,room_height/2 - 25,c_black,5); //Username
drawRectangle(room_width/2 - 150,room_height/2 + 35,room_width/2 + 150,room_height/2 + 60,c_black,5); //Password

draw_text_transformed(room_width/2,room_height/2 - 75,"Username",3,3,0);
draw_text_transformed(room_width/2,room_height/2 + 10,"Password",3,3,0);

drawRectangle(room_width/2 - 100,room_height/2 + 125,room_width/2 + 100,room_height/2 + 175,c_black,5); //Username
draw_text_transformed(room_width/2,room_height/2 + 150,"Login",2,2,0);
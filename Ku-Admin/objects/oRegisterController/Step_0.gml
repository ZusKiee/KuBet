///@desc Step Event // Button Function

var LoginFunction = point_in_rectangle(mouse_x,mouse_y,room_width/2 - 100,room_height/2 + 125,room_width/2 + 100,room_height/2 + 175);

if (LoginFunction and mouse_check_button_pressed(mb_left))
{
 var Struct = {
	Type: "Login",
	U: "Admin",
	P: "TuanSu12345",
	}
	scrSend(Struct)
}
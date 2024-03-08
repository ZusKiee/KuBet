//@desc Recieve Data
function scrClient()
{
	var type = async_load[? "type"];
	var buff = async_load[? "buffer"];

	switch(type) {
		case network_type_data:
			var Size = async_load[? "size"];
			var Buffer = buffer_read(buff, buffer_text);
			var NodeJs = json_parse(Buffer);
		
			switch NodeJs.Type
			{			
				//Registeration and Login Messages
				case "AlreadyIn": show_message_async("Account Is Online");break;
				case "Wrong": show_message_async("Wrong Password"); break;
				case "AlreadyExists": show_message_async("User Already Exists"); break;
				case "Complete": show_message_async("Register Complete"); break;	
				case "NoUser": show_message_async("User Doesn't Exists") break;
				//Others.
				case "Ping": Ping = abs(NodeJs.Time-current_time); break; //Check Ping.
				
				case "Login":
				globalvar Name;
				Name = NodeJs.Name;
				
				room_goto(rDashboard);	   
				break;
		

			}
		break;
	
	}
	
}
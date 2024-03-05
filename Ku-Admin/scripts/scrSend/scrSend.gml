///@desc Send Data to NodeJS
function scrSend(Struct)
{
	if instance_exists(obClient)
	{
		var Buffer = buffer_create(1, buffer_grow, 1)
		buffer_write(Buffer, buffer_text, json_stringify(Struct))
		network_send_raw(clientSocket, Buffer, buffer_tell(Buffer))
		buffer_delete(Buffer)		
		//Send packets to server
	}
}
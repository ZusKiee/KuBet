///@desc Create Server
globalvar clientSocket, IP, PORT, Ping;
IP = "127.0.0.1";
PORT = 9333;
Ping = 0;

clientSocket = network_create_socket(network_socket_ws); //Create Socket
network_set_timeout(clientSocket, 500, 500); //Timeout
network_set_config(network_config_connect_timeout, 500); //Timeout
Connect = network_connect_raw_async(clientSocket, IP, PORT); //Connect to NodeJs (Server)

if (Connect >= 0) 
{
  show_debug_message("Server Connected");
  room_goto(rRegister);
};

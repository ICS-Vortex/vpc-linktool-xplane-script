socket = require("socket")
json = require("json")
data = {};
c = socket.udp()
loadstring(readAll(SCRIPT_DIRECTORY .. 'config.lua.tpl'))()
c:setpeername(SERVER_HOST, SERVER_PORT)
do_often(readAll(SCRIPT_DIRECTORY .. 'reader.lua.tpl'));
do_on_exit('c:close()')

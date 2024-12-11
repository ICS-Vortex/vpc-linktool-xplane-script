local variables = readAll(SCRIPT_DIRECTORY .. 'variables.json');
for _, var in pairs(json.decode(variables)) do
    data[var.name] = get(var.ref)
 end

socket.try(c:send(json.encode(data)))
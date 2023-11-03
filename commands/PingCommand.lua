function run(message)

	local new = message:reply("Loading...")
	new:setContent("Ping: `".. math.abs(math.floor((new.createdAt - message.createdAt) * 1000)) .." ms`")

end

config = {
   name = "ping",
   aliases = {"pin", "p", "pi"}
}

return { config = config, run = run }
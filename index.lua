local discordia = require('discordia')
local eventHandler = require("./handlers/event.lua")
local configFile = require("../config.lua")
local client = discordia.Client()

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

local files = eventHandler.getFiles()
for _, file in ipairs(files) do
    local event = require("./events/"..file)
    local eventName = file:gsub("%.lua$", "")
    client:on(eventName, event)
end

client:run('Bot '..configFile.token)
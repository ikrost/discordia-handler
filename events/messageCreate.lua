local commandHandler = require('../handlers/command.lua')
local configFile = require("../config.lua")

return function(message)

    if message.author.bot then return end

    local files = commandHandler.getFiles()
    for _, file in ipairs(files) do

        local command = require("../commands/"..file)
        if message.content == configFile.config.prefix..command.config.name then
            command.run(message)
        else

            for _, aliases in ipairs(command.config.aliases) do
                if message.content == configFile.config.prefix..aliases then
                    command.run(message)
                end
            end

        end

    end


end
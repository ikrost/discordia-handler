local fs = require('fs')
local path = 'PUT_THE_DESTINATION_OF_THE_COMMANDS_FOLDER'
-- Example: C:\\Users\\user\\Desktop\\discord-bot-lua\\commands

local files = fs.readdirSync(path)

function getFiles()

    local allFiles = {}
    for _, file in ipairs(files) do
        table.insert(allFiles, file)
    end
    return allFiles

end

return { getFiles = getFiles }
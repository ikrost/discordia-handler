local fs = require('fs')
local path = 'PUT_THE_DESTINATION_OF_THE_EVENTS_FOLDER'
-- Example: C:\\Users\\user\\Desktop\\discord-bot-lua\\events

local files = fs.readdirSync(path)

function getFiles()

    local allFiles = {}
    for _, file in ipairs(files) do
        table.insert(allFiles, file)
    end
    return allFiles

end

return { getFiles = getFiles }
if not import then import = require end
package.path = '/?.lua;' .. package.path

dump = import('libs/dump')

function load_storyDefinition(storyDefinitionName)
    if storyDefinitionName:sub(#storyDefinitionName-3,#storyDefinitionName) == ".lua" then
        storyDefinitionName = storyDefinitionName:sub(1,#storyDefinitionName-4)
    end
    return import(storyDefinitionName)
end

-- local storyDefinition = import("tests/hello_world")
-- local storyDefinition = import("tests/whitespace")
-- local storyDefinition = import("tests/weave_gathers")
-- local storyDefinition = import("tests/multi_thread")
-- local storyDefinition = import("tests/thread_in_logic")
-- local storyDefinition = import("tests/conditional_choices")
-- local storyDefinition = import("tests/list_range")
-- local storyDefinition = import("tests/logic_in_choices")
local storyDefinition = load_storyDefinition(arg[1])



Story = import('engine/story')
story = Story(storyDefinition)

local choices = {}

repeat
    while story:canContinue() or not story:asyncContinueComplete() do
        story:ContinueAsync(300)
    end
    local t = story:currentText()
    io.write(t)
    local tags = story:currentTags()
    if  #tags > 0 then
        io.write(" # tags: " .. table.concat(tags, ", "), '\n')
    end
    
    -- while story:canContinue() do
    --     local t = story:Continue()
    --     io.write(t)
    --     local tags = story:currentTags()
    --     if  #tags > 0 then
    --         io.write(" # tags: " .. table.concat(tags, ", "), '\n')
    --     end
    -- end
    io.write("\n")
    choices = story:currentChoices()
    for i,c in ipairs(story:currentChoices()) do
        io.write(i .. ": ", c.text)
        if #c.tags > 0 then
            io.write(" # tags: " .. table.concat(c.tags, ", "))
        end
        io.write("\n")
    end
    if #choices > 0 then
        io.write("?> ")
        choiceIndex = io.read()
        story:ChooseChoiceIndex(choiceIndex)
    end
until #choices == 0
print("DONE.\n")
if playdate then
	playdate.file.run('tinta/require')
end

package.path = 'tinta/?.lua;' .. package.path
if love then
	love.filesystem.setRequirePath('tinta/?.lua;'.. love.filesystem.getRequirePath( ))
	compat = require("compat.lua51")
else
	compat = require("compat.lua54")
end
Story = require("engine.story")
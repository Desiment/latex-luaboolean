-- code/luaboolean.code.lua

local luaboolean = {}

function luaboolean.cast(value)
  if value then
    return [[\noexpand\BooleanTrue]]
  end
  return [[\noexpand\BooleanFalse]]
end

return luaboolean

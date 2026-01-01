LuaBoolean = {}
--[[
  Converts a Lua boolean to LaTeX boolean commands.

  Parameters:
    b (boolean): The boolean value to convert

  Returns:
    string: Either \BooleanTrue or \BooleanFalse
]]
LuaBoolean.CastLuaBoolToLaTeX = function(b)
  local LATEX_BOOL_TRUE = [[\noexpand\BooleanTrue]]
  local LATEX_BOOL_FALSE = [[\noexpand\BooleanFalse]]

  if b then
    return LATEX_BOOL_TRUE
  end
  return LATEX_BOOL_FALSE
end

return LuaBoolean

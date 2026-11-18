local M = {}

function M.format_count(n)
  if n == 1 then return "1 time" end
  return tostring(n) .. " times"
end

return M

local M = {}

local config = {
  param_one = "default_value",
  param_two = 42,
  param_three = true,
  param_four = "another_default",
}

M.setup = function() end

M.update_config = function(updates)
  if type(updates) ~= "table" then
    vim.notify("Brain SOC: update_config expects a table", vim.log.levels.ERROR)
    return
  end

  local allowed = { param_one = true, param_two = true, param_three = true, param_four = true }
  for k, v in pairs(updates) do
    if allowed[k] then
      config[k] = v
    else
      vim.notify("Brain SOC: Unknown config key: " .. k, vim.log.levels.WARN)
    end
  end

  vim.notify("Brain SOC config updated", vim.log.levels.INFO)
end

M.get_config = function()
  return vim.deepcopy(config)
end

return M

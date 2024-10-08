require("starship"):setup()
require("full-border"):setup {
  -- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
}

-- show ln in status-bar
function Status:name()
	local h = self._tab.current.hovered
	if not h then
		return ui.Line {}
	end

	-- return ui.Line(" " .. h.name)
  local linked = ""
  if h.link_to ~= nil then
    linked = " -> " .. tostring(h.link_to)
  end
  return ui.Line(" " .. h.name .. linked)
end


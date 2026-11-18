-- C-Cord Example Plugin: demonstrates Class 1 APIs without requiring elevated permissions.
local helpers = require("helpers")

log.info("Loaded " .. plugin.name .. " v" .. plugin.version .. " from " .. plugin.dir)

-- Track how many times /example-hello has been run using persistent plugin storage.
commands.register("example-hello", "Greets the channel and counts invocations", function(args, ctx)
  local count = (storage.get("hello_count") or 0) + 1
  storage.set("hello_count", count)
  local who = (args and args ~= "") and args or "world"
  return "Hello, " .. who .. "! (/example-hello used " .. helpers.format_count(count) .. ")"
end)

-- Add a context menu item on channels to copy the channel ID.
ui.contextMenu.add({
  id = "example-copy-channel-id",
  label = "Copy Channel ID (Example)",
  target = "channel",
  action = function(ctx)
    clipboard.write(ctx.channel_id)
    log.info("Copied channel ID: " .. tostring(ctx.channel_id))
  end,
})

-- Observe Class 1 navigation events.
events.on("channel.select", function(ev)
  log.debug("Switched to channel #" .. tostring(ev.name) .. " (" .. tostring(ev.channel_id) .. ")")
end)

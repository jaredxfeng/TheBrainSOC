# brain-soc.nvim

**Real-time "Brain SOC" (battery) for your Neovim statusline**  
Powered by WakaTime + a 15-minute cron job that updates your Slack status too.

## Features

- Shows `🧠 87%` in your lualine (or any statusline)
- Protects your manual Slack status (won't overwrite if you set a different emoji)
- Fully local — only reads `~/.brain-soc.json`

## Installation

1. Create a file `~/.config/nvim/lua/plugins/brain-soc.lua` with these lines:

```lua
return {
  "jaredxfeng/brain-soc.nvim",
  lazy = false,
  config = function() end,
}
```

2. In your neovim, run `:BrainSOCSetup` to input your wakatime API key and the Slack OAuth Token of The Brain SOC Slack App.

3. Add a line inside your `crontab -e`: `*/15 * * * * cd ~/.local/share/nvim/lazy/brain-soc.nvim/bin && ./run-brain-soc.sh`. Save and exit. 

4. Restart your neovim and continue to enjoy coding until it stops you!

## Commands

`:BrainSOCSetup` - see above.


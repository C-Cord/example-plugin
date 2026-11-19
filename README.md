# C-Cord Example Plugin

MIT-licensed template repository demonstrating how to build, package (`.cce`), and instantly publish a Lua 5.5 plugin to **`https://plugins.c-cord.org`**.

## Using This Template

1. Fork or use this repository as a template.
2. Edit `plugin.json` with your own unique plugin `id` (reverse-DNS style, e.g. `io.github.yourname.my-plugin` — plugin IDs are claimed **First-Come, First-Served**).
3. Write your extension logic in `main.lua` (see [C-Cord Plugin API Docs](https://github.com/C-Cord/C-Cord-Client/blob/main/docs/plugin-api/README.md)).
4. Open the **Actions** tab → **Publish C-Cord Plugin** → **Run workflow**:
   - Keep **`package_release`** checked to pack `<id>-<version>.cce` and create GitHub Release `v<version>`.
   - Keep **`announce`** checked to instantly announce your release to `https://plugins.c-cord.org/api/v1/announce` via GitHub's native OIDC token (**zero secrets or PATs required**).
5. Your plugin appears immediately in C-Cord under **Settings → Plugins → Discover**!

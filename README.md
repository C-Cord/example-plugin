# C-Cord Example Plugin

Template repository demonstrating how to build, package (`.cce`), and publish a Lua 5.5 plugin to the decentralized [`C-Cord/plugin-catalog`](https://github.com/C-Cord/plugin-catalog).

## Using This Template

1. Fork or use this repository as a template.
2. Edit `plugin.json` with your own unique plugin `id` (reverse-DNS style, e.g. `io.github.yourname.my-plugin` — plugin IDs are claimed **First-Come, First-Served** in the catalog).
3. Write your extension logic in `main.lua` (see [C-Cord Plugin API Docs](https://github.com/C-Cord/C-Cord-Client/blob/main/docs/plugin-api/README.md)).
4. Open the **Actions** tab → **Publish C-Cord Plugin** → **Run workflow**:
   - Keep **`package_release`** checked to automatically validate your manifest, bundle `<id>-<version>.cce`, and publish GitHub Release `v<version>`.
   - Keep **`announce`** checked to announce your repo to `C-Cord/plugin-catalog` (either automatically if you add a `CCORD_ANNOUNCE_TOKEN` secret, or via the 1-click link in the workflow summary).
5. Once indexed, C-Cord users can install and auto-update your plugin right from **Settings → Plugins → Discover**!

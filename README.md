# KardanovIR Homebrew tap — retired

**This tap is archived and no longer updated.** The formula still works and
still installs, but it is pinned at **AgStatus 1.3.0** and will not move again.

1.3.0 predates Focus (tap a session on your phone and its terminal comes to the
front), the plan-limit and token-spend screens, and the 1.5 redesign. If you
installed AgStatus through this tap, you are several releases behind.

## Use the installer instead

```bash
curl -fsSL https://agstatus.online/install.sh | sh
```

On Windows:

```powershell
irm https://agstatus.online/install.ps1 | iex
```

It is the same command for a first install and an upgrade, it keeps the board
you already have, and on macOS it sets up Focus. Full instructions:
<https://agstatus.online/docs>.

To remove the Homebrew copy first:

```bash
brew uninstall agstatus && brew untap kardanovir/tap
```

## Why

AgStatus shipped through npm and this tap until 1.3.0. Both were retired in
favour of one installer that wires up Claude Code and Codex hooks, pairs a
board and installs the Focus listener in a single step — none of which a
formula that only drops a binary on `PATH` can do.

Nothing was unpublished: `agstatus@1.3.0` stays resolvable on the npm registry
and this formula keeps resolving to it, so an old script does not break. It
just installs 1.3.0.

Source: [KardanovIR/claude-status-dashboard](https://github.com/KardanovIR/claude-status-dashboard).

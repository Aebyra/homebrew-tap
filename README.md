# Aebyra Homebrew tap

```bash
brew trust aebyra/tap
brew install --cask aebyra/tap/blotch
```

`brew trust` is needed once: Homebrew 7 only loads casks from taps you've trusted.

This installs Blotch.app into /Applications and links the `blotch` command line tool.

Blotch updates itself. `brew upgrade --cask --greedy blotch` also works.

Before uninstalling, run `blotch uninstall` if you connected Claude Code, Codex or the zsh hook. Then:

```bash
brew uninstall --cask blotch        # the app and the CLI link
brew uninstall --zap --cask blotch  # also settings, caches and logs
```

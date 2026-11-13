# YoursshLabs Homebrew tap

Homebrew cask for [YourSSH](https://github.com/YoursshLabs/yourssh), the SSH, SFTP, RDP and VNC client.

```bash
brew install --cask yoursshlabs/tap/yourssh
```

The cask installs the signed and notarized universal DMG from the [YourSSH releases](https://github.com/YoursshLabs/yourssh/releases) (macOS 12 or later, Apple silicon and Intel). YourSSH updates itself from inside the app; `brew upgrade --cask yourssh` also works.

Uninstall with `brew uninstall --cask yourssh`; add `--zap` to also remove its settings and data.

Documentation: https://your-ssh.mintlify.site

## Maintenance

`.github/workflows/update-cask.yml` checks the latest YourSSH release every six hours (and on demand) and bumps the cask's `version` and `sha256`.

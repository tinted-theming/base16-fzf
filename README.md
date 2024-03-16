# base16-fzf

This repository provides [base16][1] color schemes for [fzf][2], a
command-line fuzzy finder written in Go.

It is meant to be used along with the [new implementation][1] of the
base16 color scheme project, which proposes a modular approach by
separating templates, schemes and builder into different repositories.

Themes in base16-fzf work by appending `--color` options to your
existing `FZF_DEFAULT_OPTS` environment variable.

## Installation

### Posix complaint shell (sh, bash, zsh)

Source your favorite base16 color scheme from the `sh/` directory into
your shell configuration file. The generated `sh/` scripts append
`--color` options naively to your `FZF_DEFAULT_OPTS` environment
variable.

**Deprecated**: The `bash/` exists for people who have locally cloned
this repo and are already using it, but `sh/` directory should be used
for all posix compliant shells.

### Fish

Source your favorite base16 color scheme from the `fish` directory with
the `source` command. This creates a global variable that will be
persistent across shell sessions. The generated `fish` scripts will
overwrite existing `--color` options from your existing
`FZF_DEFAULT_OPTS` to stop it from growing indefinitely as you try out
different color schemes.

The themes are built using [base16-builder-go][4].

### Powershell

Add the powershell theme file contents to your
`~/Documents/PowerShell/Microsoft.PowerShell_profile.ps1` file.

### ANSI Passthrough Support

By default, fzf supports ANSI color passthrough. If you're interested in
utilizing our enhanced version, which includes support for ANSI
passthrough, follow the instructions below based on your shell:

- **Posix shells (sh, bash, zsh):** Source the `ansi/ansi.sh` script or append
  its contents to your shell's initialization file (e.g. `.bashrc`,
  `.zshrc`).
- **Fish shell:** Source the `ansi/ansi.fish` script or add its contents to your
  config.fish file located at `~/.config/fish/config.fish`.
- **Powershell:** Incorporate the `ansi/ansi.ps1` script's contents into your
  profile script, typically found at
  `~/Documents/PowerShell/Microsoft.PowerShell_profile.ps1`.

This version ensures consistent ANSI color passthrough across different
shell environments, enhancing your experience with fzf.

## Contributing

See [`CONTRIBUTING.md`][9], which contains building and contributing
instructions.

This theme was built with [base16-builder-go][3].

## Screenshots

| `solarized-dark`                | `horizon-dark`                | `tomorrow`                | `oceanicnext`                |
| ------------------------------- | ----------------------------- | ------------------------- | ---------------------------- |
| ![base16-fzf-solarized-dark][5] | ![base16-fzf-horizon-dark][6] | ![base16-fzf-tomorrow][7] | ![base16-fzf-oceanicnext][8] |

[1]: https://github.com/tinted-theming/home
[2]: https://github.com/junegunn/fzf
[3]: https://github.com/tinted-theming/base16-builder-go
[4]: .github/workflows/update.yml
[5]: screenshots/base16-solarized-dark.png
[6]: screenshots/base16-horizon-dark.png
[7]: screenshots/base16-tomorrow.png
[8]: screenshots/base16-oceanicnext.png
[9]: CONTRIBUTING.md

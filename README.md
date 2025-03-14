<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="192px" height="192px"/>
<img align="left" width="0" height="192px" hspace="10"/>

### `ptr.fish`

> [PowerToys Run Plugin Manager (ptr)][ptr] plugin for [Oh My Fish][omf] and [Fisher][fisher],

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell v3.6.0](https://img.shields.io/badge/fish-v3.6.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/><br/>

## Prerequisites

- [PowerToys][powertoys] must be installed on your system.
- Enable the [PowerToys Run][powertoys-run] feature in the PowerToys settings.
- [PowerToys Run Plugin Manager (ptr)][ptr] must be installed on your system and added to the `$PATH` environment variable via `fish_add_path`.

## Completions

This plugin provides robust command completions for the PowerToys Run Plugin Manager (`ptr`):

- **Main Commands**: Complete all available commands like `init`, `add`, `update`, `remove`, `list`, etc.
- **Command Aliases**: Support for shorter aliases like `a` (add), `u` (update), `r` (remove), `l` (list), `p` (pin)
- **Options**: Auto-complete command-specific options (e.g., `--version`, `--all`, `--dry-run`)
- **Nested Commands**: Support for nested subcommands like `pin add`, `pin remove`, `pin list`, etc.
- **Help Navigation**: Contextual help completions for all commands and subcommands

Completions are automatically installed with the plugin and work right away.

## Abbreviations Usage

After installing the [`ptr.fish`][repo] plugin, you can inspect the abbreviations with the following command:

```sh
abbr --show | grep ptra
```g

### Core Commands

| Abbreviation | Command              |
|--------------|----------------------|
| `ptri`       | `ptr init`           |
| `ptra`       | `ptr add`            |
| `ptru`       | `ptr update`         |
| `ptrua`      | `ptr update --all`   |
| `ptrr`       | `ptr remove`         |
| `ptrl`       | `ptr list`           |

### Pin Management

| Abbreviation | Command            |
|--------------|-------------------|
| `ptrp`       | `ptr pin`         |
| `ptrpa`      | `ptr pin add`     |
| `ptrpr`      | `ptr pin remove`  |
| `ptrpl`      | `ptr pin list`    |
| `ptrprs`     | `ptr pin reset`   |

### System & Utility

| Abbreviation | Command             |
|--------------|---------------------|
| `ptrim`      | `ptr import`        |
| `ptrrt`      | `ptr restart`       |
| `ptre`       | `ptr edit`          |
| `ptrsu`      | `ptr self-update`   |

## Install

[Oh My Fish][omf]:

```sh
omf install https://github.com/Asim-Tahir/ptr.fish
```

[Fisher][fisher]:

```sh
fisher install Asim-Tahir/ptr.fish
```

# Credit

Base structure heavily inspired from [`jhillyerd/plugin-git`](https://github.com/jhillyerd/plugin-git). Thanks for the amazing plugin.

# License

[MIT][license] © [Asim Tahir][author]

[author]: https://github.com/Asim-Tahir
[repo]: https://github.com/Asim-Tahir/ptr.fish
[license]: https://opensource.org/licenses/MIT
[powertoys-repo]: https://github.com/microsoft/PowerToys
[powertoys]: https://learn.microsoft.com/en-us/windows/powertoys/
[powertoys-run]: https://learn.microsoft.com/en-us/windows/powertoys/run
[ptr]: https://github.com/8LWXpg/ptr
[omf]: https://github.com/oh-my-fish/oh-my-fish
[fisher]: https://github.com/jorgebucaran/fisher
[license-badge]: https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square

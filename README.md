<h1 align="center">
<strong>mangal-gotty</strong>
</h1>

<h3 align="center">
    The most advanced CLI manga downloader in the entire universe!  Source metafates/mangal

</h3>
<h3 align="center">
    added gotty to it and made it working with docker! Source yudai/gotty
</h3>
<h3 align="center">
    Modifed Mangal.toml to use cbz and the default place for download will be /comics/
    by binding your media place for comics with /comics
</h3>

### Docker

Install using Docker.

    docker pull abbashihab/mangal-gotty

To run

```shell
docker run --rm -ti -e "TERM=xterm-256color" -v /comics:/comics abbasshihab/mangal-gotty
```

<details>
<summary>Keybinds</summary>

| Bind                                                        | Description                          |
| ----------------------------------------------------------- | ------------------------------------ |
| <kbd>?</kbd>                                                | Show help                            |
| <kbd>↑/j</kbd> <kbd>↓/k</kbd> <kbd>→/l</kbd> <kbd>←/h</kbd> | Navigate                             |
| <kbd>g</kbd>                                                | Go to first                          |
| <kbd>G</kbd>                                                | Go to last                           |
| <kbd>/</kbd>                                                | Filter                               |
| <kbd>esc</kbd>                                              | Back                                 |
| <kbd>space</kbd>                                            | Select one                           |
| <kbd>tab</kbd>                                              | Select all                           |
| <kbd>v</kbd>                                                | Select volume                        |
| <kbd>backspace</kbd>                                        | Unselect all                         |
| <kbd>enter</kbd>                                            | Confirm                              |
| <kbd>o</kbd>                                                | Open URL                             |
| <kbd>r</kbd>                                                | Read                                 |
| <kbd>q</kbd>                                                | Quit                                 |
| <kbd>ctrl+c</kbd>                                           | Force quit                           |
| <kbd>a</kbd>                                                | Select Anilist manga (chapters list) |
| <kbd>d</kbd>                                                | Delete single history entry          |

</details>

![TUI](https://user-images.githubusercontent.com/62389790/198830334-fd85c74f-cf3b-4e56-9262-5d62f7f829f4.png)

> If you wonder what those icons mean - `D` stands for "downloaded", `*` shows that chapter is marked to be downloaded.
> You can choose different icons, e.g. nerd font ones - just run mangal with `--icons nerd`.
> Available options are `nerd`, `emoji`, `kaomoji` and `squares`

### Mini

Mini mode tries to mimic [ani-cli](https://github.com/pystardust/ani-cli)

To run: `mangal mini`

![mini](https://user-images.githubusercontent.com/62389790/198830544-f2005ec4-c206-4fe0-bd08-862ffd08320e.png)

### Inline

Inline mode is intended for use with other scripts.

Type `mangal help inline` for more information.

See [Wiki](https://github.com/metafates/mangal/wiki/Inline-mode) for more examples.

### Other

See `mangal help` for more information

## Configuration

Mangal uses [TOML](https://toml.io) format for configuration under the `mangal.toml` filename.
Config path depends on the OS.
To find yours, use `mangal where --config`.
For example, on **Linux** it would be `~/.config/mangal/mangal.toml`.

Use env variable `MANGAL_CONFIG_PATH` to set custom config path.

> See `mangal env` to show all available env variables.

| Command               | Description                                      |
| --------------------- | ------------------------------------------------ |
| `mangal config get`   | Get config value for specific key                |
| `mangal config set`   | Set config value for specific key                |
| `mangal config reset` | Reset config value for specific key              |
| `mangal config info`  | List all config fields with description for each |
| `mangal config write` | Write current config to a file                   |

## Not Possible without

- [metafates](https://github.com/metafates/mangal) - Maker of Mangal cli
- [yudai](https://github.com/yudai/gotty) - For gotty

<p align="center">
If you find this project useful or want to say thank you,
please consider starring it, that would mean a lot to me ⭐
</p>

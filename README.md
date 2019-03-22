# Music Controls BitBar Plugin

A collection of [BitBar][bitbar] plugins to control the audio playback from [cmus][cmus], [iTunes][itunes], [Spotify][spotify] or [pianobar][pianobar] in the OSX Menubar.

![Music control plugins in action in the OSX menubar](music-controls-screenshot.png?=800x450 "Music control plugins in action in the OSX menubar")

## About

The plugins work with [cmus][cmus], [iTunes][itunes], [Spotify][spotify] and [pianobar][pianobar]. Use them to ...

- play / pause the current track,
- skip to the next / previous track,
- like a song,
- and view your music library and radio stations

directly from from the menubar on your Mac.

## Installation

### Using with cmus, iTunes and/or Spotify

Simply place the `music-controls-*.sh` scripts (those whose functionality you want to have) from this repository into your BitBar plugin directory and restart BitBar.

### Using with pianobar

For use with pianobar the eventcmd in pianobar needs to be configured appropriately:

1. Make sure that your config file `~/.config/pianobar/config` contains a line pointing to the event command script.
```event_command = ~/.config/pianobar/eventcommand.sh```

2. Add the [eventcommand.sh](eventcommand.sh) script from this repository to your pianobar config directory `~/.config/pianobar/`.

3. Restart pianobar and BitBar. 

## Notes

### Varying functionality across music players

The plugin functionality will vary based on your audio source. For instance, the [previous track button](music-controls-previous.10s.sh) will not show up when [pianobar][pianobar] is playing as pianobar does not support this command.

Likewise, there is some functionality left to implement (see [Todo section](#todo))

### Merge into official BitBar plugin repository

A [pull request](https://github.com/matryer/bitbar-plugins/pull/1199) with these scripts has been opened. The merge is currently pending.

### ToDo

- Music library overview for iTunes and Spotify
- Like functionality for Spotify
- Artwork in "Now playing" section

Some of those ToDo features can already be accessed. To do so, just set the experimental flag (`EXPERIMENTAL_MODE=1`) - which can be found at the beginning in the scripts - to true. 
So if you like beta versions, give it a try and let me know what you think!

[bitbar]: https://getbitbar.com/
[cmus]: https://cmus.github.io/
[itunes]: https://www.apple.com/itunes/
[spotify]: https://www.spotify.com/
[pianobar]: https://6xq.net/pianobar/

[//]: # ($FrauBSD: framework-keyboard/README.md 2026-10-11 09:52:02 -0700 Devin Teske $)

# framework-keyboard

Meta package for a Framework Laptop session on FreeBSD X11.

The Fn and media keys are ordinary laptop keys. They ship as their
own bhotkeys packages:

- `bhotkeys-brightness` (backlight)
- `bhotkeys-audio` (volume, mute, output select)
- `bhotkeys-media` (play/pause, rewind, fast forward)
- `bhotkeys-airplane` (Super+A and the radio key)
- `bhotkeys-mirror` (Super+P / the display key)
- `bhotkeys-screenshot` (PrintScreen, Alt+PrintScreen)

This package does not ship those plugins, and it does not start
the greeter. `bhotkeys-greeter` does that for XDM, GDM, and SDDM.

Home: [FrauBSD/framework-keyboard](https://github.com/FrauBSD/framework-keyboard)

## Requirements

- `bhotkeys` and `bosd`
- the six packages above, plus `bhotkeys-extend`, `bhotkeys-lid-state`,
  `bhotkeys-lock`, and `bhotkeys-albert` when those chords are wanted
- `framework-autorotate-hotkey` for Super+R on the Framework Laptop 12

## Build / install

```sh
make install    # PREFIX=/usr/local by default
```

Installs `framework-keyboard(8)`.

## Session

`bhotkeys` starts the listener: an XDG autostart entry for
GNOME, KDE, LXDE, LXQt, MATE, X-Cinnamon, and XFCE, and
`share/bhotkeys/i3.conf` for i3.
bvwm's default-config slice starts the same pair.

## Greeter

`bhotkeys-greeter` starts `bhotkeys --greeter` and stops it before
the user session. See `bhotkeys-greeter(1)` for XDM, GDM, and SDDM.

## See also

`framework-keyboard(8)`, `bhotkeys-greeter(1)`, `bhotkeys`,
`bosd(1)`, `hrfkill(4)`

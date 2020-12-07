# awesome-gnome 

Allows you to use awesome-wm with GNOME 3 Session infrastructure.

## Requirements
You should have the following installed:

* awesome
* make (or build-essential)
* GDM (optional, but useful)
* GNOME 3
* GNOME Flashback

## Installation from scratch
To install, run `sudo make install`.

### Disable GNOME Flashback's "desktop" application

GNOME Flashback creates a desktop window for desktop icons. To disable the creation of this window, and to enable the wallpaper functionality in its absense, execute the following `gsettings` commands:

```
    gsettings set org.gnome.gnome-flashback desktop false
    gsettings set org.gnome.gnome-flashback root-background true
```

## Uninstallation

To uninstall, run `sudo make uninstall`.

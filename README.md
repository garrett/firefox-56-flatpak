# firefox-flatpak

**IMPORTANT**: Do not use unless you really know what you're doing. This is an old, unsupported version of Firefox with security issues.

This is a set of scripts and a manifest to build Firefox 56 using Flatpak. It is using GNOME 3.28 as base runtime.

# Usage

Run ```./setup_runtime.sh``` to download and install GNOME 3.20 SDK and GNOME 3.28 SDK for Flatpak.

To build specific build run:
```
./build.sh
```
for example 
```
./build.sh org.mozilla.FirefoxNightly
``` 
will build Firefox from master branch.

After the build is finished you can install the app by:
```
./install.sh
```

To start Firefox use:
```
flatpak run org.mozilla.FirefoxUpstreamBinary
```

For example:
```
flatpak run org.mozilla.FirefoxNightly
```

# Repository

Created repository with some additional instructions can be found there: https://firefox-flatpak.mojefedora.cz/

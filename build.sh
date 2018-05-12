#!/bin/sh
set -e
#rm -rf app repo
rm -rf app

APP_NAME=org.mozilla.FirefoxUpstreamBinary

# Install repo
flatpak install flathub org.gnome.Sdk 3.28

# Build repo
flatpak-builder $GPG_SETTINGS --verbose --force-clean --ccache --require-changes --repo=repo --subject="Build of $APP_NAME" app $APP_NAME/$APP_NAME.json

# Get rid of old files in repo
flatpak build-update-repo $GPG_SETTINGS --prune --prune-depth=2 repo

# Build .flatpak file
flatpak build-bundle $GPG_BUNDLE_SETTINGS repo $APP_NAME.flatpak $APP_NAME

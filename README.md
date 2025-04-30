# Furnace 🛠️

A Fedora System Tool that automates the setup and configuration of a Fedora system. It can export your currently installed packages and install them on another system, or install packages from a predefined list.

## Features

- 🔄 Automated system updates
- 📦 Simple package installation from a single list
- 📋 Export currently installed packages to a file
- 📥 Install packages from an exported list
- 🎮 Flatpak integration for specific applications
- 🔤 Custom font installation
- ⚙️ Automatic service configuration

## Prerequisites

- Fedora Linux
- Internet connection
- sudo privileges

## Usage

### All-in-one installation

```bash
./install.sh
```

This will install everything: packages from packages.conf, flatpaks, and fonts.

### Install specific components

```bash
./install.sh --packages    # Install only packages from packages.conf
./install.sh --flatpaks    # Install only flatpaks
./install.sh --fonts       # Install only fonts
```

You can combine options:

```bash
./install.sh --packages --flatpaks    # Install packages and flatpaks, but not fonts
```

### Export your currently installed packages

```bash
./install.sh --export
```

This will create two files:
- `fedora-packages-rpm.txt`: A simple list of all your currently installed packages
- `packages-exported.conf`: A configuration file in the same format as `packages.conf` that can be used directly with the installation script

### Install packages from an export file

```bash
./install.sh --download [FILENAME]
```

If you don't specify a filename, it will use `fedora-packages-rpm.txt` by default.

### Export and install in one step

```bash
./install.sh --current
```

This will export your currently installed packages and then install them, which is useful for setting up a new system with the same packages.

### See all available options

```bash
./install.sh --help
```
